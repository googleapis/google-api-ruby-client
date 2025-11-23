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
    module DiscoveryengineV1beta
      # Discovery Engine API
      #
      # Discovery Engine API.
      #
      # @example
      #    require 'google/apis/discoveryengine_v1beta'
      #
      #    Discoveryengine = Google::Apis::DiscoveryengineV1beta # Alias the module
      #    service = Discoveryengine::DiscoveryEngineService.new
      #
      # @see https://cloud.google.com/generative-ai-app-builder/docs/
      class DiscoveryEngineService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://discoveryengine.$UNIVERSE_DOMAIN$/"

        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super(DEFAULT_ENDPOINT_TEMPLATE, '',
                client_name: 'google-apis-discoveryengine_v1beta',
                client_version: Google::Apis::DiscoveryengineV1beta::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Provisions the project resource. During the process, related systems will get
        # prepared and initialized. Caller must read the [Terms for data use](https://
        # cloud.google.com/retail/data-use-terms), and optionally specify in request to
        # provide consent to that service terms.
        # @param [String] name
        #   Required. Full resource name of a Project, such as `projects/`
        #   project_id_or_number``.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaProvisionProjectRequest] google_cloud_discoveryengine_v1beta_provision_project_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def provision_project(name, google_cloud_discoveryengine_v1beta_provision_project_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+name}:provision', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaProvisionProjectRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_provision_project_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the AclConfig.
        # @param [String] name
        #   Required. Resource name of AclConfig, such as `projects/*/locations/*/
        #   aclConfig`. If the caller does not have permission to access the AclConfig,
        #   regardless of whether or not it exists, a PERMISSION_DENIED error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAclConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAclConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_acl_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAclConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAclConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the CmekConfig.
        # @param [String] name
        #   Required. Resource name of CmekConfig, such as `projects/*/locations/*/
        #   cmekConfig` or `projects/*/locations/*/cmekConfigs/*`. If the caller does not
        #   have permission to access the CmekConfig, regardless of whether or not it
        #   exists, a PERMISSION_DENIED error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCmekConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCmekConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_single_cmek_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCmekConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCmekConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtains the time series data of organic or dedicated crawl rate for monitoring.
        # When dedicated crawl rate is not set, it will return vertex AI's organic
        # crawl rate time series. Organic crawl means Google automatically crawl the
        # internet at its own convenience. When dedicated crawl rate is set, it will
        # return vertex AI's dedicated crawl rate time series.
        # @param [String] location
        #   Required. The location resource where crawl rate management will be performed.
        #   Format: `projects/`project`/locations/`location``
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaObtainCrawlRateRequest] google_cloud_discoveryengine_v1beta_obtain_crawl_rate_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaObtainCrawlRateResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaObtainCrawlRateResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def obtain_project_location_crawl_rate(location, google_cloud_discoveryengine_v1beta_obtain_crawl_rate_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+location}:obtainCrawlRate', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaObtainCrawlRateRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_obtain_crawl_rate_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaObtainCrawlRateResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaObtainCrawlRateResponse
          command.params['location'] = location unless location.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes the dedicated crawl rate for a craw_rate_scope. If the dedicated crawl
        # rate was set, this will disable vertex AI's crawl bot from using the dedicated
        # crawl rate for crawling. If the dedicated crawl rate was not set, this is a no-
        # op.
        # @param [String] location
        #   Required. The location resource where crawl rate management will be performed.
        #   Format: `projects/`project`/locations/`location``
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRemoveDedicatedCrawlRateRequest] google_cloud_discoveryengine_v1beta_remove_dedicated_crawl_rate_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_project_location_dedicated_crawl_rate(location, google_cloud_discoveryengine_v1beta_remove_dedicated_crawl_rate_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+location}:removeDedicatedCrawlRate', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRemoveDedicatedCrawlRateRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_remove_dedicated_crawl_rate_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['location'] = location unless location.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the dedicated crawl rate for a crawl_rate_scope. If the dedicated crawl
        # rate was not set, this will enable vertex AI's crawl bot to use the new
        # dedicated crawl rate for crawling. If the dedicated crawl rate was set, vertex
        # AI's crawl bot will try to update the rate to the new value. If the new value
        # is too high, the crawl bot may crawl at a lower rate to avoid overloading the
        # user's website.
        # @param [String] location
        #   Required. The location resource where crawl rate management will be performed.
        #   Format: `projects/`project`/locations/`location``
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSetDedicatedCrawlRateRequest] google_cloud_discoveryengine_v1beta_set_dedicated_crawl_rate_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_dedicated_crawl_rate(location, google_cloud_discoveryengine_v1beta_set_dedicated_crawl_rate_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+location}:setDedicatedCrawlRate', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSetDedicatedCrawlRateRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_set_dedicated_crawl_rate_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['location'] = location unless location.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Default ACL configuration for use in a location of a customer's project.
        # Updates will only reflect to new data stores. Existing data stores will still
        # use the old value.
        # @param [String] name
        #   Immutable. The full resource name of the acl configuration. Format: `projects/`
        #   project`/locations/`location`/aclConfig`. This field must be a UTF-8 encoded
        #   string with a length limit of 1024 characters.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAclConfig] google_cloud_discoveryengine_v1beta_acl_config_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAclConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAclConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_acl_config(name, google_cloud_discoveryengine_v1beta_acl_config_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAclConfig::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_acl_config_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAclConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAclConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Provisions a CMEK key for use in a location of a customer's project. This
        # method will also conduct location validation on the provided cmekConfig to
        # make sure the key is valid and can be used in the selected location.
        # @param [String] name
        #   Required. The name of the CmekConfig of the form `projects/`project`/locations/
        #   `location`/cmekConfig` or `projects/`project`/locations/`location`/cmekConfigs/
        #   `cmek_config``.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCmekConfig] google_cloud_discoveryengine_v1beta_cmek_config_object
        # @param [Boolean] set_default
        #   Set the following CmekConfig as the default to be used for child resources if
        #   one is not specified.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_cmek_config(name, google_cloud_discoveryengine_v1beta_cmek_config_object = nil, set_default: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCmekConfig::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_cmek_config_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['setDefault'] = set_default unless set_default.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # De-provisions a CmekConfig.
        # @param [String] name
        #   Required. The resource name of the CmekConfig to delete, such as `projects/`
        #   project`/locations/`location`/cmekConfigs/`cmek_config``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_cmek_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the CmekConfig.
        # @param [String] name
        #   Required. Resource name of CmekConfig, such as `projects/*/locations/*/
        #   cmekConfig` or `projects/*/locations/*/cmekConfigs/*`. If the caller does not
        #   have permission to access the CmekConfig, regardless of whether or not it
        #   exists, a PERMISSION_DENIED error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCmekConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCmekConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_cmek_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCmekConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCmekConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the CmekConfigs with the project.
        # @param [String] parent
        #   Required. The parent location resource name, such as `projects/`project`/
        #   locations/`location``. If the caller does not have permission to list
        #   CmekConfigs under this location, regardless of whether or not a CmekConfig
        #   exists, a PERMISSION_DENIED error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListCmekConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListCmekConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_cmek_configs(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/cmekConfigs', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListCmekConfigsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListCmekConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Provisions a CMEK key for use in a location of a customer's project. This
        # method will also conduct location validation on the provided cmekConfig to
        # make sure the key is valid and can be used in the selected location.
        # @param [String] name
        #   Required. The name of the CmekConfig of the form `projects/`project`/locations/
        #   `location`/cmekConfig` or `projects/`project`/locations/`location`/cmekConfigs/
        #   `cmek_config``.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCmekConfig] google_cloud_discoveryengine_v1beta_cmek_config_object
        # @param [Boolean] set_default
        #   Set the following CmekConfig as the default to be used for child resources if
        #   one is not specified.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_cmek_config(name, google_cloud_discoveryengine_v1beta_cmek_config_object = nil, set_default: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCmekConfig::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_cmek_config_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['setDefault'] = set_default unless set_default.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_connector_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_connector_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Completes the specified user input with keyword suggestions.
        # @param [String] data_store
        #   Required. The parent data store resource name for which the completion is
        #   performed, such as `projects/*/locations/global/collections/default_collection/
        #   dataStores/default_data_store`.
        # @param [Boolean] include_tail_suggestions
        #   Indicates if tail suggestions should be returned if there are no suggestions
        #   that match the full query. Even if set to true, if there are suggestions that
        #   match the full query, those are returned and no tail suggestions are returned.
        # @param [String] query
        #   Required. The typeahead input used to fetch suggestions. Maximum length is 128
        #   characters.
        # @param [String] query_model
        #   Specifies the autocomplete data model. This overrides any model specified in
        #   the Configuration > Autocomplete section of the Cloud console. Currently
        #   supported values: * `document` - Using suggestions generated from user-
        #   imported documents. * `search-history` - Using suggestions generated from the
        #   past history of SearchService.Search API calls. Do not use it when there is no
        #   traffic for Search API. * `user-event` - Using suggestions generated from user-
        #   imported search events. * `document-completable` - Using suggestions taken
        #   directly from user-imported document fields marked as completable. Default
        #   values: * `document` is the default model for regular dataStores. * `search-
        #   history` is the default model for site search dataStores.
        # @param [String] user_pseudo_id
        #   Optional. A unique identifier for tracking visitors. For example, this could
        #   be implemented with an HTTP cookie, which should be able to uniquely identify
        #   a visitor on a single device. This unique identifier should not change if the
        #   visitor logs in or out of the website. This field should NOT have a fixed
        #   value such as `unknown_visitor`. This should be the same identifier as
        #   UserEvent.user_pseudo_id and SearchRequest.user_pseudo_id. The field must be a
        #   UTF-8 encoded string with a length limit of 128 characters. Otherwise, an `
        #   INVALID_ARGUMENT` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCompleteQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCompleteQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def complete_project_location_collection_data_store_query(data_store, include_tail_suggestions: nil, query: nil, query_model: nil, user_pseudo_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+dataStore}:completeQuery', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCompleteQueryResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCompleteQueryResponse
          command.params['dataStore'] = data_store unless data_store.nil?
          command.query['includeTailSuggestions'] = include_tail_suggestions unless include_tail_suggestions.nil?
          command.query['query'] = query unless query.nil?
          command.query['queryModel'] = query_model unless query_model.nil?
          command.query['userPseudoId'] = user_pseudo_id unless user_pseudo_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a DataStore. DataStore is for storing Documents. To serve these
        # documents for Search, or Recommendation use case, an Engine needs to be
        # created separately.
        # @param [String] parent
        #   Required. The parent resource name, such as `projects/`project`/locations/`
        #   location`/collections/`collection``.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDataStore] google_cloud_discoveryengine_v1beta_data_store_object
        # @param [String] cmek_config_name
        #   Resource name of the CmekConfig to use for protecting this DataStore.
        # @param [Boolean] create_advanced_site_search
        #   A boolean flag indicating whether user want to directly create an advanced
        #   data store for site search. If the data store is not configured as site search
        #   (GENERIC vertical and PUBLIC_WEBSITE content_config), this flag will be
        #   ignored.
        # @param [String] data_store_id
        #   Required. The ID to use for the DataStore, which will become the final
        #   component of the DataStore's resource name. This field must conform to [RFC-
        #   1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 63
        #   characters. Otherwise, an INVALID_ARGUMENT error is returned.
        # @param [Boolean] disable_cmek
        #   DataStore without CMEK protections. If a default CmekConfig is set for the
        #   project, setting this field will override the default CmekConfig as well.
        # @param [Boolean] skip_default_schema_creation
        #   A boolean flag indicating whether to skip the default schema creation for the
        #   data store. Only enable this flag if you are certain that the default schema
        #   is incompatible with your use case. If set to true, you must manually create a
        #   schema for the data store before any documents can be ingested. This flag
        #   cannot be specified if `data_store.starting_schema` is specified.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_collection_data_store(parent, google_cloud_discoveryengine_v1beta_data_store_object = nil, cmek_config_name: nil, create_advanced_site_search: nil, data_store_id: nil, disable_cmek: nil, skip_default_schema_creation: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/dataStores', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDataStore::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_data_store_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['cmekConfigName'] = cmek_config_name unless cmek_config_name.nil?
          command.query['createAdvancedSiteSearch'] = create_advanced_site_search unless create_advanced_site_search.nil?
          command.query['dataStoreId'] = data_store_id unless data_store_id.nil?
          command.query['disableCmek'] = disable_cmek unless disable_cmek.nil?
          command.query['skipDefaultSchemaCreation'] = skip_default_schema_creation unless skip_default_schema_creation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a DataStore.
        # @param [String] name
        #   Required. Full resource name of DataStore, such as `projects/`project`/
        #   locations/`location`/collections/`collection_id`/dataStores/`data_store_id``.
        #   If the caller does not have permission to delete the DataStore, regardless of
        #   whether or not it exists, a PERMISSION_DENIED error is returned. If the
        #   DataStore to delete does not exist, a NOT_FOUND error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_collection_data_store(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a DataStore.
        # @param [String] name
        #   Required. Full resource name of DataStore, such as `projects/`project`/
        #   locations/`location`/collections/`collection_id`/dataStores/`data_store_id``.
        #   If the caller does not have permission to access the DataStore, regardless of
        #   whether or not it exists, a PERMISSION_DENIED error is returned. If the
        #   requested DataStore does not exist, a NOT_FOUND error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDataStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDataStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDataStore::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDataStore
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the SiteSearchEngine.
        # @param [String] name
        #   Required. Resource name of SiteSearchEngine, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   siteSearchEngine`. If the caller does not have permission to access the [
        #   SiteSearchEngine], regardless of whether or not it exists, a PERMISSION_DENIED
        #   error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSiteSearchEngine] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSiteSearchEngine]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_site_search_engine(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSiteSearchEngine::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSiteSearchEngine
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the DataStores associated with the project.
        # @param [String] parent
        #   Required. The parent branch resource name, such as `projects/`project`/
        #   locations/`location`/collections/`collection_id``. If the caller does not have
        #   permission to list DataStores under this location, regardless of whether or
        #   not this data store exists, a PERMISSION_DENIED error is returned.
        # @param [String] filter
        #   Filter by solution type . For example: `filter = 'solution_type:
        #   SOLUTION_TYPE_SEARCH'`
        # @param [Fixnum] page_size
        #   Maximum number of DataStores to return. If unspecified, defaults to 10. The
        #   maximum allowed value is 50. Values above 50 will be coerced to 50. If this
        #   field is negative, an INVALID_ARGUMENT is returned.
        # @param [String] page_token
        #   A page token ListDataStoresResponse.next_page_token, received from a previous
        #   DataStoreService.ListDataStores call. Provide this to retrieve the subsequent
        #   page. When paginating, all other parameters provided to DataStoreService.
        #   ListDataStores must match the call that provided the page token. Otherwise, an
        #   INVALID_ARGUMENT error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListDataStoresResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListDataStoresResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_stores(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/dataStores', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListDataStoresResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListDataStoresResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a DataStore
        # @param [String] name
        #   Immutable. Identifier. The full resource name of the data store. Format: `
        #   projects/`project`/locations/`location`/collections/`collection_id`/dataStores/
        #   `data_store_id``. This field must be a UTF-8 encoded string with a length
        #   limit of 1024 characters.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDataStore] google_cloud_discoveryengine_v1beta_data_store_object
        # @param [String] update_mask
        #   Indicates which fields in the provided DataStore to update. If an unsupported
        #   or unknown field is provided, an INVALID_ARGUMENT error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDataStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDataStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_collection_data_store(name, google_cloud_discoveryengine_v1beta_data_store_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDataStore::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_data_store_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDataStore::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDataStore
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Trains a custom model.
        # @param [String] data_store
        #   Required. The resource name of the Data Store, such as `projects/*/locations/
        #   global/collections/default_collection/dataStores/default_data_store`. This
        #   field is used to identify the data store where to train the models.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTrainCustomModelRequest] google_cloud_discoveryengine_v1beta_train_custom_model_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def train_project_location_collection_data_store_custom_model(data_store, google_cloud_discoveryengine_v1beta_train_custom_model_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+dataStore}:trainCustomModel', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTrainCustomModelRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_train_custom_model_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['dataStore'] = data_store unless data_store.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets index freshness metadata for Documents. Supported for website search only.
        # @param [String] parent
        #   Required. The parent branch resource name, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch``.
        # @param [Array<String>, String] matcher_fhir_matcher_fhir_resources
        #   Required. The FHIR resources to match by. Format: projects/`project`/locations/
        #   `location`/datasets/`dataset`/fhirStores/`fhir_store`/fhir/`resource_type`/`
        #   fhir_resource_id`
        # @param [Array<String>, String] matcher_uris_matcher_uris
        #   The exact URIs to match by.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBatchGetDocumentsMetadataResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBatchGetDocumentsMetadataResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_collection_data_store_branch_get_documents_metadata(parent, matcher_fhir_matcher_fhir_resources: nil, matcher_uris_matcher_uris: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/batchGetDocumentsMetadata', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBatchGetDocumentsMetadataResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBatchGetDocumentsMetadataResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['matcher.fhirMatcher.fhirResources'] = matcher_fhir_matcher_fhir_resources unless matcher_fhir_matcher_fhir_resources.nil?
          command.query['matcher.urisMatcher.uris'] = matcher_uris_matcher_uris unless matcher_uris_matcher_uris.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Document.
        # @param [String] parent
        #   Required. The parent resource name, such as `projects/`project`/locations/`
        #   location`/collections/`collection`/dataStores/`data_store`/branches/`branch``.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument] google_cloud_discoveryengine_v1beta_document_object
        # @param [String] document_id
        #   Required. The ID to use for the Document, which becomes the final component of
        #   the Document.name. If the caller does not have permission to create the
        #   Document, regardless of whether or not it exists, a `PERMISSION_DENIED` error
        #   is returned. This field must be unique among all Documents with the same
        #   parent. Otherwise, an `ALREADY_EXISTS` error is returned. This field must
        #   conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a
        #   length limit of 128 characters. Otherwise, an `INVALID_ARGUMENT` error is
        #   returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_collection_data_store_branch_document(parent, google_cloud_discoveryengine_v1beta_document_object = nil, document_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/documents', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_document_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument
          command.params['parent'] = parent unless parent.nil?
          command.query['documentId'] = document_id unless document_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Document.
        # @param [String] name
        #   Required. Full resource name of Document, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch`/documents/`document``. If the caller does not have permission to
        #   delete the Document, regardless of whether or not it exists, a `
        #   PERMISSION_DENIED` error is returned. If the Document to delete does not exist,
        #   a `NOT_FOUND` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_collection_data_store_branch_document(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Document.
        # @param [String] name
        #   Required. Full resource name of Document, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch`/documents/`document``. If the caller does not have permission to
        #   access the Document, regardless of whether or not it exists, a `
        #   PERMISSION_DENIED` error is returned. If the requested Document does not exist,
        #   a `NOT_FOUND` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_branch_document(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Bulk import of multiple Documents. Request processing may be synchronous. Non-
        # existing items are created. Note: It is possible for a subset of the Documents
        # to be successfully updated.
        # @param [String] parent
        #   Required. The parent branch resource name, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch``. Requires create/update permission.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportDocumentsRequest] google_cloud_discoveryengine_v1beta_import_documents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_collection_data_store_branch_document(parent, google_cloud_discoveryengine_v1beta_import_documents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/documents:import', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportDocumentsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_import_documents_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of Documents.
        # @param [String] parent
        #   Required. The parent branch resource name, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch``. Use `default_branch` as the branch ID, to list documents under the
        #   default branch. If the caller does not have permission to list Documents under
        #   this branch, regardless of whether or not this branch exists, a `
        #   PERMISSION_DENIED` error is returned.
        # @param [Fixnum] page_size
        #   Maximum number of Documents to return. If unspecified, defaults to 100. The
        #   maximum allowed value is 1000. Values above 1000 are set to 1000. If this
        #   field is negative, an `INVALID_ARGUMENT` error is returned.
        # @param [String] page_token
        #   A page token ListDocumentsResponse.next_page_token, received from a previous
        #   DocumentService.ListDocuments call. Provide this to retrieve the subsequent
        #   page. When paginating, all other parameters provided to DocumentService.
        #   ListDocuments must match the call that provided the page token. Otherwise, an `
        #   INVALID_ARGUMENT` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListDocumentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListDocumentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_branch_documents(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/documents', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListDocumentsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListDocumentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Document.
        # @param [String] name
        #   Immutable. The full resource name of the document. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch`/documents/`document_id``. This field must be a UTF-8 encoded string
        #   with a length limit of 1024 characters.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument] google_cloud_discoveryengine_v1beta_document_object
        # @param [Boolean] allow_missing
        #   If set to `true` and the Document is not found, a new Document is be created.
        # @param [String] update_mask
        #   Indicates which fields in the provided imported 'document' to update. If not
        #   set, by default updates all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_collection_data_store_branch_document(name, google_cloud_discoveryengine_v1beta_document_object = nil, allow_missing: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_document_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Permanently deletes all selected Documents in a branch. This process is
        # asynchronous. Depending on the number of Documents to be deleted, this
        # operation can take hours to complete. Before the delete operation completes,
        # some Documents might still be returned by DocumentService.GetDocument or
        # DocumentService.ListDocuments. To get a list of the Documents to be deleted,
        # set PurgeDocumentsRequest.force to false.
        # @param [String] parent
        #   Required. The parent resource name, such as `projects/`project`/locations/`
        #   location`/collections/`collection`/dataStores/`data_store`/branches/`branch``.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaPurgeDocumentsRequest] google_cloud_discoveryengine_v1beta_purge_documents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def purge_project_location_collection_data_store_branch_document(parent, google_cloud_discoveryengine_v1beta_purge_documents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/documents:purge', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaPurgeDocumentsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_purge_documents_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts asynchronous cancellation on a long-running operation. The server makes
        # a best effort to cancel the operation, but success is not guaranteed. If the
        # server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
        # Clients can use Operations.GetOperation or other methods to check whether the
        # cancellation succeeded or whether the operation completed despite cancellation.
        # On successful cancellation, the operation is not deleted; instead, it becomes
        # an operation with an Operation.error value with a google.rpc.Status.code of `1`
        # , corresponding to `Code.CANCELLED`.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningCancelOperationRequest] google_longrunning_cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_location_collection_data_store_branch_operation(name, google_longrunning_cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+name}:cancel', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningCancelOperationRequest::Representation
          command.request_object = google_longrunning_cancel_operation_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_branch_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_branch_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Completes the user input with advanced keyword suggestions.
        # @param [String] completion_config
        #   Required. The completion_config of the parent dataStore or engine resource
        #   name for which the completion is performed, such as `projects/*/locations/
        #   global/collections/default_collection/dataStores/*/completionConfig` `projects/
        #   */locations/global/collections/default_collection/engines/*/completionConfig`.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryRequest] google_cloud_discoveryengine_v1beta_advanced_complete_query_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def complete_project_location_collection_data_store_completion_config_query(completion_config, google_cloud_discoveryengine_v1beta_advanced_complete_query_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+completionConfig}:completeQuery', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_advanced_complete_query_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponse
          command.params['completionConfig'] = completion_config unless completion_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports CompletionSuggestions for a DataStore.
        # @param [String] parent
        #   Required. The parent data store resource name for which to import customer
        #   autocomplete suggestions. Follows pattern `projects/*/locations/*/collections/*
        #   /dataStores/*`
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportCompletionSuggestionsRequest] google_cloud_discoveryengine_v1beta_import_completion_suggestions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_collection_data_store_completion_suggestion(parent, google_cloud_discoveryengine_v1beta_import_completion_suggestions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/completionSuggestions:import', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportCompletionSuggestionsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_import_completion_suggestions_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Permanently deletes all CompletionSuggestions for a DataStore.
        # @param [String] parent
        #   Required. The parent data store resource name for which to purge completion
        #   suggestions. Follows pattern projects/*/locations/*/collections/*/dataStores/*.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaPurgeCompletionSuggestionsRequest] google_cloud_discoveryengine_v1beta_purge_completion_suggestions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def purge_project_location_collection_data_store_completion_suggestion(parent, google_cloud_discoveryengine_v1beta_purge_completion_suggestions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/completionSuggestions:purge', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaPurgeCompletionSuggestionsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_purge_completion_suggestions_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Control. By default 1000 controls are allowed for a data store. A
        # request can be submitted to adjust this limit. If the Control to create
        # already exists, an ALREADY_EXISTS error is returned.
        # @param [String] parent
        #   Required. Full resource name of parent data store. Format: `projects/`project`/
        #   locations/`location`/collections/`collection_id`/dataStores/`data_store_id``
        #   or `projects/`project`/locations/`location`/collections/`collection_id`/
        #   engines/`engine_id``.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl] google_cloud_discoveryengine_v1beta_control_object
        # @param [String] control_id
        #   Required. The ID to use for the Control, which will become the final component
        #   of the Control's resource name. This value must be within 1-63 characters.
        #   Valid characters are /a-z-_/.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_collection_data_store_control(parent, google_cloud_discoveryengine_v1beta_control_object = nil, control_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/controls', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_control_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl
          command.params['parent'] = parent unless parent.nil?
          command.query['controlId'] = control_id unless control_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Control. If the Control to delete does not exist, a NOT_FOUND error
        # is returned.
        # @param [String] name
        #   Required. The resource name of the Control to delete. Format: `projects/`
        #   project`/locations/`location`/collections/`collection_id`/dataStores/`
        #   data_store_id`/controls/`control_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_collection_data_store_control(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Control.
        # @param [String] name
        #   Required. The resource name of the Control to get. Format: `projects/`project`/
        #   locations/`location`/collections/`collection_id`/dataStores/`data_store_id`/
        #   controls/`control_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_control(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Controls by their parent DataStore.
        # @param [String] parent
        #   Required. The data store resource name. Format: `projects/`project`/locations/`
        #   location`/collections/`collection_id`/dataStores/`data_store_id`` or `projects/
        #   `project`/locations/`location`/collections/`collection_id`/engines/`engine_id``
        #   .
        # @param [String] filter
        #   Optional. A filter to apply on the list results. Supported features: * List
        #   all the products under the parent branch if filter is unset. Currently this
        #   field is unsupported.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of results to return. If unspecified, defaults to 50.
        #   Max allowed value is 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListControls` call. Provide
        #   this to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListControlsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListControlsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_controls(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/controls', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListControlsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListControlsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Control. Control action type cannot be changed. If the Control to
        # update does not exist, a NOT_FOUND error is returned.
        # @param [String] name
        #   Immutable. Fully qualified name `projects/*/locations/global/dataStore/*/
        #   controls/*`
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl] google_cloud_discoveryengine_v1beta_control_object
        # @param [String] update_mask
        #   Optional. Indicates which fields in the provided Control to update. The
        #   following are NOT supported: * Control.name * Control.solution_type If not set
        #   or empty, all supported fields are updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_collection_data_store_control(name, google_cloud_discoveryengine_v1beta_control_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_control_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Converses a conversation.
        # @param [String] name
        #   Required. The resource name of the Conversation to get. Format: `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`
        #   data_store_id`/conversations/`conversation_id``. Use `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store_id`/
        #   conversations/-` to activate auto session mode, which automatically creates a
        #   new conversation inside a ConverseConversation session.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConverseConversationRequest] google_cloud_discoveryengine_v1beta_converse_conversation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConverseConversationResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConverseConversationResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def converse_project_location_collection_data_store_conversation(name, google_cloud_discoveryengine_v1beta_converse_conversation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+name}:converse', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConverseConversationRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_converse_conversation_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConverseConversationResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConverseConversationResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Conversation. If the Conversation to create already exists, an
        # ALREADY_EXISTS error is returned.
        # @param [String] parent
        #   Required. Full resource name of parent data store. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store_id``
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation] google_cloud_discoveryengine_v1beta_conversation_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_collection_data_store_conversation(parent, google_cloud_discoveryengine_v1beta_conversation_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/conversations', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_conversation_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Conversation. If the Conversation to delete does not exist, a
        # NOT_FOUND error is returned.
        # @param [String] name
        #   Required. The resource name of the Conversation to delete. Format: `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`
        #   data_store_id`/conversations/`conversation_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_collection_data_store_conversation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Conversation.
        # @param [String] name
        #   Required. The resource name of the Conversation to get. Format: `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`
        #   data_store_id`/conversations/`conversation_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_conversation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Conversations by their parent DataStore.
        # @param [String] parent
        #   Required. The data store resource name. Format: `projects/`project`/locations/`
        #   location`/collections/`collection`/dataStores/`data_store_id``
        # @param [String] filter
        #   A filter to apply on the list results. The supported features are:
        #   user_pseudo_id, state. Example: "user_pseudo_id = some_id"
        # @param [String] order_by
        #   A comma-separated list of fields to order by, sorted in ascending order. Use "
        #   desc" after a field name for descending. Supported fields: * `update_time` * `
        #   create_time` * `conversation_name` Example: "update_time desc" "create_time"
        # @param [Fixnum] page_size
        #   Maximum number of results to return. If unspecified, defaults to 50. Max
        #   allowed value is 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListConversations` call. Provide this
        #   to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListConversationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListConversationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_conversations(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/conversations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListConversationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListConversationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Conversation. Conversation action type cannot be changed. If the
        # Conversation to update does not exist, a NOT_FOUND error is returned.
        # @param [String] name
        #   Immutable. Fully qualified name `projects/`project`/locations/global/
        #   collections/`collection`/dataStore/*/conversations/*` or `projects/`project`/
        #   locations/global/collections/`collection`/engines/*/conversations/*`.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation] google_cloud_discoveryengine_v1beta_conversation_object
        # @param [String] update_mask
        #   Indicates which fields in the provided Conversation to update. The following
        #   are NOT supported: * Conversation.name If not set or empty, all supported
        #   fields are updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_collection_data_store_conversation(name, google_cloud_discoveryengine_v1beta_conversation_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_conversation_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of all the custom models.
        # @param [String] data_store
        #   Required. The resource name of the parent Data Store, such as `projects/*/
        #   locations/global/collections/default_collection/dataStores/default_data_store`.
        #   This field is used to identify the data store where to fetch the models from.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListCustomModelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListCustomModelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_custom_models(data_store, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+dataStore}/customModels', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListCustomModelsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListCustomModelsResponse
          command.params['dataStore'] = data_store unless data_store.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_model_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_model_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Schema.
        # @param [String] parent
        #   Required. The parent data store resource name, in the format of `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store``
        #   .
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSchema] google_cloud_discoveryengine_v1beta_schema_object
        # @param [String] schema_id
        #   Required. The ID to use for the Schema, which becomes the final component of
        #   the Schema.name. This field should conform to [RFC-1034](https://tools.ietf.
        #   org/html/rfc1034) standard with a length limit of 63 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_collection_data_store_schema(parent, google_cloud_discoveryengine_v1beta_schema_object = nil, schema_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/schemas', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSchema::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_schema_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['schemaId'] = schema_id unless schema_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Schema.
        # @param [String] name
        #   Required. The full resource name of the schema, in the format of `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   schemas/`schema``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_collection_data_store_schema(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Schema.
        # @param [String] name
        #   Required. The full resource name of the schema, in the format of `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   schemas/`schema``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSchema] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSchema]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_schema(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSchema::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSchema
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of Schemas.
        # @param [String] parent
        #   Required. The parent data store resource name, in the format of `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store``
        #   .
        # @param [Fixnum] page_size
        #   The maximum number of Schemas to return. The service may return fewer than
        #   this value. If unspecified, at most 100 Schemas are returned. The maximum
        #   value is 1000; values above 1000 are set to 1000.
        # @param [String] page_token
        #   A page token, received from a previous SchemaService.ListSchemas call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to SchemaService.ListSchemas must match the call that provided the
        #   page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListSchemasResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListSchemasResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_schemas(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/schemas', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListSchemasResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListSchemasResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Schema.
        # @param [String] name
        #   Immutable. The full resource name of the schema, in the format of `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   schemas/`schema``. This field must be a UTF-8 encoded string with a length
        #   limit of 1024 characters.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSchema] google_cloud_discoveryengine_v1beta_schema_object
        # @param [Boolean] allow_missing
        #   If set to true, and the Schema is not found, a new Schema is created. In this
        #   situation, `update_mask` is ignored.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_collection_data_store_schema(name, google_cloud_discoveryengine_v1beta_schema_object = nil, allow_missing: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSchema::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_schema_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_schema_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_schema_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Answer query method.
        # @param [String] serving_config
        #   Required. The resource name of the Search serving config, such as `projects/*/
        #   locations/global/collections/default_collection/engines/*/servingConfigs/
        #   default_serving_config`, or `projects/*/locations/global/collections/
        #   default_collection/dataStores/*/servingConfigs/default_serving_config`. This
        #   field is used to identify the serving configuration name, set of models used
        #   to make the search.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequest] google_cloud_discoveryengine_v1beta_answer_query_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def answer_project_location_collection_data_store_serving_config(serving_config, google_cloud_discoveryengine_v1beta_answer_query_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+servingConfig}:answer', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_answer_query_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryResponse
          command.params['servingConfig'] = serving_config unless serving_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a ServingConfig. Returns a NotFound error if the ServingConfig does not
        # exist.
        # @param [String] name
        #   Required. The resource name of the ServingConfig to get. Format: `projects/`
        #   project`/locations/`location`/collections/`collection`/engines/`engine`/
        #   servingConfigs/`serving_config_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaServingConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaServingConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_serving_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaServingConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaServingConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all ServingConfigs linked to this dataStore.
        # @param [String] parent
        #   Required. Full resource name of the parent resource. Format: `projects/`
        #   project`/locations/`location`/collections/`collection`/engines/`engine``
        # @param [Fixnum] page_size
        #   Optional. Maximum number of results to return. If unspecified, defaults to 100.
        #   If a value greater than 100 is provided, at most 100 results are returned.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListServingConfigs` call.
        #   Provide this to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListServingConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListServingConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_serving_configs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/servingConfigs', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListServingConfigsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListServingConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a ServingConfig. Returns a NOT_FOUND error if the ServingConfig does
        # not exist.
        # @param [String] name
        #   Immutable. Fully qualified name `projects/`project`/locations/`location`/
        #   collections/`collection_id`/engines/`engine_id`/servingConfigs/`
        #   serving_config_id``
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaServingConfig] google_cloud_discoveryengine_v1beta_serving_config_object
        # @param [String] update_mask
        #   Indicates which fields in the provided ServingConfig to update. The following
        #   are NOT supported: * ServingConfig.name If not set, all supported fields are
        #   updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaServingConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaServingConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_collection_data_store_serving_config(name, google_cloud_discoveryengine_v1beta_serving_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaServingConfig::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_serving_config_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaServingConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaServingConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Makes a recommendation, which requires a contextual user event.
        # @param [String] serving_config
        #   Required. Full resource name of a ServingConfig: `projects/*/locations/global/
        #   collections/*/engines/*/servingConfigs/*`, or `projects/*/locations/global/
        #   collections/*/dataStores/*/servingConfigs/*` One default serving config is
        #   created along with your recommendation engine creation. The engine ID is used
        #   as the ID of the default serving config. For example, for Engine `projects/*/
        #   locations/global/collections/*/engines/my-engine`, you can use `projects/*/
        #   locations/global/collections/*/engines/my-engine/servingConfigs/my-engine` for
        #   your RecommendationService.Recommend requests.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRecommendRequest] google_cloud_discoveryengine_v1beta_recommend_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRecommendResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRecommendResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def recommend_project_location_collection_data_store_serving_config(serving_config, google_cloud_discoveryengine_v1beta_recommend_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+servingConfig}:recommend', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRecommendRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_recommend_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRecommendResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRecommendResponse
          command.params['servingConfig'] = serving_config unless serving_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Performs a search.
        # @param [String] serving_config
        #   Required. The resource name of the Search serving config, such as `projects/*/
        #   locations/global/collections/default_collection/engines/*/servingConfigs/
        #   default_serving_config`, or `projects/*/locations/global/collections/
        #   default_collection/dataStores/default_data_store/servingConfigs/
        #   default_serving_config`. This field is used to identify the serving
        #   configuration name, set of models used to make the search.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequest] google_cloud_discoveryengine_v1beta_search_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_collection_data_store_serving_configs(serving_config, google_cloud_discoveryengine_v1beta_search_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+servingConfig}:search', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_search_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponse
          command.params['servingConfig'] = serving_config unless serving_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Performs a search. Similar to the SearchService.Search method, but a lite
        # version that allows API key for authentication, where OAuth and IAM checks are
        # not required. Only public website search is supported by this method. If data
        # stores and engines not associated with public website search are specified, a `
        # FAILED_PRECONDITION` error is returned. This method can be used for easy
        # onboarding without having to implement an authentication backend. However, it
        # is strongly recommended to use SearchService.Search instead with required
        # OAuth and IAM checks to provide better data security.
        # @param [String] serving_config
        #   Required. The resource name of the Search serving config, such as `projects/*/
        #   locations/global/collections/default_collection/engines/*/servingConfigs/
        #   default_serving_config`, or `projects/*/locations/global/collections/
        #   default_collection/dataStores/default_data_store/servingConfigs/
        #   default_serving_config`. This field is used to identify the serving
        #   configuration name, set of models used to make the search.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequest] google_cloud_discoveryengine_v1beta_search_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_collection_data_store_serving_config_lite(serving_config, google_cloud_discoveryengine_v1beta_search_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+servingConfig}:searchLite', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_search_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponse
          command.params['servingConfig'] = serving_config unless serving_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Answer query method (streaming). It takes one AnswerQueryRequest and returns
        # multiple AnswerQueryResponse messages in a stream.
        # @param [String] serving_config
        #   Required. The resource name of the Search serving config, such as `projects/*/
        #   locations/global/collections/default_collection/engines/*/servingConfigs/
        #   default_serving_config`, or `projects/*/locations/global/collections/
        #   default_collection/dataStores/*/servingConfigs/default_serving_config`. This
        #   field is used to identify the serving configuration name, set of models used
        #   to make the search.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequest] google_cloud_discoveryengine_v1beta_answer_query_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def stream_project_location_collection_data_store_serving_config_answer(serving_config, google_cloud_discoveryengine_v1beta_answer_query_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+servingConfig}:streamAnswer', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_answer_query_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryResponse
          command.params['servingConfig'] = serving_config unless serving_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Session. If the Session to create already exists, an ALREADY_EXISTS
        # error is returned.
        # @param [String] parent
        #   Required. Full resource name of parent data store. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store_id``
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession] google_cloud_discoveryengine_v1beta_session_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_collection_data_store_session(parent, google_cloud_discoveryengine_v1beta_session_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/sessions', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_session_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Session. If the Session to delete does not exist, a NOT_FOUND error
        # is returned.
        # @param [String] name
        #   Required. The resource name of the Session to delete. Format: `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`
        #   data_store_id`/sessions/`session_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_collection_data_store_session(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Session.
        # @param [String] name
        #   Required. The resource name of the Session to get. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store_id`/
        #   sessions/`session_id``
        # @param [Boolean] include_answer_details
        #   Optional. If set to true, the full session including all answer details will
        #   be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_session(name, include_answer_details: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession
          command.params['name'] = name unless name.nil?
          command.query['includeAnswerDetails'] = include_answer_details unless include_answer_details.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Sessions by their parent DataStore.
        # @param [String] parent
        #   Required. The data store resource name. Format: `projects/`project`/locations/`
        #   location`/collections/`collection`/dataStores/`data_store_id``
        # @param [String] filter
        #   A comma-separated list of fields to filter by, in EBNF grammar. The supported
        #   fields are: * `user_pseudo_id` * `state` * `display_name` * `starred` * `
        #   is_pinned` * `labels` * `create_time` * `update_time` Examples: * `
        #   user_pseudo_id = some_id` * `display_name = "some_name"` * `starred = true` * `
        #   is_pinned=true AND (NOT labels:hidden)` * `create_time > "1970-01-01T12:00:00Z"
        #   `
        # @param [String] order_by
        #   A comma-separated list of fields to order by, sorted in ascending order. Use "
        #   desc" after a field name for descending. Supported fields: * `update_time` * `
        #   create_time` * `session_name` * `is_pinned` Example: * `update_time desc` * `
        #   create_time` * `is_pinned desc,update_time desc`: list sessions by is_pinned
        #   first, then by update_time.
        # @param [Fixnum] page_size
        #   Maximum number of results to return. If unspecified, defaults to 50. Max
        #   allowed value is 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListSessions` call. Provide this to
        #   retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListSessionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListSessionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_sessions(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/sessions', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListSessionsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListSessionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Session. Session action type cannot be changed. If the Session to
        # update does not exist, a NOT_FOUND error is returned.
        # @param [String] name
        #   Immutable. Fully qualified name `projects/`project`/locations/global/
        #   collections/`collection`/engines/`engine`/sessions/*`
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession] google_cloud_discoveryengine_v1beta_session_object
        # @param [String] update_mask
        #   Indicates which fields in the provided Session to update. The following are
        #   NOT supported: * Session.name If not set or empty, all supported fields are
        #   updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_collection_data_store_session(name, google_cloud_discoveryengine_v1beta_session_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_session_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Answer.
        # @param [String] name
        #   Required. The resource name of the Answer to get. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/engines/`engine_id`/sessions/`
        #   session_id`/answers/`answer_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_session_answer(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswer::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswer
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Verify target sites' ownership and validity. This API sends all the target
        # sites under site search engine for verification.
        # @param [String] parent
        #   Required. The parent resource shared by all TargetSites being verified. `
        #   projects/`project`/locations/`location`/collections/`collection`/dataStores/`
        #   data_store`/siteSearchEngine`.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBatchVerifyTargetSitesRequest] google_cloud_discoveryengine_v1beta_batch_verify_target_sites_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_collection_data_store_site_search_engine_verify_target_sites(parent, google_cloud_discoveryengine_v1beta_batch_verify_target_sites_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}:batchVerifyTargetSites', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBatchVerifyTargetSitesRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_batch_verify_target_sites_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Downgrade from advanced site search to basic site search.
        # @param [String] site_search_engine
        #   Required. Full resource name of the SiteSearchEngine, such as `projects/`
        #   project`/locations/`location`/dataStores/`data_store_id`/siteSearchEngine`.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDisableAdvancedSiteSearchRequest] google_cloud_discoveryengine_v1beta_disable_advanced_site_search_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def disable_project_location_collection_data_store_site_search_engine_advanced_site_search(site_search_engine, google_cloud_discoveryengine_v1beta_disable_advanced_site_search_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+siteSearchEngine}:disableAdvancedSiteSearch', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDisableAdvancedSiteSearchRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_disable_advanced_site_search_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['siteSearchEngine'] = site_search_engine unless site_search_engine.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Upgrade from basic site search to advanced site search.
        # @param [String] site_search_engine
        #   Required. Full resource name of the SiteSearchEngine, such as `projects/`
        #   project`/locations/`location`/dataStores/`data_store_id`/siteSearchEngine`.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEnableAdvancedSiteSearchRequest] google_cloud_discoveryengine_v1beta_enable_advanced_site_search_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def enable_project_location_collection_data_store_site_search_engine_advanced_site_search(site_search_engine, google_cloud_discoveryengine_v1beta_enable_advanced_site_search_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+siteSearchEngine}:enableAdvancedSiteSearch', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEnableAdvancedSiteSearchRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_enable_advanced_site_search_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['siteSearchEngine'] = site_search_engine unless site_search_engine.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns list of target sites with its domain verification status. This method
        # can only be called under data store with BASIC_SITE_SEARCH state at the moment.
        # @param [String] site_search_engine
        #   Required. The site search engine resource under which we fetch all the domain
        #   verification status. `projects/`project`/locations/`location`/collections/`
        #   collection`/dataStores/`data_store`/siteSearchEngine`.
        # @param [Fixnum] page_size
        #   Requested page size. Server may return fewer items than requested. If
        #   unspecified, server will pick an appropriate default. The maximum value is
        #   1000; values above 1000 will be coerced to 1000. If this field is negative, an
        #   INVALID_ARGUMENT error is returned.
        # @param [String] page_token
        #   A page token, received from a previous `FetchDomainVerificationStatus` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `FetchDomainVerificationStatus` must match the call
        #   that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaFetchDomainVerificationStatusResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaFetchDomainVerificationStatusResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_project_location_collection_data_store_site_search_engine_domain_verification_status(site_search_engine, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+siteSearchEngine}:fetchDomainVerificationStatus', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaFetchDomainVerificationStatusResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaFetchDomainVerificationStatusResponse
          command.params['siteSearchEngine'] = site_search_engine unless site_search_engine.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Request on-demand recrawl for a list of URIs.
        # @param [String] site_search_engine
        #   Required. Full resource name of the SiteSearchEngine, such as `projects/*/
        #   locations/*/collections/*/dataStores/*/siteSearchEngine`.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRecrawlUrisRequest] google_cloud_discoveryengine_v1beta_recrawl_uris_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def recrawl_project_location_collection_data_store_site_search_engine_uris(site_search_engine, google_cloud_discoveryengine_v1beta_recrawl_uris_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+siteSearchEngine}:recrawlUris', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRecrawlUrisRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_recrawl_uris_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['siteSearchEngine'] = site_search_engine unless site_search_engine.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_site_search_engine_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_site_search_engine_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Sitemap.
        # @param [String] parent
        #   Required. Parent resource name of the SiteSearchEngine, such as `projects/*/
        #   locations/*/collections/*/dataStores/*/siteSearchEngine`.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSitemap] google_cloud_discoveryengine_v1beta_sitemap_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_collection_data_store_site_search_engine_sitemap(parent, google_cloud_discoveryengine_v1beta_sitemap_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/sitemaps', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSitemap::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_sitemap_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Sitemap.
        # @param [String] name
        #   Required. Full resource name of Sitemap, such as `projects/`project`/locations/
        #   `location`/collections/`collection`/dataStores/`data_store`/siteSearchEngine/
        #   sitemaps/`sitemap``. If the caller does not have permission to access the
        #   Sitemap, regardless of whether or not it exists, a PERMISSION_DENIED error is
        #   returned. If the requested Sitemap does not exist, a NOT_FOUND error is
        #   returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_collection_data_store_site_search_engine_sitemap(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetch Sitemaps in a DataStore.
        # @param [String] parent
        #   Required. Parent resource name of the SiteSearchEngine, such as `projects/*/
        #   locations/*/collections/*/dataStores/*/siteSearchEngine`.
        # @param [Array<String>, String] matcher_uris_matcher_uris
        #   The Sitemap uris.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaFetchSitemapsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaFetchSitemapsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_project_location_collection_data_store_site_search_engine_sitemap(parent, matcher_uris_matcher_uris: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/sitemaps:fetch', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaFetchSitemapsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaFetchSitemapsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['matcher.urisMatcher.uris'] = matcher_uris_matcher_uris unless matcher_uris_matcher_uris.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates TargetSite in a batch.
        # @param [String] parent
        #   Required. The parent resource shared by all TargetSites being created. `
        #   projects/`project`/locations/`location`/collections/`collection`/dataStores/`
        #   data_store`/siteSearchEngine`. The parent field in the CreateBookRequest
        #   messages must either be empty or match this field.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBatchCreateTargetSitesRequest] google_cloud_discoveryengine_v1beta_batch_create_target_sites_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_collection_data_store_site_search_engine_target_site_create(parent, google_cloud_discoveryengine_v1beta_batch_create_target_sites_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/targetSites:batchCreate', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBatchCreateTargetSitesRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_batch_create_target_sites_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a TargetSite.
        # @param [String] parent
        #   Required. Parent resource name of TargetSite, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   siteSearchEngine`.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTargetSite] google_cloud_discoveryengine_v1beta_target_site_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_collection_data_store_site_search_engine_target_site(parent, google_cloud_discoveryengine_v1beta_target_site_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/targetSites', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTargetSite::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_target_site_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a TargetSite.
        # @param [String] name
        #   Required. Full resource name of TargetSite, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   siteSearchEngine/targetSites/`target_site``. If the caller does not have
        #   permission to access the TargetSite, regardless of whether or not it exists, a
        #   PERMISSION_DENIED error is returned. If the requested TargetSite does not
        #   exist, a NOT_FOUND error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_collection_data_store_site_search_engine_target_site(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a TargetSite.
        # @param [String] name
        #   Required. Full resource name of TargetSite, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   siteSearchEngine/targetSites/`target_site``. If the caller does not have
        #   permission to access the TargetSite, regardless of whether or not it exists, a
        #   PERMISSION_DENIED error is returned. If the requested TargetSite does not
        #   exist, a NOT_FOUND error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTargetSite] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTargetSite]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_site_search_engine_target_site(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTargetSite::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTargetSite
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of TargetSites.
        # @param [String] parent
        #   Required. The parent site search engine resource name, such as `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   siteSearchEngine`. If the caller does not have permission to list TargetSites
        #   under this site search engine, regardless of whether or not this branch exists,
        #   a PERMISSION_DENIED error is returned.
        # @param [Fixnum] page_size
        #   Requested page size. Server may return fewer items than requested. If
        #   unspecified, server will pick an appropriate default. The maximum value is
        #   1000; values above 1000 will be coerced to 1000. If this field is negative, an
        #   INVALID_ARGUMENT error is returned.
        # @param [String] page_token
        #   A page token, received from a previous `ListTargetSites` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListTargetSites` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListTargetSitesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListTargetSitesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_site_search_engine_target_sites(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/targetSites', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListTargetSitesResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListTargetSitesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a TargetSite.
        # @param [String] name
        #   Output only. The fully qualified resource name of the target site. `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   siteSearchEngine/targetSites/`target_site`` The `target_site_id` is system-
        #   generated.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTargetSite] google_cloud_discoveryengine_v1beta_target_site_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_collection_data_store_site_search_engine_target_site(name, google_cloud_discoveryengine_v1beta_target_site_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTargetSite::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_target_site_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_site_search_engine_target_site_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_site_search_engine_target_site_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports all SuggestionDenyListEntry for a DataStore.
        # @param [String] parent
        #   Required. The parent data store resource name for which to import denylist
        #   entries. Follows pattern projects/*/locations/*/collections/*/dataStores/*.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportSuggestionDenyListEntriesRequest] google_cloud_discoveryengine_v1beta_import_suggestion_deny_list_entries_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_collection_data_store_suggestion_deny_list_entry(parent, google_cloud_discoveryengine_v1beta_import_suggestion_deny_list_entries_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/suggestionDenyListEntries:import', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportSuggestionDenyListEntriesRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_import_suggestion_deny_list_entries_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Permanently deletes all SuggestionDenyListEntry for a DataStore.
        # @param [String] parent
        #   Required. The parent data store resource name for which to import denylist
        #   entries. Follows pattern projects/*/locations/*/collections/*/dataStores/*.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaPurgeSuggestionDenyListEntriesRequest] google_cloud_discoveryengine_v1beta_purge_suggestion_deny_list_entries_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def purge_project_location_collection_data_store_suggestion_deny_list_entry(parent, google_cloud_discoveryengine_v1beta_purge_suggestion_deny_list_entries_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/suggestionDenyListEntries:purge', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaPurgeSuggestionDenyListEntriesRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_purge_suggestion_deny_list_entries_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Writes a single user event from the browser. This uses a GET request to due to
        # browser restriction of POST-ing to a third-party domain. This method is used
        # only by the Discovery Engine API JavaScript pixel and Google Tag Manager.
        # Users should not call this method directly.
        # @param [String] parent
        #   Required. The parent resource name. If the collect user event action is
        #   applied in DataStore level, the format is: `projects/`project`/locations/`
        #   location`/collections/`collection`/dataStores/`data_store``. If the collect
        #   user event action is applied in Location level, for example, the event with
        #   Document across multiple DataStore, the format is: `projects/`project`/
        #   locations/`location``.
        # @param [Fixnum] ets
        #   The event timestamp in milliseconds. This prevents browser caching of
        #   otherwise identical get requests. The name is abbreviated to reduce the
        #   payload bytes.
        # @param [String] uri
        #   The URL including cgi-parameters but excluding the hash fragment with a length
        #   limit of 5,000 characters. This is often more useful than the referer URL,
        #   because many browsers only send the domain for third-party requests.
        # @param [String] user_event
        #   Required. URL encoded UserEvent proto with a length limit of 2,000,000
        #   characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleApiHttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleApiHttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def collect_project_location_collection_data_store_user_event(parent, ets: nil, uri: nil, user_event: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/userEvents:collect', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleApiHttpBody::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleApiHttpBody
          command.params['parent'] = parent unless parent.nil?
          command.query['ets'] = ets unless ets.nil?
          command.query['uri'] = uri unless uri.nil?
          command.query['userEvent'] = user_event unless user_event.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Bulk import of user events. Request processing might be synchronous. Events
        # that already exist are skipped. Use this method for backfilling historical
        # user events. Operation.response is of type ImportResponse. Note that it is
        # possible for a subset of the items to be successfully inserted. Operation.
        # metadata is of type ImportMetadata.
        # @param [String] parent
        #   Required. Parent DataStore resource name, of the form `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store``
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportUserEventsRequest] google_cloud_discoveryengine_v1beta_import_user_events_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_collection_data_store_user_event(parent, google_cloud_discoveryengine_v1beta_import_user_events_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/userEvents:import', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportUserEventsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_import_user_events_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes permanently all user events specified by the filter provided.
        # Depending on the number of events specified by the filter, this operation
        # could take hours or days to complete. To test a filter, use the list command
        # first.
        # @param [String] parent
        #   Required. The resource name of the catalog under which the events are created.
        #   The format is `projects/`project`/locations/global/collections/`collection`/
        #   dataStores/`dataStore``.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaPurgeUserEventsRequest] google_cloud_discoveryengine_v1beta_purge_user_events_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def purge_project_location_collection_data_store_user_event(parent, google_cloud_discoveryengine_v1beta_purge_user_events_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/userEvents:purge', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaPurgeUserEventsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_purge_user_events_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Writes a single user event.
        # @param [String] parent
        #   Required. The parent resource name. If the write user event action is applied
        #   in DataStore level, the format is: `projects/`project`/locations/`location`/
        #   collections/`collection`/dataStores/`data_store``. If the write user event
        #   action is applied in Location level, for example, the event with Document
        #   across multiple DataStore, the format is: `projects/`project`/locations/`
        #   location``.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserEvent] google_cloud_discoveryengine_v1beta_user_event_object
        # @param [Boolean] write_async
        #   If set to true, the user event is written asynchronously after validation, and
        #   the API responds without waiting for the write.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserEvent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserEvent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def write_project_location_collection_data_store_user_event(parent, google_cloud_discoveryengine_v1beta_user_event_object = nil, write_async: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/userEvents:write', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserEvent::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_user_event_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserEvent::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserEvent
          command.params['parent'] = parent unless parent.nil?
          command.query['writeAsync'] = write_async unless write_async.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Engine.
        # @param [String] parent
        #   Required. The parent resource name, such as `projects/`project`/locations/`
        #   location`/collections/`collection``.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEngine] google_cloud_discoveryengine_v1beta_engine_object
        # @param [String] engine_id
        #   Required. The ID to use for the Engine, which will become the final component
        #   of the Engine's resource name. This field must conform to [RFC-1034](https://
        #   tools.ietf.org/html/rfc1034) standard with a length limit of 63 characters.
        #   Otherwise, an INVALID_ARGUMENT error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_collection_engine(parent, google_cloud_discoveryengine_v1beta_engine_object = nil, engine_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/engines', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEngine::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_engine_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['engineId'] = engine_id unless engine_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Engine.
        # @param [String] name
        #   Required. Full resource name of Engine, such as `projects/`project`/locations/`
        #   location`/collections/`collection_id`/engines/`engine_id``. If the caller does
        #   not have permission to delete the Engine, regardless of whether or not it
        #   exists, a PERMISSION_DENIED error is returned. If the Engine to delete does
        #   not exist, a NOT_FOUND error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_collection_engine(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Engine.
        # @param [String] name
        #   Required. Full resource name of Engine, such as `projects/`project`/locations/`
        #   location`/collections/`collection_id`/engines/`engine_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEngine] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEngine]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_engine(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEngine::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEngine
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the Engines associated with the project.
        # @param [String] parent
        #   Required. The parent resource name, such as `projects/`project`/locations/`
        #   location`/collections/`collection_id``.
        # @param [String] filter
        #   Optional. Filter by solution type. For example: solution_type=
        #   SOLUTION_TYPE_SEARCH
        # @param [Fixnum] page_size
        #   Optional. Not supported.
        # @param [String] page_token
        #   Optional. Not supported.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListEnginesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListEnginesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_engines(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/engines', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListEnginesResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListEnginesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an Engine
        # @param [String] name
        #   Immutable. Identifier. The fully qualified resource name of the engine. This
        #   field must be a UTF-8 encoded string with a length limit of 1024 characters.
        #   Format: `projects/`project`/locations/`location`/collections/`collection`/
        #   engines/`engine`` engine should be 1-63 characters, and valid characters are /
        #   a-z0-9*/. Otherwise, an INVALID_ARGUMENT error is returned.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEngine] google_cloud_discoveryengine_v1beta_engine_object
        # @param [String] update_mask
        #   Indicates which fields in the provided Engine to update. If an unsupported or
        #   unknown field is provided, an INVALID_ARGUMENT error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEngine] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEngine]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_collection_engine(name, google_cloud_discoveryengine_v1beta_engine_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEngine::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_engine_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEngine::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEngine
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Pauses the training of an existing engine. Only applicable if SolutionType is
        # SOLUTION_TYPE_RECOMMENDATION.
        # @param [String] name
        #   Required. The name of the engine to pause. Format: `projects/`project`/
        #   locations/`location`/collections/`collection_id`/engines/`engine_id``
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaPauseEngineRequest] google_cloud_discoveryengine_v1beta_pause_engine_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEngine] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEngine]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def pause_project_location_collection_engine(name, google_cloud_discoveryengine_v1beta_pause_engine_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+name}:pause', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaPauseEngineRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_pause_engine_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEngine::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEngine
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Resumes the training of an existing engine. Only applicable if SolutionType is
        # SOLUTION_TYPE_RECOMMENDATION.
        # @param [String] name
        #   Required. The name of the engine to resume. Format: `projects/`project`/
        #   locations/`location`/collections/`collection_id`/engines/`engine_id``
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaResumeEngineRequest] google_cloud_discoveryengine_v1beta_resume_engine_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEngine] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEngine]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def resume_project_location_collection_engine(name, google_cloud_discoveryengine_v1beta_resume_engine_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+name}:resume', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaResumeEngineRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_resume_engine_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEngine::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEngine
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Tunes an existing engine. Only applicable if SolutionType is
        # SOLUTION_TYPE_RECOMMENDATION.
        # @param [String] name
        #   Required. The resource name of the engine to tune. Format: `projects/`project`/
        #   locations/`location`/collections/`collection_id`/engines/`engine_id``
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTuneEngineRequest] google_cloud_discoveryengine_v1beta_tune_engine_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def tune_project_location_collection_engine(name, google_cloud_discoveryengine_v1beta_tune_engine_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+name}:tune', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTuneEngineRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_tune_engine_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an Assistant.
        # @param [String] parent
        #   Required. The parent resource name. Format: `projects/`project`/locations/`
        #   location`/collections/`collection`/engines/`engine``
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAssistant] google_cloud_discoveryengine_v1beta_assistant_object
        # @param [String] assistant_id
        #   Required. The ID to use for the Assistant, which will become the final
        #   component of the Assistant's resource name. This field must conform to [RFC-
        #   1034](https://tools.ietf.org/html/rfc1034) with a length limit of 63
        #   characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAssistant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAssistant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_collection_engine_assistant(parent, google_cloud_discoveryengine_v1beta_assistant_object = nil, assistant_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/assistants', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAssistant::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_assistant_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAssistant::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAssistant
          command.params['parent'] = parent unless parent.nil?
          command.query['assistantId'] = assistant_id unless assistant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an Assistant.
        # @param [String] name
        #   Required. Resource name of Assistant. Format: `projects/`project`/locations/`
        #   location`/collections/`collection`/engines/`engine`/assistants/`assistant`` If
        #   the caller does not have permission to delete the Assistant, regardless of
        #   whether or not it exists, a PERMISSION_DENIED error is returned. If the
        #   Assistant to delete does not exist, a NOT_FOUND error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_collection_engine_assistant(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an Assistant.
        # @param [String] name
        #   Required. Resource name of Assistant. Format: `projects/`project`/locations/`
        #   location`/collections/`collection`/engines/`engine`/assistants/`assistant``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAssistant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAssistant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_engine_assistant(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAssistant::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAssistant
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Assistants under an Engine.
        # @param [String] parent
        #   Required. The parent resource name. Format: `projects/`project`/locations/`
        #   location`/collections/`collection`/engines/`engine``
        # @param [Fixnum] page_size
        #   Maximum number of Assistants to return. If unspecified, defaults to 100. The
        #   maximum allowed value is 1000; anything above that will be coerced down to
        #   1000.
        # @param [String] page_token
        #   A page token ListAssistantsResponse.next_page_token, received from a previous
        #   AssistantService.ListAssistants call. Provide this to retrieve the subsequent
        #   page. When paginating, all other parameters provided to ListAssistants must
        #   match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListAssistantsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListAssistantsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_engine_assistants(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/assistants', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListAssistantsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListAssistantsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an Assistant
        # @param [String] name
        #   Immutable. Resource name of the assistant. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/engines/`engine`/assistants/`
        #   assistant`` It must be a UTF-8 encoded string with a length limit of 1024
        #   characters.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAssistant] google_cloud_discoveryengine_v1beta_assistant_object
        # @param [String] update_mask
        #   The list of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAssistant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAssistant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_collection_engine_assistant(name, google_cloud_discoveryengine_v1beta_assistant_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAssistant::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_assistant_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAssistant::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAssistant
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Assists the user with a query in a streaming fashion.
        # @param [String] name
        #   Required. The resource name of the Assistant. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/engines/`engine`/assistants/`
        #   assistant``
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaStreamAssistRequest] google_cloud_discoveryengine_v1beta_stream_assist_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaStreamAssistResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaStreamAssistResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def stream_project_location_collection_engine_assistant_assist(name, google_cloud_discoveryengine_v1beta_stream_assist_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+name}:streamAssist', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaStreamAssistRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_stream_assist_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaStreamAssistResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaStreamAssistResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_engine_assistant_agent_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Completes the user input with advanced keyword suggestions.
        # @param [String] completion_config
        #   Required. The completion_config of the parent dataStore or engine resource
        #   name for which the completion is performed, such as `projects/*/locations/
        #   global/collections/default_collection/dataStores/*/completionConfig` `projects/
        #   */locations/global/collections/default_collection/engines/*/completionConfig`.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryRequest] google_cloud_discoveryengine_v1beta_advanced_complete_query_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def complete_project_location_collection_engine_completion_config_query(completion_config, google_cloud_discoveryengine_v1beta_advanced_complete_query_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+completionConfig}:completeQuery', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_advanced_complete_query_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponse
          command.params['completionConfig'] = completion_config unless completion_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes the search history suggestion in an engine for a user. This will
        # remove the suggestion from being returned in the AdvancedCompleteQueryResponse.
        # recent_search_suggestions for this user. If the user searches the same
        # suggestion again, the new history will override and suggest this suggestion
        # again.
        # @param [String] completion_config
        #   Required. The completion_config of the parent engine resource name for which
        #   the search history suggestion is to be removed, such as `projects/*/locations/
        #   global/collections/default_collection/engines/*/completionConfig`.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRemoveSuggestionRequest] google_cloud_discoveryengine_v1beta_remove_suggestion_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRemoveSuggestionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRemoveSuggestionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_project_location_collection_engine_completion_config_suggestion(completion_config, google_cloud_discoveryengine_v1beta_remove_suggestion_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+completionConfig}:removeSuggestion', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRemoveSuggestionRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_remove_suggestion_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRemoveSuggestionResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRemoveSuggestionResponse
          command.params['completionConfig'] = completion_config unless completion_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Control. By default 1000 controls are allowed for a data store. A
        # request can be submitted to adjust this limit. If the Control to create
        # already exists, an ALREADY_EXISTS error is returned.
        # @param [String] parent
        #   Required. Full resource name of parent data store. Format: `projects/`project`/
        #   locations/`location`/collections/`collection_id`/dataStores/`data_store_id``
        #   or `projects/`project`/locations/`location`/collections/`collection_id`/
        #   engines/`engine_id``.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl] google_cloud_discoveryengine_v1beta_control_object
        # @param [String] control_id
        #   Required. The ID to use for the Control, which will become the final component
        #   of the Control's resource name. This value must be within 1-63 characters.
        #   Valid characters are /a-z-_/.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_collection_engine_control(parent, google_cloud_discoveryengine_v1beta_control_object = nil, control_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/controls', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_control_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl
          command.params['parent'] = parent unless parent.nil?
          command.query['controlId'] = control_id unless control_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Control. If the Control to delete does not exist, a NOT_FOUND error
        # is returned.
        # @param [String] name
        #   Required. The resource name of the Control to delete. Format: `projects/`
        #   project`/locations/`location`/collections/`collection_id`/dataStores/`
        #   data_store_id`/controls/`control_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_collection_engine_control(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Control.
        # @param [String] name
        #   Required. The resource name of the Control to get. Format: `projects/`project`/
        #   locations/`location`/collections/`collection_id`/dataStores/`data_store_id`/
        #   controls/`control_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_engine_control(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Controls by their parent DataStore.
        # @param [String] parent
        #   Required. The data store resource name. Format: `projects/`project`/locations/`
        #   location`/collections/`collection_id`/dataStores/`data_store_id`` or `projects/
        #   `project`/locations/`location`/collections/`collection_id`/engines/`engine_id``
        #   .
        # @param [String] filter
        #   Optional. A filter to apply on the list results. Supported features: * List
        #   all the products under the parent branch if filter is unset. Currently this
        #   field is unsupported.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of results to return. If unspecified, defaults to 50.
        #   Max allowed value is 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListControls` call. Provide
        #   this to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListControlsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListControlsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_engine_controls(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/controls', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListControlsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListControlsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Control. Control action type cannot be changed. If the Control to
        # update does not exist, a NOT_FOUND error is returned.
        # @param [String] name
        #   Immutable. Fully qualified name `projects/*/locations/global/dataStore/*/
        #   controls/*`
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl] google_cloud_discoveryengine_v1beta_control_object
        # @param [String] update_mask
        #   Optional. Indicates which fields in the provided Control to update. The
        #   following are NOT supported: * Control.name * Control.solution_type If not set
        #   or empty, all supported fields are updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_collection_engine_control(name, google_cloud_discoveryengine_v1beta_control_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_control_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Converses a conversation.
        # @param [String] name
        #   Required. The resource name of the Conversation to get. Format: `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`
        #   data_store_id`/conversations/`conversation_id``. Use `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store_id`/
        #   conversations/-` to activate auto session mode, which automatically creates a
        #   new conversation inside a ConverseConversation session.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConverseConversationRequest] google_cloud_discoveryengine_v1beta_converse_conversation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConverseConversationResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConverseConversationResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def converse_project_location_collection_engine_conversation(name, google_cloud_discoveryengine_v1beta_converse_conversation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+name}:converse', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConverseConversationRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_converse_conversation_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConverseConversationResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConverseConversationResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Conversation. If the Conversation to create already exists, an
        # ALREADY_EXISTS error is returned.
        # @param [String] parent
        #   Required. Full resource name of parent data store. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store_id``
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation] google_cloud_discoveryengine_v1beta_conversation_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_collection_engine_conversation(parent, google_cloud_discoveryengine_v1beta_conversation_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/conversations', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_conversation_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Conversation. If the Conversation to delete does not exist, a
        # NOT_FOUND error is returned.
        # @param [String] name
        #   Required. The resource name of the Conversation to delete. Format: `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`
        #   data_store_id`/conversations/`conversation_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_collection_engine_conversation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Conversation.
        # @param [String] name
        #   Required. The resource name of the Conversation to get. Format: `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`
        #   data_store_id`/conversations/`conversation_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_engine_conversation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Conversations by their parent DataStore.
        # @param [String] parent
        #   Required. The data store resource name. Format: `projects/`project`/locations/`
        #   location`/collections/`collection`/dataStores/`data_store_id``
        # @param [String] filter
        #   A filter to apply on the list results. The supported features are:
        #   user_pseudo_id, state. Example: "user_pseudo_id = some_id"
        # @param [String] order_by
        #   A comma-separated list of fields to order by, sorted in ascending order. Use "
        #   desc" after a field name for descending. Supported fields: * `update_time` * `
        #   create_time` * `conversation_name` Example: "update_time desc" "create_time"
        # @param [Fixnum] page_size
        #   Maximum number of results to return. If unspecified, defaults to 50. Max
        #   allowed value is 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListConversations` call. Provide this
        #   to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListConversationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListConversationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_engine_conversations(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/conversations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListConversationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListConversationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Conversation. Conversation action type cannot be changed. If the
        # Conversation to update does not exist, a NOT_FOUND error is returned.
        # @param [String] name
        #   Immutable. Fully qualified name `projects/`project`/locations/global/
        #   collections/`collection`/dataStore/*/conversations/*` or `projects/`project`/
        #   locations/global/collections/`collection`/engines/*/conversations/*`.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation] google_cloud_discoveryengine_v1beta_conversation_object
        # @param [String] update_mask
        #   Indicates which fields in the provided Conversation to update. The following
        #   are NOT supported: * Conversation.name If not set or empty, all supported
        #   fields are updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_collection_engine_conversation(name, google_cloud_discoveryengine_v1beta_conversation_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_conversation_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_engine_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_engine_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Answer query method.
        # @param [String] serving_config
        #   Required. The resource name of the Search serving config, such as `projects/*/
        #   locations/global/collections/default_collection/engines/*/servingConfigs/
        #   default_serving_config`, or `projects/*/locations/global/collections/
        #   default_collection/dataStores/*/servingConfigs/default_serving_config`. This
        #   field is used to identify the serving configuration name, set of models used
        #   to make the search.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequest] google_cloud_discoveryengine_v1beta_answer_query_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def answer_project_location_collection_engine_serving_config(serving_config, google_cloud_discoveryengine_v1beta_answer_query_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+servingConfig}:answer', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_answer_query_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryResponse
          command.params['servingConfig'] = serving_config unless serving_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a ServingConfig. Returns a NotFound error if the ServingConfig does not
        # exist.
        # @param [String] name
        #   Required. The resource name of the ServingConfig to get. Format: `projects/`
        #   project`/locations/`location`/collections/`collection`/engines/`engine`/
        #   servingConfigs/`serving_config_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaServingConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaServingConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_engine_serving_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaServingConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaServingConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all ServingConfigs linked to this dataStore.
        # @param [String] parent
        #   Required. Full resource name of the parent resource. Format: `projects/`
        #   project`/locations/`location`/collections/`collection`/engines/`engine``
        # @param [Fixnum] page_size
        #   Optional. Maximum number of results to return. If unspecified, defaults to 100.
        #   If a value greater than 100 is provided, at most 100 results are returned.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListServingConfigs` call.
        #   Provide this to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListServingConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListServingConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_engine_serving_configs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/servingConfigs', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListServingConfigsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListServingConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a ServingConfig. Returns a NOT_FOUND error if the ServingConfig does
        # not exist.
        # @param [String] name
        #   Immutable. Fully qualified name `projects/`project`/locations/`location`/
        #   collections/`collection_id`/engines/`engine_id`/servingConfigs/`
        #   serving_config_id``
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaServingConfig] google_cloud_discoveryengine_v1beta_serving_config_object
        # @param [String] update_mask
        #   Indicates which fields in the provided ServingConfig to update. The following
        #   are NOT supported: * ServingConfig.name If not set, all supported fields are
        #   updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaServingConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaServingConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_collection_engine_serving_config(name, google_cloud_discoveryengine_v1beta_serving_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaServingConfig::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_serving_config_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaServingConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaServingConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Makes a recommendation, which requires a contextual user event.
        # @param [String] serving_config
        #   Required. Full resource name of a ServingConfig: `projects/*/locations/global/
        #   collections/*/engines/*/servingConfigs/*`, or `projects/*/locations/global/
        #   collections/*/dataStores/*/servingConfigs/*` One default serving config is
        #   created along with your recommendation engine creation. The engine ID is used
        #   as the ID of the default serving config. For example, for Engine `projects/*/
        #   locations/global/collections/*/engines/my-engine`, you can use `projects/*/
        #   locations/global/collections/*/engines/my-engine/servingConfigs/my-engine` for
        #   your RecommendationService.Recommend requests.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRecommendRequest] google_cloud_discoveryengine_v1beta_recommend_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRecommendResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRecommendResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def recommend_project_location_collection_engine_serving_config(serving_config, google_cloud_discoveryengine_v1beta_recommend_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+servingConfig}:recommend', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRecommendRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_recommend_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRecommendResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRecommendResponse
          command.params['servingConfig'] = serving_config unless serving_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Performs a search.
        # @param [String] serving_config
        #   Required. The resource name of the Search serving config, such as `projects/*/
        #   locations/global/collections/default_collection/engines/*/servingConfigs/
        #   default_serving_config`, or `projects/*/locations/global/collections/
        #   default_collection/dataStores/default_data_store/servingConfigs/
        #   default_serving_config`. This field is used to identify the serving
        #   configuration name, set of models used to make the search.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequest] google_cloud_discoveryengine_v1beta_search_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_collection_engine_serving_configs(serving_config, google_cloud_discoveryengine_v1beta_search_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+servingConfig}:search', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_search_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponse
          command.params['servingConfig'] = serving_config unless serving_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Performs a search. Similar to the SearchService.Search method, but a lite
        # version that allows API key for authentication, where OAuth and IAM checks are
        # not required. Only public website search is supported by this method. If data
        # stores and engines not associated with public website search are specified, a `
        # FAILED_PRECONDITION` error is returned. This method can be used for easy
        # onboarding without having to implement an authentication backend. However, it
        # is strongly recommended to use SearchService.Search instead with required
        # OAuth and IAM checks to provide better data security.
        # @param [String] serving_config
        #   Required. The resource name of the Search serving config, such as `projects/*/
        #   locations/global/collections/default_collection/engines/*/servingConfigs/
        #   default_serving_config`, or `projects/*/locations/global/collections/
        #   default_collection/dataStores/default_data_store/servingConfigs/
        #   default_serving_config`. This field is used to identify the serving
        #   configuration name, set of models used to make the search.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequest] google_cloud_discoveryengine_v1beta_search_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_collection_engine_serving_config_lite(serving_config, google_cloud_discoveryengine_v1beta_search_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+servingConfig}:searchLite', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_search_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponse
          command.params['servingConfig'] = serving_config unless serving_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Answer query method (streaming). It takes one AnswerQueryRequest and returns
        # multiple AnswerQueryResponse messages in a stream.
        # @param [String] serving_config
        #   Required. The resource name of the Search serving config, such as `projects/*/
        #   locations/global/collections/default_collection/engines/*/servingConfigs/
        #   default_serving_config`, or `projects/*/locations/global/collections/
        #   default_collection/dataStores/*/servingConfigs/default_serving_config`. This
        #   field is used to identify the serving configuration name, set of models used
        #   to make the search.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequest] google_cloud_discoveryengine_v1beta_answer_query_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def stream_project_location_collection_engine_serving_config_answer(serving_config, google_cloud_discoveryengine_v1beta_answer_query_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+servingConfig}:streamAnswer', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_answer_query_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryResponse
          command.params['servingConfig'] = serving_config unless serving_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Session. If the Session to create already exists, an ALREADY_EXISTS
        # error is returned.
        # @param [String] parent
        #   Required. Full resource name of parent data store. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store_id``
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession] google_cloud_discoveryengine_v1beta_session_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_collection_engine_session(parent, google_cloud_discoveryengine_v1beta_session_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/sessions', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_session_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Session. If the Session to delete does not exist, a NOT_FOUND error
        # is returned.
        # @param [String] name
        #   Required. The resource name of the Session to delete. Format: `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`
        #   data_store_id`/sessions/`session_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_collection_engine_session(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Session.
        # @param [String] name
        #   Required. The resource name of the Session to get. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store_id`/
        #   sessions/`session_id``
        # @param [Boolean] include_answer_details
        #   Optional. If set to true, the full session including all answer details will
        #   be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_engine_session(name, include_answer_details: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession
          command.params['name'] = name unless name.nil?
          command.query['includeAnswerDetails'] = include_answer_details unless include_answer_details.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Sessions by their parent DataStore.
        # @param [String] parent
        #   Required. The data store resource name. Format: `projects/`project`/locations/`
        #   location`/collections/`collection`/dataStores/`data_store_id``
        # @param [String] filter
        #   A comma-separated list of fields to filter by, in EBNF grammar. The supported
        #   fields are: * `user_pseudo_id` * `state` * `display_name` * `starred` * `
        #   is_pinned` * `labels` * `create_time` * `update_time` Examples: * `
        #   user_pseudo_id = some_id` * `display_name = "some_name"` * `starred = true` * `
        #   is_pinned=true AND (NOT labels:hidden)` * `create_time > "1970-01-01T12:00:00Z"
        #   `
        # @param [String] order_by
        #   A comma-separated list of fields to order by, sorted in ascending order. Use "
        #   desc" after a field name for descending. Supported fields: * `update_time` * `
        #   create_time` * `session_name` * `is_pinned` Example: * `update_time desc` * `
        #   create_time` * `is_pinned desc,update_time desc`: list sessions by is_pinned
        #   first, then by update_time.
        # @param [Fixnum] page_size
        #   Maximum number of results to return. If unspecified, defaults to 50. Max
        #   allowed value is 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListSessions` call. Provide this to
        #   retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListSessionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListSessionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_engine_sessions(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/sessions', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListSessionsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListSessionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Session. Session action type cannot be changed. If the Session to
        # update does not exist, a NOT_FOUND error is returned.
        # @param [String] name
        #   Immutable. Fully qualified name `projects/`project`/locations/global/
        #   collections/`collection`/engines/`engine`/sessions/*`
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession] google_cloud_discoveryengine_v1beta_session_object
        # @param [String] update_mask
        #   Indicates which fields in the provided Session to update. The following are
        #   NOT supported: * Session.name If not set or empty, all supported fields are
        #   updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_collection_engine_session(name, google_cloud_discoveryengine_v1beta_session_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_session_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Answer.
        # @param [String] name
        #   Required. The resource name of the Answer to get. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/engines/`engine_id`/sessions/`
        #   session_id`/answers/`answer_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_engine_session_answer(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswer::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswer
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Completes the specified user input with keyword suggestions.
        # @param [String] data_store
        #   Required. The parent data store resource name for which the completion is
        #   performed, such as `projects/*/locations/global/collections/default_collection/
        #   dataStores/default_data_store`.
        # @param [Boolean] include_tail_suggestions
        #   Indicates if tail suggestions should be returned if there are no suggestions
        #   that match the full query. Even if set to true, if there are suggestions that
        #   match the full query, those are returned and no tail suggestions are returned.
        # @param [String] query
        #   Required. The typeahead input used to fetch suggestions. Maximum length is 128
        #   characters.
        # @param [String] query_model
        #   Specifies the autocomplete data model. This overrides any model specified in
        #   the Configuration > Autocomplete section of the Cloud console. Currently
        #   supported values: * `document` - Using suggestions generated from user-
        #   imported documents. * `search-history` - Using suggestions generated from the
        #   past history of SearchService.Search API calls. Do not use it when there is no
        #   traffic for Search API. * `user-event` - Using suggestions generated from user-
        #   imported search events. * `document-completable` - Using suggestions taken
        #   directly from user-imported document fields marked as completable. Default
        #   values: * `document` is the default model for regular dataStores. * `search-
        #   history` is the default model for site search dataStores.
        # @param [String] user_pseudo_id
        #   Optional. A unique identifier for tracking visitors. For example, this could
        #   be implemented with an HTTP cookie, which should be able to uniquely identify
        #   a visitor on a single device. This unique identifier should not change if the
        #   visitor logs in or out of the website. This field should NOT have a fixed
        #   value such as `unknown_visitor`. This should be the same identifier as
        #   UserEvent.user_pseudo_id and SearchRequest.user_pseudo_id. The field must be a
        #   UTF-8 encoded string with a length limit of 128 characters. Otherwise, an `
        #   INVALID_ARGUMENT` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCompleteQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCompleteQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def complete_project_location_data_store_query(data_store, include_tail_suggestions: nil, query: nil, query_model: nil, user_pseudo_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+dataStore}:completeQuery', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCompleteQueryResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCompleteQueryResponse
          command.params['dataStore'] = data_store unless data_store.nil?
          command.query['includeTailSuggestions'] = include_tail_suggestions unless include_tail_suggestions.nil?
          command.query['query'] = query unless query.nil?
          command.query['queryModel'] = query_model unless query_model.nil?
          command.query['userPseudoId'] = user_pseudo_id unless user_pseudo_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a DataStore. DataStore is for storing Documents. To serve these
        # documents for Search, or Recommendation use case, an Engine needs to be
        # created separately.
        # @param [String] parent
        #   Required. The parent resource name, such as `projects/`project`/locations/`
        #   location`/collections/`collection``.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDataStore] google_cloud_discoveryengine_v1beta_data_store_object
        # @param [String] cmek_config_name
        #   Resource name of the CmekConfig to use for protecting this DataStore.
        # @param [Boolean] create_advanced_site_search
        #   A boolean flag indicating whether user want to directly create an advanced
        #   data store for site search. If the data store is not configured as site search
        #   (GENERIC vertical and PUBLIC_WEBSITE content_config), this flag will be
        #   ignored.
        # @param [String] data_store_id
        #   Required. The ID to use for the DataStore, which will become the final
        #   component of the DataStore's resource name. This field must conform to [RFC-
        #   1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 63
        #   characters. Otherwise, an INVALID_ARGUMENT error is returned.
        # @param [Boolean] disable_cmek
        #   DataStore without CMEK protections. If a default CmekConfig is set for the
        #   project, setting this field will override the default CmekConfig as well.
        # @param [Boolean] skip_default_schema_creation
        #   A boolean flag indicating whether to skip the default schema creation for the
        #   data store. Only enable this flag if you are certain that the default schema
        #   is incompatible with your use case. If set to true, you must manually create a
        #   schema for the data store before any documents can be ingested. This flag
        #   cannot be specified if `data_store.starting_schema` is specified.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_data_store(parent, google_cloud_discoveryengine_v1beta_data_store_object = nil, cmek_config_name: nil, create_advanced_site_search: nil, data_store_id: nil, disable_cmek: nil, skip_default_schema_creation: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/dataStores', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDataStore::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_data_store_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['cmekConfigName'] = cmek_config_name unless cmek_config_name.nil?
          command.query['createAdvancedSiteSearch'] = create_advanced_site_search unless create_advanced_site_search.nil?
          command.query['dataStoreId'] = data_store_id unless data_store_id.nil?
          command.query['disableCmek'] = disable_cmek unless disable_cmek.nil?
          command.query['skipDefaultSchemaCreation'] = skip_default_schema_creation unless skip_default_schema_creation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a DataStore.
        # @param [String] name
        #   Required. Full resource name of DataStore, such as `projects/`project`/
        #   locations/`location`/collections/`collection_id`/dataStores/`data_store_id``.
        #   If the caller does not have permission to delete the DataStore, regardless of
        #   whether or not it exists, a PERMISSION_DENIED error is returned. If the
        #   DataStore to delete does not exist, a NOT_FOUND error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_data_store(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a DataStore.
        # @param [String] name
        #   Required. Full resource name of DataStore, such as `projects/`project`/
        #   locations/`location`/collections/`collection_id`/dataStores/`data_store_id``.
        #   If the caller does not have permission to access the DataStore, regardless of
        #   whether or not it exists, a PERMISSION_DENIED error is returned. If the
        #   requested DataStore does not exist, a NOT_FOUND error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDataStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDataStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDataStore::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDataStore
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the SiteSearchEngine.
        # @param [String] name
        #   Required. Resource name of SiteSearchEngine, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   siteSearchEngine`. If the caller does not have permission to access the [
        #   SiteSearchEngine], regardless of whether or not it exists, a PERMISSION_DENIED
        #   error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSiteSearchEngine] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSiteSearchEngine]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store_site_search_engine(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSiteSearchEngine::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSiteSearchEngine
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the DataStores associated with the project.
        # @param [String] parent
        #   Required. The parent branch resource name, such as `projects/`project`/
        #   locations/`location`/collections/`collection_id``. If the caller does not have
        #   permission to list DataStores under this location, regardless of whether or
        #   not this data store exists, a PERMISSION_DENIED error is returned.
        # @param [String] filter
        #   Filter by solution type . For example: `filter = 'solution_type:
        #   SOLUTION_TYPE_SEARCH'`
        # @param [Fixnum] page_size
        #   Maximum number of DataStores to return. If unspecified, defaults to 10. The
        #   maximum allowed value is 50. Values above 50 will be coerced to 50. If this
        #   field is negative, an INVALID_ARGUMENT is returned.
        # @param [String] page_token
        #   A page token ListDataStoresResponse.next_page_token, received from a previous
        #   DataStoreService.ListDataStores call. Provide this to retrieve the subsequent
        #   page. When paginating, all other parameters provided to DataStoreService.
        #   ListDataStores must match the call that provided the page token. Otherwise, an
        #   INVALID_ARGUMENT error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListDataStoresResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListDataStoresResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_stores(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/dataStores', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListDataStoresResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListDataStoresResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a DataStore
        # @param [String] name
        #   Immutable. Identifier. The full resource name of the data store. Format: `
        #   projects/`project`/locations/`location`/collections/`collection_id`/dataStores/
        #   `data_store_id``. This field must be a UTF-8 encoded string with a length
        #   limit of 1024 characters.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDataStore] google_cloud_discoveryengine_v1beta_data_store_object
        # @param [String] update_mask
        #   Indicates which fields in the provided DataStore to update. If an unsupported
        #   or unknown field is provided, an INVALID_ARGUMENT error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDataStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDataStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_data_store(name, google_cloud_discoveryengine_v1beta_data_store_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDataStore::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_data_store_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDataStore::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDataStore
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets index freshness metadata for Documents. Supported for website search only.
        # @param [String] parent
        #   Required. The parent branch resource name, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch``.
        # @param [Array<String>, String] matcher_fhir_matcher_fhir_resources
        #   Required. The FHIR resources to match by. Format: projects/`project`/locations/
        #   `location`/datasets/`dataset`/fhirStores/`fhir_store`/fhir/`resource_type`/`
        #   fhir_resource_id`
        # @param [Array<String>, String] matcher_uris_matcher_uris
        #   The exact URIs to match by.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBatchGetDocumentsMetadataResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBatchGetDocumentsMetadataResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_data_store_branch_get_documents_metadata(parent, matcher_fhir_matcher_fhir_resources: nil, matcher_uris_matcher_uris: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/batchGetDocumentsMetadata', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBatchGetDocumentsMetadataResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBatchGetDocumentsMetadataResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['matcher.fhirMatcher.fhirResources'] = matcher_fhir_matcher_fhir_resources unless matcher_fhir_matcher_fhir_resources.nil?
          command.query['matcher.urisMatcher.uris'] = matcher_uris_matcher_uris unless matcher_uris_matcher_uris.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Document.
        # @param [String] parent
        #   Required. The parent resource name, such as `projects/`project`/locations/`
        #   location`/collections/`collection`/dataStores/`data_store`/branches/`branch``.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument] google_cloud_discoveryengine_v1beta_document_object
        # @param [String] document_id
        #   Required. The ID to use for the Document, which becomes the final component of
        #   the Document.name. If the caller does not have permission to create the
        #   Document, regardless of whether or not it exists, a `PERMISSION_DENIED` error
        #   is returned. This field must be unique among all Documents with the same
        #   parent. Otherwise, an `ALREADY_EXISTS` error is returned. This field must
        #   conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a
        #   length limit of 128 characters. Otherwise, an `INVALID_ARGUMENT` error is
        #   returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_data_store_branch_document(parent, google_cloud_discoveryengine_v1beta_document_object = nil, document_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/documents', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_document_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument
          command.params['parent'] = parent unless parent.nil?
          command.query['documentId'] = document_id unless document_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Document.
        # @param [String] name
        #   Required. Full resource name of Document, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch`/documents/`document``. If the caller does not have permission to
        #   delete the Document, regardless of whether or not it exists, a `
        #   PERMISSION_DENIED` error is returned. If the Document to delete does not exist,
        #   a `NOT_FOUND` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_data_store_branch_document(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Document.
        # @param [String] name
        #   Required. Full resource name of Document, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch`/documents/`document``. If the caller does not have permission to
        #   access the Document, regardless of whether or not it exists, a `
        #   PERMISSION_DENIED` error is returned. If the requested Document does not exist,
        #   a `NOT_FOUND` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store_branch_document(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Bulk import of multiple Documents. Request processing may be synchronous. Non-
        # existing items are created. Note: It is possible for a subset of the Documents
        # to be successfully updated.
        # @param [String] parent
        #   Required. The parent branch resource name, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch``. Requires create/update permission.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportDocumentsRequest] google_cloud_discoveryengine_v1beta_import_documents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_data_store_branch_document(parent, google_cloud_discoveryengine_v1beta_import_documents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/documents:import', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportDocumentsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_import_documents_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of Documents.
        # @param [String] parent
        #   Required. The parent branch resource name, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch``. Use `default_branch` as the branch ID, to list documents under the
        #   default branch. If the caller does not have permission to list Documents under
        #   this branch, regardless of whether or not this branch exists, a `
        #   PERMISSION_DENIED` error is returned.
        # @param [Fixnum] page_size
        #   Maximum number of Documents to return. If unspecified, defaults to 100. The
        #   maximum allowed value is 1000. Values above 1000 are set to 1000. If this
        #   field is negative, an `INVALID_ARGUMENT` error is returned.
        # @param [String] page_token
        #   A page token ListDocumentsResponse.next_page_token, received from a previous
        #   DocumentService.ListDocuments call. Provide this to retrieve the subsequent
        #   page. When paginating, all other parameters provided to DocumentService.
        #   ListDocuments must match the call that provided the page token. Otherwise, an `
        #   INVALID_ARGUMENT` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListDocumentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListDocumentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_store_branch_documents(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/documents', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListDocumentsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListDocumentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Document.
        # @param [String] name
        #   Immutable. The full resource name of the document. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch`/documents/`document_id``. This field must be a UTF-8 encoded string
        #   with a length limit of 1024 characters.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument] google_cloud_discoveryengine_v1beta_document_object
        # @param [Boolean] allow_missing
        #   If set to `true` and the Document is not found, a new Document is be created.
        # @param [String] update_mask
        #   Indicates which fields in the provided imported 'document' to update. If not
        #   set, by default updates all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_data_store_branch_document(name, google_cloud_discoveryengine_v1beta_document_object = nil, allow_missing: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_document_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Permanently deletes all selected Documents in a branch. This process is
        # asynchronous. Depending on the number of Documents to be deleted, this
        # operation can take hours to complete. Before the delete operation completes,
        # some Documents might still be returned by DocumentService.GetDocument or
        # DocumentService.ListDocuments. To get a list of the Documents to be deleted,
        # set PurgeDocumentsRequest.force to false.
        # @param [String] parent
        #   Required. The parent resource name, such as `projects/`project`/locations/`
        #   location`/collections/`collection`/dataStores/`data_store`/branches/`branch``.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaPurgeDocumentsRequest] google_cloud_discoveryengine_v1beta_purge_documents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def purge_project_location_data_store_branch_document(parent, google_cloud_discoveryengine_v1beta_purge_documents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/documents:purge', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaPurgeDocumentsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_purge_documents_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts asynchronous cancellation on a long-running operation. The server makes
        # a best effort to cancel the operation, but success is not guaranteed. If the
        # server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
        # Clients can use Operations.GetOperation or other methods to check whether the
        # cancellation succeeded or whether the operation completed despite cancellation.
        # On successful cancellation, the operation is not deleted; instead, it becomes
        # an operation with an Operation.error value with a google.rpc.Status.code of `1`
        # , corresponding to `Code.CANCELLED`.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningCancelOperationRequest] google_longrunning_cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_location_data_store_branch_operation(name, google_longrunning_cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+name}:cancel', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningCancelOperationRequest::Representation
          command.request_object = google_longrunning_cancel_operation_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store_branch_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_store_branch_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Completes the user input with advanced keyword suggestions.
        # @param [String] completion_config
        #   Required. The completion_config of the parent dataStore or engine resource
        #   name for which the completion is performed, such as `projects/*/locations/
        #   global/collections/default_collection/dataStores/*/completionConfig` `projects/
        #   */locations/global/collections/default_collection/engines/*/completionConfig`.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryRequest] google_cloud_discoveryengine_v1beta_advanced_complete_query_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def complete_project_location_data_store_completion_config_query(completion_config, google_cloud_discoveryengine_v1beta_advanced_complete_query_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+completionConfig}:completeQuery', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_advanced_complete_query_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponse
          command.params['completionConfig'] = completion_config unless completion_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports CompletionSuggestions for a DataStore.
        # @param [String] parent
        #   Required. The parent data store resource name for which to import customer
        #   autocomplete suggestions. Follows pattern `projects/*/locations/*/collections/*
        #   /dataStores/*`
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportCompletionSuggestionsRequest] google_cloud_discoveryengine_v1beta_import_completion_suggestions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_data_store_completion_suggestion(parent, google_cloud_discoveryengine_v1beta_import_completion_suggestions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/completionSuggestions:import', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportCompletionSuggestionsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_import_completion_suggestions_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Permanently deletes all CompletionSuggestions for a DataStore.
        # @param [String] parent
        #   Required. The parent data store resource name for which to purge completion
        #   suggestions. Follows pattern projects/*/locations/*/collections/*/dataStores/*.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaPurgeCompletionSuggestionsRequest] google_cloud_discoveryengine_v1beta_purge_completion_suggestions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def purge_project_location_data_store_completion_suggestion(parent, google_cloud_discoveryengine_v1beta_purge_completion_suggestions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/completionSuggestions:purge', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaPurgeCompletionSuggestionsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_purge_completion_suggestions_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Control. By default 1000 controls are allowed for a data store. A
        # request can be submitted to adjust this limit. If the Control to create
        # already exists, an ALREADY_EXISTS error is returned.
        # @param [String] parent
        #   Required. Full resource name of parent data store. Format: `projects/`project`/
        #   locations/`location`/collections/`collection_id`/dataStores/`data_store_id``
        #   or `projects/`project`/locations/`location`/collections/`collection_id`/
        #   engines/`engine_id``.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl] google_cloud_discoveryengine_v1beta_control_object
        # @param [String] control_id
        #   Required. The ID to use for the Control, which will become the final component
        #   of the Control's resource name. This value must be within 1-63 characters.
        #   Valid characters are /a-z-_/.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_data_store_control(parent, google_cloud_discoveryengine_v1beta_control_object = nil, control_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/controls', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_control_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl
          command.params['parent'] = parent unless parent.nil?
          command.query['controlId'] = control_id unless control_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Control. If the Control to delete does not exist, a NOT_FOUND error
        # is returned.
        # @param [String] name
        #   Required. The resource name of the Control to delete. Format: `projects/`
        #   project`/locations/`location`/collections/`collection_id`/dataStores/`
        #   data_store_id`/controls/`control_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_data_store_control(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Control.
        # @param [String] name
        #   Required. The resource name of the Control to get. Format: `projects/`project`/
        #   locations/`location`/collections/`collection_id`/dataStores/`data_store_id`/
        #   controls/`control_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store_control(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Controls by their parent DataStore.
        # @param [String] parent
        #   Required. The data store resource name. Format: `projects/`project`/locations/`
        #   location`/collections/`collection_id`/dataStores/`data_store_id`` or `projects/
        #   `project`/locations/`location`/collections/`collection_id`/engines/`engine_id``
        #   .
        # @param [String] filter
        #   Optional. A filter to apply on the list results. Supported features: * List
        #   all the products under the parent branch if filter is unset. Currently this
        #   field is unsupported.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of results to return. If unspecified, defaults to 50.
        #   Max allowed value is 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListControls` call. Provide
        #   this to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListControlsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListControlsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_store_controls(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/controls', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListControlsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListControlsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Control. Control action type cannot be changed. If the Control to
        # update does not exist, a NOT_FOUND error is returned.
        # @param [String] name
        #   Immutable. Fully qualified name `projects/*/locations/global/dataStore/*/
        #   controls/*`
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl] google_cloud_discoveryengine_v1beta_control_object
        # @param [String] update_mask
        #   Optional. Indicates which fields in the provided Control to update. The
        #   following are NOT supported: * Control.name * Control.solution_type If not set
        #   or empty, all supported fields are updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_data_store_control(name, google_cloud_discoveryengine_v1beta_control_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_control_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaControl
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Converses a conversation.
        # @param [String] name
        #   Required. The resource name of the Conversation to get. Format: `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`
        #   data_store_id`/conversations/`conversation_id``. Use `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store_id`/
        #   conversations/-` to activate auto session mode, which automatically creates a
        #   new conversation inside a ConverseConversation session.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConverseConversationRequest] google_cloud_discoveryengine_v1beta_converse_conversation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConverseConversationResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConverseConversationResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def converse_project_location_data_store_conversation(name, google_cloud_discoveryengine_v1beta_converse_conversation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+name}:converse', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConverseConversationRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_converse_conversation_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConverseConversationResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConverseConversationResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Conversation. If the Conversation to create already exists, an
        # ALREADY_EXISTS error is returned.
        # @param [String] parent
        #   Required. Full resource name of parent data store. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store_id``
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation] google_cloud_discoveryengine_v1beta_conversation_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_data_store_conversation(parent, google_cloud_discoveryengine_v1beta_conversation_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/conversations', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_conversation_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Conversation. If the Conversation to delete does not exist, a
        # NOT_FOUND error is returned.
        # @param [String] name
        #   Required. The resource name of the Conversation to delete. Format: `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`
        #   data_store_id`/conversations/`conversation_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_data_store_conversation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Conversation.
        # @param [String] name
        #   Required. The resource name of the Conversation to get. Format: `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`
        #   data_store_id`/conversations/`conversation_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store_conversation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Conversations by their parent DataStore.
        # @param [String] parent
        #   Required. The data store resource name. Format: `projects/`project`/locations/`
        #   location`/collections/`collection`/dataStores/`data_store_id``
        # @param [String] filter
        #   A filter to apply on the list results. The supported features are:
        #   user_pseudo_id, state. Example: "user_pseudo_id = some_id"
        # @param [String] order_by
        #   A comma-separated list of fields to order by, sorted in ascending order. Use "
        #   desc" after a field name for descending. Supported fields: * `update_time` * `
        #   create_time` * `conversation_name` Example: "update_time desc" "create_time"
        # @param [Fixnum] page_size
        #   Maximum number of results to return. If unspecified, defaults to 50. Max
        #   allowed value is 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListConversations` call. Provide this
        #   to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListConversationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListConversationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_store_conversations(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/conversations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListConversationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListConversationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Conversation. Conversation action type cannot be changed. If the
        # Conversation to update does not exist, a NOT_FOUND error is returned.
        # @param [String] name
        #   Immutable. Fully qualified name `projects/`project`/locations/global/
        #   collections/`collection`/dataStore/*/conversations/*` or `projects/`project`/
        #   locations/global/collections/`collection`/engines/*/conversations/*`.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation] google_cloud_discoveryengine_v1beta_conversation_object
        # @param [String] update_mask
        #   Indicates which fields in the provided Conversation to update. The following
        #   are NOT supported: * Conversation.name If not set or empty, all supported
        #   fields are updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_data_store_conversation(name, google_cloud_discoveryengine_v1beta_conversation_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_conversation_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store_model_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_store_model_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_store_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Schema.
        # @param [String] parent
        #   Required. The parent data store resource name, in the format of `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store``
        #   .
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSchema] google_cloud_discoveryengine_v1beta_schema_object
        # @param [String] schema_id
        #   Required. The ID to use for the Schema, which becomes the final component of
        #   the Schema.name. This field should conform to [RFC-1034](https://tools.ietf.
        #   org/html/rfc1034) standard with a length limit of 63 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_data_store_schema(parent, google_cloud_discoveryengine_v1beta_schema_object = nil, schema_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/schemas', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSchema::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_schema_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['schemaId'] = schema_id unless schema_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Schema.
        # @param [String] name
        #   Required. The full resource name of the schema, in the format of `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   schemas/`schema``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_data_store_schema(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Schema.
        # @param [String] name
        #   Required. The full resource name of the schema, in the format of `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   schemas/`schema``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSchema] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSchema]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store_schema(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSchema::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSchema
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of Schemas.
        # @param [String] parent
        #   Required. The parent data store resource name, in the format of `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store``
        #   .
        # @param [Fixnum] page_size
        #   The maximum number of Schemas to return. The service may return fewer than
        #   this value. If unspecified, at most 100 Schemas are returned. The maximum
        #   value is 1000; values above 1000 are set to 1000.
        # @param [String] page_token
        #   A page token, received from a previous SchemaService.ListSchemas call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to SchemaService.ListSchemas must match the call that provided the
        #   page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListSchemasResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListSchemasResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_store_schemas(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/schemas', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListSchemasResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListSchemasResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Schema.
        # @param [String] name
        #   Immutable. The full resource name of the schema, in the format of `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   schemas/`schema``. This field must be a UTF-8 encoded string with a length
        #   limit of 1024 characters.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSchema] google_cloud_discoveryengine_v1beta_schema_object
        # @param [Boolean] allow_missing
        #   If set to true, and the Schema is not found, a new Schema is created. In this
        #   situation, `update_mask` is ignored.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_data_store_schema(name, google_cloud_discoveryengine_v1beta_schema_object = nil, allow_missing: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSchema::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_schema_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Answer query method.
        # @param [String] serving_config
        #   Required. The resource name of the Search serving config, such as `projects/*/
        #   locations/global/collections/default_collection/engines/*/servingConfigs/
        #   default_serving_config`, or `projects/*/locations/global/collections/
        #   default_collection/dataStores/*/servingConfigs/default_serving_config`. This
        #   field is used to identify the serving configuration name, set of models used
        #   to make the search.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequest] google_cloud_discoveryengine_v1beta_answer_query_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def answer_project_location_data_store_serving_config(serving_config, google_cloud_discoveryengine_v1beta_answer_query_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+servingConfig}:answer', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_answer_query_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryResponse
          command.params['servingConfig'] = serving_config unless serving_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a ServingConfig. Returns a NotFound error if the ServingConfig does not
        # exist.
        # @param [String] name
        #   Required. The resource name of the ServingConfig to get. Format: `projects/`
        #   project`/locations/`location`/collections/`collection`/engines/`engine`/
        #   servingConfigs/`serving_config_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaServingConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaServingConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store_serving_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaServingConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaServingConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all ServingConfigs linked to this dataStore.
        # @param [String] parent
        #   Required. Full resource name of the parent resource. Format: `projects/`
        #   project`/locations/`location`/collections/`collection`/engines/`engine``
        # @param [Fixnum] page_size
        #   Optional. Maximum number of results to return. If unspecified, defaults to 100.
        #   If a value greater than 100 is provided, at most 100 results are returned.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListServingConfigs` call.
        #   Provide this to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListServingConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListServingConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_store_serving_configs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/servingConfigs', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListServingConfigsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListServingConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a ServingConfig. Returns a NOT_FOUND error if the ServingConfig does
        # not exist.
        # @param [String] name
        #   Immutable. Fully qualified name `projects/`project`/locations/`location`/
        #   collections/`collection_id`/engines/`engine_id`/servingConfigs/`
        #   serving_config_id``
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaServingConfig] google_cloud_discoveryengine_v1beta_serving_config_object
        # @param [String] update_mask
        #   Indicates which fields in the provided ServingConfig to update. The following
        #   are NOT supported: * ServingConfig.name If not set, all supported fields are
        #   updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaServingConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaServingConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_data_store_serving_config(name, google_cloud_discoveryengine_v1beta_serving_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaServingConfig::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_serving_config_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaServingConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaServingConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Makes a recommendation, which requires a contextual user event.
        # @param [String] serving_config
        #   Required. Full resource name of a ServingConfig: `projects/*/locations/global/
        #   collections/*/engines/*/servingConfigs/*`, or `projects/*/locations/global/
        #   collections/*/dataStores/*/servingConfigs/*` One default serving config is
        #   created along with your recommendation engine creation. The engine ID is used
        #   as the ID of the default serving config. For example, for Engine `projects/*/
        #   locations/global/collections/*/engines/my-engine`, you can use `projects/*/
        #   locations/global/collections/*/engines/my-engine/servingConfigs/my-engine` for
        #   your RecommendationService.Recommend requests.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRecommendRequest] google_cloud_discoveryengine_v1beta_recommend_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRecommendResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRecommendResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def recommend_project_location_data_store_serving_config(serving_config, google_cloud_discoveryengine_v1beta_recommend_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+servingConfig}:recommend', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRecommendRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_recommend_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRecommendResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRecommendResponse
          command.params['servingConfig'] = serving_config unless serving_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Performs a search.
        # @param [String] serving_config
        #   Required. The resource name of the Search serving config, such as `projects/*/
        #   locations/global/collections/default_collection/engines/*/servingConfigs/
        #   default_serving_config`, or `projects/*/locations/global/collections/
        #   default_collection/dataStores/default_data_store/servingConfigs/
        #   default_serving_config`. This field is used to identify the serving
        #   configuration name, set of models used to make the search.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequest] google_cloud_discoveryengine_v1beta_search_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_data_store_serving_configs(serving_config, google_cloud_discoveryengine_v1beta_search_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+servingConfig}:search', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_search_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponse
          command.params['servingConfig'] = serving_config unless serving_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Performs a search. Similar to the SearchService.Search method, but a lite
        # version that allows API key for authentication, where OAuth and IAM checks are
        # not required. Only public website search is supported by this method. If data
        # stores and engines not associated with public website search are specified, a `
        # FAILED_PRECONDITION` error is returned. This method can be used for easy
        # onboarding without having to implement an authentication backend. However, it
        # is strongly recommended to use SearchService.Search instead with required
        # OAuth and IAM checks to provide better data security.
        # @param [String] serving_config
        #   Required. The resource name of the Search serving config, such as `projects/*/
        #   locations/global/collections/default_collection/engines/*/servingConfigs/
        #   default_serving_config`, or `projects/*/locations/global/collections/
        #   default_collection/dataStores/default_data_store/servingConfigs/
        #   default_serving_config`. This field is used to identify the serving
        #   configuration name, set of models used to make the search.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequest] google_cloud_discoveryengine_v1beta_search_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_data_store_serving_config_lite(serving_config, google_cloud_discoveryengine_v1beta_search_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+servingConfig}:searchLite', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_search_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponse
          command.params['servingConfig'] = serving_config unless serving_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Answer query method (streaming). It takes one AnswerQueryRequest and returns
        # multiple AnswerQueryResponse messages in a stream.
        # @param [String] serving_config
        #   Required. The resource name of the Search serving config, such as `projects/*/
        #   locations/global/collections/default_collection/engines/*/servingConfigs/
        #   default_serving_config`, or `projects/*/locations/global/collections/
        #   default_collection/dataStores/*/servingConfigs/default_serving_config`. This
        #   field is used to identify the serving configuration name, set of models used
        #   to make the search.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequest] google_cloud_discoveryengine_v1beta_answer_query_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def stream_project_location_data_store_serving_config_answer(serving_config, google_cloud_discoveryengine_v1beta_answer_query_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+servingConfig}:streamAnswer', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_answer_query_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswerQueryResponse
          command.params['servingConfig'] = serving_config unless serving_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Session. If the Session to create already exists, an ALREADY_EXISTS
        # error is returned.
        # @param [String] parent
        #   Required. Full resource name of parent data store. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store_id``
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession] google_cloud_discoveryengine_v1beta_session_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_data_store_session(parent, google_cloud_discoveryengine_v1beta_session_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/sessions', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_session_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Session. If the Session to delete does not exist, a NOT_FOUND error
        # is returned.
        # @param [String] name
        #   Required. The resource name of the Session to delete. Format: `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`
        #   data_store_id`/sessions/`session_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_data_store_session(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Session.
        # @param [String] name
        #   Required. The resource name of the Session to get. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store_id`/
        #   sessions/`session_id``
        # @param [Boolean] include_answer_details
        #   Optional. If set to true, the full session including all answer details will
        #   be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store_session(name, include_answer_details: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession
          command.params['name'] = name unless name.nil?
          command.query['includeAnswerDetails'] = include_answer_details unless include_answer_details.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Sessions by their parent DataStore.
        # @param [String] parent
        #   Required. The data store resource name. Format: `projects/`project`/locations/`
        #   location`/collections/`collection`/dataStores/`data_store_id``
        # @param [String] filter
        #   A comma-separated list of fields to filter by, in EBNF grammar. The supported
        #   fields are: * `user_pseudo_id` * `state` * `display_name` * `starred` * `
        #   is_pinned` * `labels` * `create_time` * `update_time` Examples: * `
        #   user_pseudo_id = some_id` * `display_name = "some_name"` * `starred = true` * `
        #   is_pinned=true AND (NOT labels:hidden)` * `create_time > "1970-01-01T12:00:00Z"
        #   `
        # @param [String] order_by
        #   A comma-separated list of fields to order by, sorted in ascending order. Use "
        #   desc" after a field name for descending. Supported fields: * `update_time` * `
        #   create_time` * `session_name` * `is_pinned` Example: * `update_time desc` * `
        #   create_time` * `is_pinned desc,update_time desc`: list sessions by is_pinned
        #   first, then by update_time.
        # @param [Fixnum] page_size
        #   Maximum number of results to return. If unspecified, defaults to 50. Max
        #   allowed value is 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListSessions` call. Provide this to
        #   retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListSessionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListSessionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_store_sessions(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/sessions', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListSessionsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListSessionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Session. Session action type cannot be changed. If the Session to
        # update does not exist, a NOT_FOUND error is returned.
        # @param [String] name
        #   Immutable. Fully qualified name `projects/`project`/locations/global/
        #   collections/`collection`/engines/`engine`/sessions/*`
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession] google_cloud_discoveryengine_v1beta_session_object
        # @param [String] update_mask
        #   Indicates which fields in the provided Session to update. The following are
        #   NOT supported: * Session.name If not set or empty, all supported fields are
        #   updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_data_store_session(name, google_cloud_discoveryengine_v1beta_session_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_session_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSession
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Answer.
        # @param [String] name
        #   Required. The resource name of the Answer to get. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/engines/`engine_id`/sessions/`
        #   session_id`/answers/`answer_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store_session_answer(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswer::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaAnswer
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Downgrade from advanced site search to basic site search.
        # @param [String] site_search_engine
        #   Required. Full resource name of the SiteSearchEngine, such as `projects/`
        #   project`/locations/`location`/dataStores/`data_store_id`/siteSearchEngine`.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDisableAdvancedSiteSearchRequest] google_cloud_discoveryengine_v1beta_disable_advanced_site_search_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def disable_project_location_data_store_site_search_engine_advanced_site_search(site_search_engine, google_cloud_discoveryengine_v1beta_disable_advanced_site_search_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+siteSearchEngine}:disableAdvancedSiteSearch', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDisableAdvancedSiteSearchRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_disable_advanced_site_search_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['siteSearchEngine'] = site_search_engine unless site_search_engine.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Upgrade from basic site search to advanced site search.
        # @param [String] site_search_engine
        #   Required. Full resource name of the SiteSearchEngine, such as `projects/`
        #   project`/locations/`location`/dataStores/`data_store_id`/siteSearchEngine`.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEnableAdvancedSiteSearchRequest] google_cloud_discoveryengine_v1beta_enable_advanced_site_search_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def enable_project_location_data_store_site_search_engine_advanced_site_search(site_search_engine, google_cloud_discoveryengine_v1beta_enable_advanced_site_search_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+siteSearchEngine}:enableAdvancedSiteSearch', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEnableAdvancedSiteSearchRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_enable_advanced_site_search_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['siteSearchEngine'] = site_search_engine unless site_search_engine.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Request on-demand recrawl for a list of URIs.
        # @param [String] site_search_engine
        #   Required. Full resource name of the SiteSearchEngine, such as `projects/*/
        #   locations/*/collections/*/dataStores/*/siteSearchEngine`.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRecrawlUrisRequest] google_cloud_discoveryengine_v1beta_recrawl_uris_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def recrawl_project_location_data_store_site_search_engine_uris(site_search_engine, google_cloud_discoveryengine_v1beta_recrawl_uris_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+siteSearchEngine}:recrawlUris', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRecrawlUrisRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_recrawl_uris_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['siteSearchEngine'] = site_search_engine unless site_search_engine.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Sitemap.
        # @param [String] parent
        #   Required. Parent resource name of the SiteSearchEngine, such as `projects/*/
        #   locations/*/collections/*/dataStores/*/siteSearchEngine`.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSitemap] google_cloud_discoveryengine_v1beta_sitemap_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_data_store_site_search_engine_sitemap(parent, google_cloud_discoveryengine_v1beta_sitemap_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/sitemaps', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSitemap::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_sitemap_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Sitemap.
        # @param [String] name
        #   Required. Full resource name of Sitemap, such as `projects/`project`/locations/
        #   `location`/collections/`collection`/dataStores/`data_store`/siteSearchEngine/
        #   sitemaps/`sitemap``. If the caller does not have permission to access the
        #   Sitemap, regardless of whether or not it exists, a PERMISSION_DENIED error is
        #   returned. If the requested Sitemap does not exist, a NOT_FOUND error is
        #   returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_data_store_site_search_engine_sitemap(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetch Sitemaps in a DataStore.
        # @param [String] parent
        #   Required. Parent resource name of the SiteSearchEngine, such as `projects/*/
        #   locations/*/collections/*/dataStores/*/siteSearchEngine`.
        # @param [Array<String>, String] matcher_uris_matcher_uris
        #   The Sitemap uris.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaFetchSitemapsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaFetchSitemapsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_project_location_data_store_site_search_engine_sitemap(parent, matcher_uris_matcher_uris: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/sitemaps:fetch', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaFetchSitemapsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaFetchSitemapsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['matcher.urisMatcher.uris'] = matcher_uris_matcher_uris unless matcher_uris_matcher_uris.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates TargetSite in a batch.
        # @param [String] parent
        #   Required. The parent resource shared by all TargetSites being created. `
        #   projects/`project`/locations/`location`/collections/`collection`/dataStores/`
        #   data_store`/siteSearchEngine`. The parent field in the CreateBookRequest
        #   messages must either be empty or match this field.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBatchCreateTargetSitesRequest] google_cloud_discoveryengine_v1beta_batch_create_target_sites_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_data_store_site_search_engine_target_site_create(parent, google_cloud_discoveryengine_v1beta_batch_create_target_sites_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/targetSites:batchCreate', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBatchCreateTargetSitesRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_batch_create_target_sites_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a TargetSite.
        # @param [String] parent
        #   Required. Parent resource name of TargetSite, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   siteSearchEngine`.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTargetSite] google_cloud_discoveryengine_v1beta_target_site_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_data_store_site_search_engine_target_site(parent, google_cloud_discoveryengine_v1beta_target_site_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/targetSites', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTargetSite::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_target_site_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a TargetSite.
        # @param [String] name
        #   Required. Full resource name of TargetSite, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   siteSearchEngine/targetSites/`target_site``. If the caller does not have
        #   permission to access the TargetSite, regardless of whether or not it exists, a
        #   PERMISSION_DENIED error is returned. If the requested TargetSite does not
        #   exist, a NOT_FOUND error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_data_store_site_search_engine_target_site(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a TargetSite.
        # @param [String] name
        #   Required. Full resource name of TargetSite, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   siteSearchEngine/targetSites/`target_site``. If the caller does not have
        #   permission to access the TargetSite, regardless of whether or not it exists, a
        #   PERMISSION_DENIED error is returned. If the requested TargetSite does not
        #   exist, a NOT_FOUND error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTargetSite] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTargetSite]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store_site_search_engine_target_site(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTargetSite::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTargetSite
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of TargetSites.
        # @param [String] parent
        #   Required. The parent site search engine resource name, such as `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   siteSearchEngine`. If the caller does not have permission to list TargetSites
        #   under this site search engine, regardless of whether or not this branch exists,
        #   a PERMISSION_DENIED error is returned.
        # @param [Fixnum] page_size
        #   Requested page size. Server may return fewer items than requested. If
        #   unspecified, server will pick an appropriate default. The maximum value is
        #   1000; values above 1000 will be coerced to 1000. If this field is negative, an
        #   INVALID_ARGUMENT error is returned.
        # @param [String] page_token
        #   A page token, received from a previous `ListTargetSites` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListTargetSites` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListTargetSitesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListTargetSitesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_store_site_search_engine_target_sites(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/targetSites', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListTargetSitesResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListTargetSitesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a TargetSite.
        # @param [String] name
        #   Output only. The fully qualified resource name of the target site. `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   siteSearchEngine/targetSites/`target_site`` The `target_site_id` is system-
        #   generated.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTargetSite] google_cloud_discoveryengine_v1beta_target_site_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_data_store_site_search_engine_target_site(name, google_cloud_discoveryengine_v1beta_target_site_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTargetSite::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_target_site_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports all SuggestionDenyListEntry for a DataStore.
        # @param [String] parent
        #   Required. The parent data store resource name for which to import denylist
        #   entries. Follows pattern projects/*/locations/*/collections/*/dataStores/*.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportSuggestionDenyListEntriesRequest] google_cloud_discoveryengine_v1beta_import_suggestion_deny_list_entries_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_data_store_suggestion_deny_list_entry(parent, google_cloud_discoveryengine_v1beta_import_suggestion_deny_list_entries_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/suggestionDenyListEntries:import', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportSuggestionDenyListEntriesRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_import_suggestion_deny_list_entries_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Permanently deletes all SuggestionDenyListEntry for a DataStore.
        # @param [String] parent
        #   Required. The parent data store resource name for which to import denylist
        #   entries. Follows pattern projects/*/locations/*/collections/*/dataStores/*.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaPurgeSuggestionDenyListEntriesRequest] google_cloud_discoveryengine_v1beta_purge_suggestion_deny_list_entries_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def purge_project_location_data_store_suggestion_deny_list_entry(parent, google_cloud_discoveryengine_v1beta_purge_suggestion_deny_list_entries_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/suggestionDenyListEntries:purge', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaPurgeSuggestionDenyListEntriesRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_purge_suggestion_deny_list_entries_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Writes a single user event from the browser. This uses a GET request to due to
        # browser restriction of POST-ing to a third-party domain. This method is used
        # only by the Discovery Engine API JavaScript pixel and Google Tag Manager.
        # Users should not call this method directly.
        # @param [String] parent
        #   Required. The parent resource name. If the collect user event action is
        #   applied in DataStore level, the format is: `projects/`project`/locations/`
        #   location`/collections/`collection`/dataStores/`data_store``. If the collect
        #   user event action is applied in Location level, for example, the event with
        #   Document across multiple DataStore, the format is: `projects/`project`/
        #   locations/`location``.
        # @param [Fixnum] ets
        #   The event timestamp in milliseconds. This prevents browser caching of
        #   otherwise identical get requests. The name is abbreviated to reduce the
        #   payload bytes.
        # @param [String] uri
        #   The URL including cgi-parameters but excluding the hash fragment with a length
        #   limit of 5,000 characters. This is often more useful than the referer URL,
        #   because many browsers only send the domain for third-party requests.
        # @param [String] user_event
        #   Required. URL encoded UserEvent proto with a length limit of 2,000,000
        #   characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleApiHttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleApiHttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def collect_project_location_data_store_user_event(parent, ets: nil, uri: nil, user_event: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/userEvents:collect', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleApiHttpBody::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleApiHttpBody
          command.params['parent'] = parent unless parent.nil?
          command.query['ets'] = ets unless ets.nil?
          command.query['uri'] = uri unless uri.nil?
          command.query['userEvent'] = user_event unless user_event.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Bulk import of user events. Request processing might be synchronous. Events
        # that already exist are skipped. Use this method for backfilling historical
        # user events. Operation.response is of type ImportResponse. Note that it is
        # possible for a subset of the items to be successfully inserted. Operation.
        # metadata is of type ImportMetadata.
        # @param [String] parent
        #   Required. Parent DataStore resource name, of the form `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store``
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportUserEventsRequest] google_cloud_discoveryengine_v1beta_import_user_events_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_data_store_user_event(parent, google_cloud_discoveryengine_v1beta_import_user_events_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/userEvents:import', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportUserEventsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_import_user_events_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes permanently all user events specified by the filter provided.
        # Depending on the number of events specified by the filter, this operation
        # could take hours or days to complete. To test a filter, use the list command
        # first.
        # @param [String] parent
        #   Required. The resource name of the catalog under which the events are created.
        #   The format is `projects/`project`/locations/global/collections/`collection`/
        #   dataStores/`dataStore``.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaPurgeUserEventsRequest] google_cloud_discoveryengine_v1beta_purge_user_events_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def purge_project_location_data_store_user_event(parent, google_cloud_discoveryengine_v1beta_purge_user_events_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/userEvents:purge', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaPurgeUserEventsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_purge_user_events_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Writes a single user event.
        # @param [String] parent
        #   Required. The parent resource name. If the write user event action is applied
        #   in DataStore level, the format is: `projects/`project`/locations/`location`/
        #   collections/`collection`/dataStores/`data_store``. If the write user event
        #   action is applied in Location level, for example, the event with Document
        #   across multiple DataStore, the format is: `projects/`project`/locations/`
        #   location``.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserEvent] google_cloud_discoveryengine_v1beta_user_event_object
        # @param [Boolean] write_async
        #   If set to true, the user event is written asynchronously after validation, and
        #   the API responds without waiting for the write.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserEvent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserEvent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def write_project_location_data_store_user_event(parent, google_cloud_discoveryengine_v1beta_user_event_object = nil, write_async: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/userEvents:write', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserEvent::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_user_event_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserEvent::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserEvent
          command.params['parent'] = parent unless parent.nil?
          command.query['writeAsync'] = write_async unless write_async.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Evaluation. Upon creation, the evaluation will be automatically
        # triggered and begin execution.
        # @param [String] parent
        #   Required. The parent resource name, such as `projects/`project`/locations/`
        #   location``.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEvaluation] google_cloud_discoveryengine_v1beta_evaluation_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_evaluation(parent, google_cloud_discoveryengine_v1beta_evaluation_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/evaluations', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEvaluation::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_evaluation_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Evaluation.
        # @param [String] name
        #   Required. Full resource name of Evaluation, such as `projects/`project`/
        #   locations/`location`/evaluations/`evaluation``. If the caller does not have
        #   permission to access the Evaluation, regardless of whether or not it exists, a
        #   PERMISSION_DENIED error is returned. If the requested Evaluation does not
        #   exist, a NOT_FOUND error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEvaluation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEvaluation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_evaluation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEvaluation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaEvaluation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of Evaluations.
        # @param [String] parent
        #   Required. The parent location resource name, such as `projects/`project`/
        #   locations/`location``. If the caller does not have permission to list
        #   Evaluations under this location, regardless of whether or not this location
        #   exists, a `PERMISSION_DENIED` error is returned.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of Evaluations to return. If unspecified, defaults to
        #   100. The maximum allowed value is 1000. Values above 1000 will be coerced to
        #   1000. If this field is negative, an `INVALID_ARGUMENT` error is returned.
        # @param [String] page_token
        #   Optional. A page token ListEvaluationsResponse.next_page_token, received from
        #   a previous EvaluationService.ListEvaluations call. Provide this to retrieve
        #   the subsequent page. When paginating, all other parameters provided to
        #   EvaluationService.ListEvaluations must match the call that provided the page
        #   token. Otherwise, an `INVALID_ARGUMENT` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListEvaluationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListEvaluationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_evaluations(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/evaluations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListEvaluationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListEvaluationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of results for a given a Evaluation.
        # @param [String] evaluation
        #   Required. The evaluation resource name, such as `projects/`project`/locations/`
        #   location`/evaluations/`evaluation``. If the caller does not have permission to
        #   list ListEvaluationResultsResponse.EvaluationResult under this evaluation,
        #   regardless of whether or not this evaluation set exists, a `PERMISSION_DENIED`
        #   error is returned.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of ListEvaluationResultsResponse.EvaluationResult to
        #   return. If unspecified, defaults to 100. The maximum allowed value is 1000.
        #   Values above 1000 will be coerced to 1000. If this field is negative, an `
        #   INVALID_ARGUMENT` error is returned.
        # @param [String] page_token
        #   Optional. A page token ListEvaluationResultsResponse.next_page_token, received
        #   from a previous EvaluationService.ListEvaluationResults call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to EvaluationService.ListEvaluationResults must match the call that provided
        #   the page token. Otherwise, an `INVALID_ARGUMENT` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListEvaluationResultsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListEvaluationResultsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_evaluation_results(evaluation, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+evaluation}:listResults', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListEvaluationResultsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListEvaluationResultsResponse
          command.params['evaluation'] = evaluation unless evaluation.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_evaluation_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Performs a grounding check.
        # @param [String] grounding_config
        #   Required. The resource name of the grounding config, such as `projects/*/
        #   locations/global/groundingConfigs/default_grounding_config`.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCheckGroundingRequest] google_cloud_discoveryengine_v1beta_check_grounding_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCheckGroundingResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCheckGroundingResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def check_project_location_grounding_config(grounding_config, google_cloud_discoveryengine_v1beta_check_grounding_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+groundingConfig}:check', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCheckGroundingRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_check_grounding_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCheckGroundingResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCheckGroundingResponse
          command.params['groundingConfig'] = grounding_config unless grounding_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Identity Mapping Store.
        # @param [String] parent
        #   Required. The parent collection resource name, such as `projects/`project`/
        #   locations/`location``.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaIdentityMappingStore] google_cloud_discoveryengine_v1beta_identity_mapping_store_object
        # @param [String] cmek_config_name
        #   Resource name of the CmekConfig to use for protecting this Identity Mapping
        #   Store.
        # @param [Boolean] disable_cmek
        #   Identity Mapping Store without CMEK protections. If a default CmekConfig is
        #   set for the project, setting this field will override the default CmekConfig
        #   as well.
        # @param [String] identity_mapping_store_id
        #   Required. The ID of the Identity Mapping Store to create. The ID must contain
        #   only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The
        #   maximum length is 63 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaIdentityMappingStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaIdentityMappingStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_identity_mapping_store(parent, google_cloud_discoveryengine_v1beta_identity_mapping_store_object = nil, cmek_config_name: nil, disable_cmek: nil, identity_mapping_store_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/identityMappingStores', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaIdentityMappingStore::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_identity_mapping_store_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaIdentityMappingStore::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaIdentityMappingStore
          command.params['parent'] = parent unless parent.nil?
          command.query['cmekConfigName'] = cmek_config_name unless cmek_config_name.nil?
          command.query['disableCmek'] = disable_cmek unless disable_cmek.nil?
          command.query['identityMappingStoreId'] = identity_mapping_store_id unless identity_mapping_store_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the Identity Mapping Store.
        # @param [String] name
        #   Required. The name of the Identity Mapping Store to delete. Format: `projects/`
        #   project`/locations/`location`/identityMappingStores/`identityMappingStore``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_identity_mapping_store(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the Identity Mapping Store.
        # @param [String] name
        #   Required. The name of the Identity Mapping Store to get. Format: `projects/`
        #   project`/locations/`location`/identityMappingStores/`identityMappingStore``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaIdentityMappingStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaIdentityMappingStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_identity_mapping_store(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaIdentityMappingStore::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaIdentityMappingStore
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports a list of Identity Mapping Entries to an Identity Mapping Store.
        # @param [String] identity_mapping_store
        #   Required. The name of the Identity Mapping Store to import Identity Mapping
        #   Entries to. Format: `projects/`project`/locations/`location`/
        #   identityMappingStores/`identityMappingStore``
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportIdentityMappingsRequest] google_cloud_discoveryengine_v1beta_import_identity_mappings_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_identity_mapping_store_identity_mappings(identity_mapping_store, google_cloud_discoveryengine_v1beta_import_identity_mappings_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+identityMappingStore}:importIdentityMappings', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportIdentityMappingsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_import_identity_mappings_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['identityMappingStore'] = identity_mapping_store unless identity_mapping_store.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Identity Mapping Stores.
        # @param [String] parent
        #   Required. The parent of the Identity Mapping Stores to list. Format: `projects/
        #   `project`/locations/`location``.
        # @param [Fixnum] page_size
        #   Maximum number of IdentityMappingStores to return. If unspecified, defaults to
        #   100. The maximum allowed value is 1000. Values above 1000 will be coerced to
        #   1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListIdentityMappingStores` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListIdentityMappingStores` must match the call that
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
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListIdentityMappingStoresResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListIdentityMappingStoresResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_identity_mapping_stores(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/identityMappingStores', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListIdentityMappingStoresResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListIdentityMappingStoresResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Identity Mappings in an Identity Mapping Store.
        # @param [String] identity_mapping_store
        #   Required. The name of the Identity Mapping Store to list Identity Mapping
        #   Entries in. Format: `projects/`project`/locations/`location`/
        #   identityMappingStores/`identityMappingStore``
        # @param [Fixnum] page_size
        #   Maximum number of IdentityMappings to return. If unspecified, defaults to 2000.
        #   The maximum allowed value is 10000. Values above 10000 will be coerced to
        #   10000.
        # @param [String] page_token
        #   A page token, received from a previous `ListIdentityMappings` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListIdentityMappings` must match the call that provided the page
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
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListIdentityMappingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListIdentityMappingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_identity_mapping_store_identity_mappings(identity_mapping_store, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+identityMappingStore}:listIdentityMappings', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListIdentityMappingsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListIdentityMappingsResponse
          command.params['identityMappingStore'] = identity_mapping_store unless identity_mapping_store.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Purges specified or all Identity Mapping Entries from an Identity Mapping
        # Store.
        # @param [String] identity_mapping_store
        #   Required. The name of the Identity Mapping Store to purge Identity Mapping
        #   Entries from. Format: `projects/`project`/locations/`location`/
        #   identityMappingStores/`identityMappingStore``
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaPurgeIdentityMappingsRequest] google_cloud_discoveryengine_v1beta_purge_identity_mappings_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def purge_project_location_identity_mapping_store_identity_mappings(identity_mapping_store, google_cloud_discoveryengine_v1beta_purge_identity_mappings_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+identityMappingStore}:purgeIdentityMappings', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaPurgeIdentityMappingsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_purge_identity_mappings_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['identityMappingStore'] = identity_mapping_store unless identity_mapping_store.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_identity_mapping_store_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_identity_mapping_store_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a LicenseConfig
        # @param [String] parent
        #   Required. The parent resource name, such as `projects/`project`/locations/`
        #   location``.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaLicenseConfig] google_cloud_discoveryengine_v1beta_license_config_object
        # @param [String] license_config_id
        #   Optional. The ID to use for the LicenseConfig, which will become the final
        #   component of the LicenseConfig's resource name. We are using the tier (product
        #   edition) name as the license config id such as `search` or `
        #   search_and_assistant`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaLicenseConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaLicenseConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_license_config(parent, google_cloud_discoveryengine_v1beta_license_config_object = nil, license_config_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/licenseConfigs', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaLicenseConfig::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_license_config_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaLicenseConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaLicenseConfig
          command.params['parent'] = parent unless parent.nil?
          command.query['licenseConfigId'] = license_config_id unless license_config_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a LicenseConfig.
        # @param [String] name
        #   Required. Full resource name of LicenseConfig, such as `projects/`project`/
        #   locations/`location`/licenseConfigs/*`. If the caller does not have permission
        #   to access the LicenseConfig, regardless of whether or not it exists, a
        #   PERMISSION_DENIED error is returned. If the requested LicenseConfig does not
        #   exist, a NOT_FOUND error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaLicenseConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaLicenseConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_license_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaLicenseConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaLicenseConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the LicenseConfig
        # @param [String] name
        #   Immutable. Identifier. The fully qualified resource name of the license config.
        #   Format: `projects/`project`/locations/`location`/licenseConfigs/`
        #   license_config``
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaLicenseConfig] google_cloud_discoveryengine_v1beta_license_config_object
        # @param [String] update_mask
        #   Optional. Indicates which fields in the provided LicenseConfig to update. If
        #   an unsupported or unknown field is provided, an INVALID_ARGUMENT error is
        #   returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaLicenseConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaLicenseConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_license_config(name, google_cloud_discoveryengine_v1beta_license_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaLicenseConfig::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_license_config_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaLicenseConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaLicenseConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_podcast_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Ranks a list of text records based on the given input query.
        # @param [String] ranking_config
        #   Required. The resource name of the rank service config, such as `projects/`
        #   project_num`/locations/`location`/rankingConfigs/default_ranking_config`.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRankRequest] google_cloud_discoveryengine_v1beta_rank_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRankResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRankResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def rank_project_location_ranking_config(ranking_config, google_cloud_discoveryengine_v1beta_rank_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+rankingConfig}:rank', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRankRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_rank_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRankResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRankResponse
          command.params['rankingConfig'] = ranking_config unless ranking_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a SampleQuerySet
        # @param [String] parent
        #   Required. The parent resource name, such as `projects/`project`/locations/`
        #   location``.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuerySet] google_cloud_discoveryengine_v1beta_sample_query_set_object
        # @param [String] sample_query_set_id
        #   Required. The ID to use for the SampleQuerySet, which will become the final
        #   component of the SampleQuerySet.name. If the caller does not have permission
        #   to create the SampleQuerySet, regardless of whether or not it exists, a `
        #   PERMISSION_DENIED` error is returned. This field must be unique among all
        #   SampleQuerySets with the same parent. Otherwise, an `ALREADY_EXISTS` error is
        #   returned. This field must conform to [RFC-1034](https://tools.ietf.org/html/
        #   rfc1034) standard with a length limit of 63 characters. Otherwise, an `
        #   INVALID_ARGUMENT` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuerySet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuerySet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_sample_query_set(parent, google_cloud_discoveryengine_v1beta_sample_query_set_object = nil, sample_query_set_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/sampleQuerySets', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuerySet::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_sample_query_set_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuerySet::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuerySet
          command.params['parent'] = parent unless parent.nil?
          command.query['sampleQuerySetId'] = sample_query_set_id unless sample_query_set_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a SampleQuerySet.
        # @param [String] name
        #   Required. Full resource name of SampleQuerySet, such as `projects/`project`/
        #   locations/`location`/sampleQuerySets/`sample_query_set``. If the caller does
        #   not have permission to delete the SampleQuerySet, regardless of whether or not
        #   it exists, a `PERMISSION_DENIED` error is returned. If the SampleQuerySet to
        #   delete does not exist, a `NOT_FOUND` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_sample_query_set(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a SampleQuerySet.
        # @param [String] name
        #   Required. Full resource name of SampleQuerySet, such as `projects/`project`/
        #   locations/`location`/sampleQuerySets/`sample_query_set``. If the caller does
        #   not have permission to access the SampleQuerySet, regardless of whether or not
        #   it exists, a PERMISSION_DENIED error is returned. If the requested
        #   SampleQuerySet does not exist, a NOT_FOUND error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuerySet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuerySet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_sample_query_set(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuerySet::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuerySet
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of SampleQuerySets.
        # @param [String] parent
        #   Required. The parent location resource name, such as `projects/`project`/
        #   locations/`location``. If the caller does not have permission to list
        #   SampleQuerySets under this location, regardless of whether or not this
        #   location exists, a `PERMISSION_DENIED` error is returned.
        # @param [Fixnum] page_size
        #   Maximum number of SampleQuerySets to return. If unspecified, defaults to 100.
        #   The maximum allowed value is 1000. Values above 1000 will be coerced to 1000.
        #   If this field is negative, an `INVALID_ARGUMENT` error is returned.
        # @param [String] page_token
        #   A page token ListSampleQuerySetsResponse.next_page_token, received from a
        #   previous SampleQuerySetService.ListSampleQuerySets call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to SampleQuerySetService.ListSampleQuerySets must match the call that provided
        #   the page token. Otherwise, an `INVALID_ARGUMENT` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListSampleQuerySetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListSampleQuerySetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_sample_query_sets(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/sampleQuerySets', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListSampleQuerySetsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListSampleQuerySetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a SampleQuerySet.
        # @param [String] name
        #   Identifier. The full resource name of the SampleQuerySet, in the format of `
        #   projects/`project`/locations/`location`/sampleQuerySets/`sample_query_set``.
        #   This field must be a UTF-8 encoded string with a length limit of 1024
        #   characters.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuerySet] google_cloud_discoveryengine_v1beta_sample_query_set_object
        # @param [String] update_mask
        #   Indicates which fields in the provided imported 'sample query set' to update.
        #   If not set, will by default update all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuerySet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuerySet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_sample_query_set(name, google_cloud_discoveryengine_v1beta_sample_query_set_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuerySet::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_sample_query_set_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuerySet::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuerySet
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_sample_query_set_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a SampleQuery
        # @param [String] parent
        #   Required. The parent resource name, such as `projects/`project`/locations/`
        #   location`/sampleQuerySets/`sampleQuerySet``.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuery] google_cloud_discoveryengine_v1beta_sample_query_object
        # @param [String] sample_query_id
        #   Required. The ID to use for the SampleQuery, which will become the final
        #   component of the SampleQuery.name. If the caller does not have permission to
        #   create the SampleQuery, regardless of whether or not it exists, a `
        #   PERMISSION_DENIED` error is returned. This field must be unique among all
        #   SampleQuerys with the same parent. Otherwise, an `ALREADY_EXISTS` error is
        #   returned. This field must conform to [RFC-1034](https://tools.ietf.org/html/
        #   rfc1034) standard with a length limit of 63 characters. Otherwise, an `
        #   INVALID_ARGUMENT` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuery] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuery]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_sample_query_set_sample_query(parent, google_cloud_discoveryengine_v1beta_sample_query_object = nil, sample_query_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/sampleQueries', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuery::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_sample_query_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuery::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuery
          command.params['parent'] = parent unless parent.nil?
          command.query['sampleQueryId'] = sample_query_id unless sample_query_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a SampleQuery.
        # @param [String] name
        #   Required. Full resource name of SampleQuery, such as `projects/`project`/
        #   locations/`location`/sampleQuerySets/`sample_query_set`/sampleQueries/`
        #   sample_query``. If the caller does not have permission to delete the
        #   SampleQuery, regardless of whether or not it exists, a `PERMISSION_DENIED`
        #   error is returned. If the SampleQuery to delete does not exist, a `NOT_FOUND`
        #   error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_sample_query_set_sample_query(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a SampleQuery.
        # @param [String] name
        #   Required. Full resource name of SampleQuery, such as `projects/`project`/
        #   locations/`location`/sampleQuerySets/`sample_query_set`/sampleQueries/`
        #   sample_query``. If the caller does not have permission to access the
        #   SampleQuery, regardless of whether or not it exists, a PERMISSION_DENIED error
        #   is returned. If the requested SampleQuery does not exist, a NOT_FOUND error is
        #   returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuery] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuery]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_sample_query_set_sample_query(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuery::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuery
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Bulk import of multiple SampleQuerys. Sample queries that already exist may be
        # deleted. Note: It is possible for a subset of the SampleQuerys to be
        # successfully imported.
        # @param [String] parent
        #   Required. The parent sample query set resource name, such as `projects/`
        #   project`/locations/`location`/sampleQuerySets/`sampleQuerySet``. If the caller
        #   does not have permission to list SampleQuerys under this sample query set,
        #   regardless of whether or not this sample query set exists, a `
        #   PERMISSION_DENIED` error is returned.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportSampleQueriesRequest] google_cloud_discoveryengine_v1beta_import_sample_queries_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_sample_query_set_sample_query(parent, google_cloud_discoveryengine_v1beta_import_sample_queries_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/sampleQueries:import', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportSampleQueriesRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_import_sample_queries_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of SampleQuerys.
        # @param [String] parent
        #   Required. The parent sample query set resource name, such as `projects/`
        #   project`/locations/`location`/sampleQuerySets/`sampleQuerySet``. If the caller
        #   does not have permission to list SampleQuerys under this sample query set,
        #   regardless of whether or not this sample query set exists, a `
        #   PERMISSION_DENIED` error is returned.
        # @param [Fixnum] page_size
        #   Maximum number of SampleQuerys to return. If unspecified, defaults to 100. The
        #   maximum allowed value is 1000. Values above 1000 will be coerced to 1000. If
        #   this field is negative, an `INVALID_ARGUMENT` error is returned.
        # @param [String] page_token
        #   A page token ListSampleQueriesResponse.next_page_token, received from a
        #   previous SampleQueryService.ListSampleQueries call. Provide this to retrieve
        #   the subsequent page. When paginating, all other parameters provided to
        #   SampleQueryService.ListSampleQueries must match the call that provided the
        #   page token. Otherwise, an `INVALID_ARGUMENT` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListSampleQueriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListSampleQueriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_sample_query_set_sample_queries(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/sampleQueries', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListSampleQueriesResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListSampleQueriesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a SampleQuery.
        # @param [String] name
        #   Identifier. The full resource name of the sample query, in the format of `
        #   projects/`project`/locations/`location`/sampleQuerySets/`sample_query_set`/
        #   sampleQueries/`sample_query``. This field must be a UTF-8 encoded string with
        #   a length limit of 1024 characters.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuery] google_cloud_discoveryengine_v1beta_sample_query_object
        # @param [String] update_mask
        #   Indicates which fields in the provided imported 'simple query' to update. If
        #   not set, will by default update all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuery] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuery]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_sample_query_set_sample_query(name, google_cloud_discoveryengine_v1beta_sample_query_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuery::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_sample_query_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuery::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSampleQuery
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Writes a single user event from the browser. This uses a GET request to due to
        # browser restriction of POST-ing to a third-party domain. This method is used
        # only by the Discovery Engine API JavaScript pixel and Google Tag Manager.
        # Users should not call this method directly.
        # @param [String] parent
        #   Required. The parent resource name. If the collect user event action is
        #   applied in DataStore level, the format is: `projects/`project`/locations/`
        #   location`/collections/`collection`/dataStores/`data_store``. If the collect
        #   user event action is applied in Location level, for example, the event with
        #   Document across multiple DataStore, the format is: `projects/`project`/
        #   locations/`location``.
        # @param [Fixnum] ets
        #   The event timestamp in milliseconds. This prevents browser caching of
        #   otherwise identical get requests. The name is abbreviated to reduce the
        #   payload bytes.
        # @param [String] uri
        #   The URL including cgi-parameters but excluding the hash fragment with a length
        #   limit of 5,000 characters. This is often more useful than the referer URL,
        #   because many browsers only send the domain for third-party requests.
        # @param [String] user_event
        #   Required. URL encoded UserEvent proto with a length limit of 2,000,000
        #   characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleApiHttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleApiHttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def collect_project_location_user_event(parent, ets: nil, uri: nil, user_event: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/userEvents:collect', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleApiHttpBody::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleApiHttpBody
          command.params['parent'] = parent unless parent.nil?
          command.query['ets'] = ets unless ets.nil?
          command.query['uri'] = uri unless uri.nil?
          command.query['userEvent'] = user_event unless user_event.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Bulk import of user events. Request processing might be synchronous. Events
        # that already exist are skipped. Use this method for backfilling historical
        # user events. Operation.response is of type ImportResponse. Note that it is
        # possible for a subset of the items to be successfully inserted. Operation.
        # metadata is of type ImportMetadata.
        # @param [String] parent
        #   Required. Parent DataStore resource name, of the form `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store``
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportUserEventsRequest] google_cloud_discoveryengine_v1beta_import_user_events_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_user_event(parent, google_cloud_discoveryengine_v1beta_import_user_events_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/userEvents:import', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportUserEventsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_import_user_events_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Writes a single user event.
        # @param [String] parent
        #   Required. The parent resource name. If the write user event action is applied
        #   in DataStore level, the format is: `projects/`project`/locations/`location`/
        #   collections/`collection`/dataStores/`data_store``. If the write user event
        #   action is applied in Location level, for example, the event with Document
        #   across multiple DataStore, the format is: `projects/`project`/locations/`
        #   location``.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserEvent] google_cloud_discoveryengine_v1beta_user_event_object
        # @param [Boolean] write_async
        #   If set to true, the user event is written asynchronously after validation, and
        #   the API responds without waiting for the write.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserEvent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserEvent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def write_project_location_user_event(parent, google_cloud_discoveryengine_v1beta_user_event_object = nil, write_async: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/userEvents:write', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserEvent::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_user_event_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserEvent::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserEvent
          command.params['parent'] = parent unless parent.nil?
          command.query['writeAsync'] = write_async unless write_async.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the User License. This method is used for batch assign/unassign
        # licenses to users.
        # @param [String] parent
        #   Required. The parent UserStore resource name, format: `projects/`project`/
        #   locations/`location`/userStores/`user_store_id``.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBatchUpdateUserLicensesRequest] google_cloud_discoveryengine_v1beta_batch_update_user_licenses_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_user_store_update_user_licenses(parent, google_cloud_discoveryengine_v1beta_batch_update_user_licenses_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}:batchUpdateUserLicenses', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBatchUpdateUserLicensesRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_batch_update_user_licenses_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new User Store.
        # @param [String] parent
        #   Required. The parent collection resource name, such as `projects/`project`/
        #   locations/`location``.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserStore] google_cloud_discoveryengine_v1beta_user_store_object
        # @param [String] user_store_id
        #   Required. The ID of the User Store to create. The ID must contain only letters
        #   (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum
        #   length is 63 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_user_store(parent, google_cloud_discoveryengine_v1beta_user_store_object = nil, user_store_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/userStores', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserStore::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_user_store_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserStore::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserStore
          command.params['parent'] = parent unless parent.nil?
          command.query['userStoreId'] = user_store_id unless user_store_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the User Store.
        # @param [String] name
        #   Required. The name of the User Store to delete. Format: `projects/`project`/
        #   locations/`location`/userStores/`user_store_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_user_store(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the User Store.
        # @param [String] name
        #   Required. The name of the User Store to get. Format: `projects/`project`/
        #   locations/`location`/userStores/`user_store_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_user_store(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserStore::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserStore
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the User Store.
        # @param [String] name
        #   Immutable. The full resource name of the User Store, in the format of `
        #   projects/`project`/locations/`location`/userStores/`user_store``. This field
        #   must be a UTF-8 encoded string with a length limit of 1024 characters.
        # @param [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserStore] google_cloud_discoveryengine_v1beta_user_store_object
        # @param [String] update_mask
        #   Optional. The list of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_user_store(name, google_cloud_discoveryengine_v1beta_user_store_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserStore::Representation
          command.request_object = google_cloud_discoveryengine_v1beta_user_store_object
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserStore::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserStore
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the LicenseConfigUsageStatss associated with the project.
        # @param [String] parent
        #   Required. The parent branch resource name, such as `projects/`project`/
        #   locations/`location`/userStores/`user_store_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListLicenseConfigsUsageStatsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListLicenseConfigsUsageStatsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_user_store_license_configs_usage_stats(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/licenseConfigsUsageStats', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListLicenseConfigsUsageStatsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListLicenseConfigsUsageStatsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the User Licenses.
        # @param [String] parent
        #   Required. The parent UserStore resource name, format: `projects/`project`/
        #   locations/`location`/userStores/`user_store_id``.
        # @param [String] order_by
        #   Optional. The order in which the UserLicenses are listed. The value must be a
        #   comma-separated list of fields. Default sorting order is ascending. To specify
        #   descending order for a field, append a " desc" suffix. Redundant space
        #   characters in the syntax are insignificant. Supported fields: * `
        #   license_assignment_state` * `user_principal` * `user_profile` * `
        #   last_login_date` * `update_time` If not set, the default ordering is by `
        #   user_principal`. Examples: * `user_principal desc` to order by `user_principal`
        #   in descending order. * `license_assignment_state` to order by `
        #   license_assignment_state` in ascending order. * `last_login_date desc` to
        #   order by `last_login_date` in descending order. * `update_time desc` to order
        #   by `update_time` in descending order. * `last_login_date desc, user_principal`
        #   to order by `last_login_date` in descending order and then by `user_principal`
        #   in ascending order.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer items than requested.
        #   If unspecified, defaults to 10. The maximum value is 50; values above 50 will
        #   be coerced to 50. If this field is negative, an INVALID_ARGUMENT error is
        #   returned.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListUserLicenses` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListUserLicenses` must match the call that provided
        #   the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListUserLicensesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListUserLicensesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_user_store_user_licenses(parent, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/userLicenses', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListUserLicensesResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaListUserLicensesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1beta::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
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
