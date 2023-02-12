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
    module BeyondcorpV1alpha
      # BeyondCorp API
      #
      # Beyondcorp Enterprise provides identity and context aware access controls for
      #  enterprise resources and enables zero-trust access. Using the Beyondcorp
      #  Enterprise APIs, enterprises can set up multi-cloud and on-prem connectivity
      #  solutions.
      #
      # @example
      #    require 'google/apis/beyondcorp_v1alpha'
      #
      #    Beyondcorp = Google::Apis::BeyondcorpV1alpha # Alias the module
      #    service = Beyondcorp::BeyondCorpService.new
      #
      # @see https://cloud.google.com/
      class BeyondCorpService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://beyondcorp.googleapis.com/', '',
                client_name: 'google-apis-beyondcorp_v1alpha',
                client_version: Google::Apis::BeyondcorpV1alpha::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Gets the value for a selected particular insight based on the provided filters.
        # Use the organization level path for fetching at org level and project level
        # path for fetching the insight value specific to a particular project.
        # @param [String] insight
        #   Required. The resource name of the insight using the form: `organizations/`
        #   organization_id`/locations/`location_id`/insights/`insight_id`` `projects/`
        #   project_id`/locations/`location_id`/insights/`insight_id``.
        # @param [String] aggregation
        #   Required. Aggregation type. Available aggregation could be fetched by calling
        #   insight list and get APIs in `BASIC` view.
        # @param [String] custom_grouping_field_filter
        #   Optional. Filterable parameters to be added to the grouping clause. Available
        #   fields could be fetched by calling insight list and get APIs in `BASIC` view. `
        #   =` is the only comparison operator supported. `AND` is the only logical
        #   operator supported. Usage: field_filter="fieldName1=fieldVal1 AND fieldName2=
        #   fieldVal2". NOTE: Only `AND` conditions are allowed. NOTE: Use the `
        #   filter_alias` from `Insight.Metadata.Field` message for the filtering the
        #   corresponding fields in this filter field. (These expressions are based on the
        #   filter language described at https://google.aip.dev/160).
        # @param [Array<String>, String] custom_grouping_group_fields
        #   Required. Fields to be used for grouping. NOTE: Use the `filter_alias` from `
        #   Insight.Metadata.Field` message for declaring the fields to be grouped-by here.
        # @param [String] end_time
        #   Required. Ending time for the duration for which insight is to be pulled.
        # @param [String] field_filter
        #   Optional. Other filterable/configurable parameters as applicable to the
        #   selected insight. Available fields could be fetched by calling insight list
        #   and get APIs in `BASIC` view. `=` is the only comparison operator supported. `
        #   AND` is the only logical operator supported. Usage: field_filter="fieldName1=
        #   fieldVal1 AND fieldName2=fieldVal2". NOTE: Only `AND` conditions are allowed.
        #   NOTE: Use the `filter_alias` from `Insight.Metadata.Field` message for the
        #   filtering the corresponding fields in this filter field. (These expressions
        #   are based on the filter language described at https://google.aip.dev/160).
        # @param [String] group
        #   Optional. Group id of the available groupings for the insight. Available
        #   groupings could be fetched by calling insight list and get APIs in `BASIC`
        #   view.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer items than requested.
        #   If unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   Optional. Used to fetch the page represented by the token. Fetches the first
        #   page when not set.
        # @param [String] start_time
        #   Required. Starting time for the duration for which insight is to be pulled.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def configured_organization_location_insight_insight(insight, aggregation: nil, custom_grouping_field_filter: nil, custom_grouping_group_fields: nil, end_time: nil, field_filter: nil, group: nil, page_size: nil, page_token: nil, start_time: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+insight}:configuredInsight', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse
          command.params['insight'] = insight unless insight.nil?
          command.query['aggregation'] = aggregation unless aggregation.nil?
          command.query['customGrouping.fieldFilter'] = custom_grouping_field_filter unless custom_grouping_field_filter.nil?
          command.query['customGrouping.groupFields'] = custom_grouping_group_fields unless custom_grouping_group_fields.nil?
          command.query['endTime'] = end_time unless end_time.nil?
          command.query['fieldFilter'] = field_filter unless field_filter.nil?
          command.query['group'] = group unless group.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['startTime'] = start_time unless start_time.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the value for a selected particular insight with default configuration.
        # The default aggregation level is 'DAILY' and no grouping will be applied or
        # default grouping if applicable. The data will be returned for recent 7 days
        # starting the day before. The insight data size will be limited to 50 rows. Use
        # the organization level path for fetching at org level and project level path
        # for fetching the insight value specific to a particular project. Setting the `
        # view` to `BASIC` will only return the metadata for the insight.
        # @param [String] name
        #   Required. The resource name of the insight using the form: `organizations/`
        #   organization_id`/locations/`location_id`/insights/`insight_id`` `projects/`
        #   project_id`/locations/`location_id`/insights/`insight_id``
        # @param [String] view
        #   Required. Metadata only or full data view.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_insight(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists for all the available insights that could be fetched from the system.
        # Allows to filter using category. Setting the `view` to `BASIC` will let you
        # iterate over the list of insight metadatas.
        # @param [String] parent
        #   Required. The resource name of InsightMetadata using the form: `organizations/`
        #   organization_id`/locations/`location`` `projects/`project_id`/locations/`
        #   location_id``
        # @param [String] filter
        #   Optional. Filter expression to restrict the insights returned. Supported
        #   filter fields: * `type` * `category` * `subCategory` Examples: * "category =
        #   application AND type = count" * "category = application AND subCategory = iap"
        #   * "type = status" Allowed values: * type: [count, latency, status, list] *
        #   category: [application, device, request, security] * subCategory: [iap,
        #   webprotect] NOTE: Only equality based comparison is allowed. Only `AND`
        #   conjunction is allowed. NOTE: The 'AND' in the filter field needs to be in
        #   capital letters only. NOTE: Just filtering on `subCategory` is not allowed. It
        #   should be passed in with the parent `category` too. (These expressions are
        #   based on the filter language described at https://google.aip.dev/160).
        # @param [String] order_by
        #   Optional. Hint for how to order the results. This is currently ignored.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer items than requested.
        #   If unspecified, server will pick an appropriate default. NOTE: Default page
        #   size is 50.
        # @param [String] page_token
        #   Optional. A token identifying a page of results the server should return.
        # @param [String] view
        #   Required. List only metadata or full data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_insights(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/insights', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new BeyondCorp Enterprise Subscription in a given organization.
        # Location will always be global as BeyondCorp subscriptions are per
        # organization.
        # @param [String] parent
        #   Required. The resource name of the subscription location using the form: `
        #   organizations/`organization_id`/locations/`location``
        # @param [Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription] google_cloud_beyondcorp_saasplatform_subscriptions_v1alpha_subscription_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_location_subscription(parent, google_cloud_beyondcorp_saasplatform_subscriptions_v1alpha_subscription_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/subscriptions', options)
          command.request_representation = Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription::Representation
          command.request_object = google_cloud_beyondcorp_saasplatform_subscriptions_v1alpha_subscription_object
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single Subscription.
        # @param [String] name
        #   Required. The resource name of Subscription using the form: `organizations/`
        #   organization_id`/locations/`location`/subscriptions/`subscription_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_subscription(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Subscriptions in a given organization and location.
        # @param [String] parent
        #   Required. The resource name of Subscription using the form: `organizations/`
        #   organization_id`/locations/`location``
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. If not specified, a default
        #   value of 50 will be used by the service. Regardless of the page_size value,
        #   the response may include a partial list and a caller should only rely on
        #   response's next_page_token to determine if there are more instances left to be
        #   queried.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous
        #   ListSubscriptionsRequest, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaListSubscriptionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaListSubscriptionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_subscriptions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/subscriptions', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaListSubscriptionsResponse::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaListSubscriptionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about a location.
        # @param [String] name
        #   Resource name for the location.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleCloudLocationLocation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleCloudLocationLocation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleCloudLocationLocation::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleCloudLocationLocation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists information about the supported locations for this service.
        # @param [String] name
        #   The resource that owns the locations collection, if applicable.
        # @param [String] filter
        #   A filter to narrow down results to a preferred subset. The filtering language
        #   accepts strings like `"displayName=tokyo"`, and is documented in more detail
        #   in [AIP-160](https://google.aip.dev/160).
        # @param [Fixnum] page_size
        #   The maximum number of results to return. If not set, the service selects a
        #   default.
        # @param [String] page_token
        #   A page token received from the `next_page_token` field in the response. Send
        #   that page token to receive the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleCloudLocationListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleCloudLocationListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}/locations', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleCloudLocationListLocationsResponse::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleCloudLocationListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new AppConnection in a given project and location.
        # @param [String] parent
        #   Required. The resource project name of the AppConnection location using the
        #   form: `projects/`project_id`/locations/`location_id``
        # @param [Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection] google_cloud_beyondcorp_appconnections_v1alpha_app_connection_object
        # @param [String] app_connection_id
        #   Optional. User-settable AppConnection resource ID. * Must start with a letter.
        #   * Must contain between 4-63 characters from `/a-z-/`. * Must end with a number
        #   or a letter.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes since the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [Boolean] validate_only
        #   Optional. If set, validates request by executing a dry-run which would not
        #   alter the resource in any way.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_app_connection(parent, google_cloud_beyondcorp_appconnections_v1alpha_app_connection_object = nil, app_connection_id: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/appConnections', options)
          command.request_representation = Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection::Representation
          command.request_object = google_cloud_beyondcorp_appconnections_v1alpha_app_connection_object
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['appConnectionId'] = app_connection_id unless app_connection_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single AppConnection.
        # @param [String] name
        #   Required. BeyondCorp Connector name using the form: `projects/`project_id`/
        #   locations/`location_id`/appConnections/`app_connection_id``
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes after the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [Boolean] validate_only
        #   Optional. If set, validates request by executing a dry-run which would not
        #   alter the resource in any way.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_app_connection(name, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single AppConnection.
        # @param [String] name
        #   Required. BeyondCorp AppConnection name using the form: `projects/`project_id`/
        #   locations/`location_id`/appConnections/`app_connection_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_app_connection(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The maximum policy version that will be used to format the policy.
        #   Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        #   rejected. Requests for policies with any conditional role bindings must
        #   specify version 3. Policies with no conditional role bindings may specify any
        #   valid value or leave the field unset. The policy in the response might use the
        #   policy version that you specified, or it might use a lower policy version. For
        #   example, if you specify version 3, but the policy has no conditional role
        #   bindings, the response uses version 1. To learn which resources support
        #   conditions in their IAM policies, see the [IAM documentation](https://cloud.
        #   google.com/iam/help/conditions/resource-policies).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_app_connection_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists AppConnections in a given project and location.
        # @param [String] parent
        #   Required. The resource name of the AppConnection location using the form: `
        #   projects/`project_id`/locations/`location_id``
        # @param [String] filter
        #   Optional. A filter specifying constraints of a list operation.
        # @param [String] order_by
        #   Optional. Specifies the ordering of results. See [Sorting order](https://cloud.
        #   google.com/apis/design/design_patterns#sorting_order) for more information.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. If not specified, a default
        #   value of 50 will be used by the service. Regardless of the page_size value,
        #   the response may include a partial list and a caller should only rely on
        #   response's next_page_token to determine if there are more instances left to be
        #   queried.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous
        #   ListAppConnectionsRequest, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectionsV1alphaListAppConnectionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectionsV1alphaListAppConnectionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_app_connections(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/appConnections', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectionsV1alphaListAppConnectionsResponse::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectionsV1alphaListAppConnectionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single AppConnection.
        # @param [String] name
        #   Required. Unique resource name of the AppConnection. The name is ignored when
        #   creating a AppConnection.
        # @param [Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection] google_cloud_beyondcorp_appconnections_v1alpha_app_connection_object
        # @param [Boolean] allow_missing
        #   Optional. If set as true, will create the resource if it is not found.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes since the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] update_mask
        #   Required. Mask of fields to update. At least one path must be supplied in this
        #   field. The elements of the repeated paths field may only include these fields
        #   from [BeyondCorp.AppConnection]: * `labels` * `display_name` * `
        #   application_endpoint` * `connectors`
        # @param [Boolean] validate_only
        #   Optional. If set, validates request by executing a dry-run which would not
        #   alter the resource in any way.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_app_connection(name, google_cloud_beyondcorp_appconnections_v1alpha_app_connection_object = nil, allow_missing: nil, request_id: nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection::Representation
          command.request_object = google_cloud_beyondcorp_appconnections_v1alpha_app_connection_object
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Resolves AppConnections details for a given AppConnector. An internal method
        # called by a connector to find AppConnections to connect to.
        # @param [String] parent
        #   Required. The resource name of the AppConnection location using the form: `
        #   projects/`project_id`/locations/`location_id``
        # @param [String] app_connector_id
        #   Required. BeyondCorp Connector name of the connector associated with those
        #   AppConnections using the form: `projects/`project_id`/locations/`location_id`/
        #   appConnectors/`app_connector_id``
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. If not specified, a default
        #   value of 50 will be used by the service. Regardless of the page_size value,
        #   the response may include a partial list and a caller should only rely on
        #   response's next_page_token to determine if there are more instances left to be
        #   queried.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous
        #   ResolveAppConnectionsResponse, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def resolve_project_location_app_connection(parent, app_connector_id: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/appConnections:resolve', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponse::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['appConnectorId'] = app_connector_id unless app_connector_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `
        # PERMISSION_DENIED` errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BeyondcorpV1alpha::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_app_connection_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource. If the
        # resource does not exist, this will return an empty set of permissions, not a `
        # NOT_FOUND` error. Note: This operation is designed to be used for building
        # permission-aware UIs and command-line tools, not for authorization checking.
        # This operation may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_app_connection_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new AppConnector in a given project and location.
        # @param [String] parent
        #   Required. The resource project name of the AppConnector location using the
        #   form: `projects/`project_id`/locations/`location_id``
        # @param [Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector] google_cloud_beyondcorp_appconnectors_v1alpha_app_connector_object
        # @param [String] app_connector_id
        #   Optional. User-settable AppConnector resource ID. * Must start with a letter. *
        #   Must contain between 4-63 characters from `/a-z-/`. * Must end with a number
        #   or a letter.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes since the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [Boolean] validate_only
        #   Optional. If set, validates request by executing a dry-run which would not
        #   alter the resource in any way.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_app_connector(parent, google_cloud_beyondcorp_appconnectors_v1alpha_app_connector_object = nil, app_connector_id: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/appConnectors', options)
          command.request_representation = Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector::Representation
          command.request_object = google_cloud_beyondcorp_appconnectors_v1alpha_app_connector_object
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['appConnectorId'] = app_connector_id unless app_connector_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single AppConnector.
        # @param [String] name
        #   Required. BeyondCorp AppConnector name using the form: `projects/`project_id`/
        #   locations/`location_id`/appConnectors/`app_connector_id``
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes after the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [Boolean] validate_only
        #   Optional. If set, validates request by executing a dry-run which would not
        #   alter the resource in any way.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_app_connector(name, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single AppConnector.
        # @param [String] name
        #   Required. BeyondCorp AppConnector name using the form: `projects/`project_id`/
        #   locations/`location_id`/appConnectors/`app_connector_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_app_connector(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The maximum policy version that will be used to format the policy.
        #   Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        #   rejected. Requests for policies with any conditional role bindings must
        #   specify version 3. Policies with no conditional role bindings may specify any
        #   valid value or leave the field unset. The policy in the response might use the
        #   policy version that you specified, or it might use a lower policy version. For
        #   example, if you specify version 3, but the policy has no conditional role
        #   bindings, the response uses version 1. To learn which resources support
        #   conditions in their IAM policies, see the [IAM documentation](https://cloud.
        #   google.com/iam/help/conditions/resource-policies).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_app_connector_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists AppConnectors in a given project and location.
        # @param [String] parent
        #   Required. The resource name of the AppConnector location using the form: `
        #   projects/`project_id`/locations/`location_id``
        # @param [String] filter
        #   Optional. A filter specifying constraints of a list operation.
        # @param [String] order_by
        #   Optional. Specifies the ordering of results. See [Sorting order](https://cloud.
        #   google.com/apis/design/design_patterns#sorting_order) for more information.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. If not specified, a default
        #   value of 50 will be used by the service. Regardless of the page_size value,
        #   the response may include a partial list and a caller should only rely on
        #   response's next_page_token to determine if there are more instances left to be
        #   queried.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous
        #   ListAppConnectorsRequest, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaListAppConnectorsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaListAppConnectorsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_app_connectors(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/appConnectors', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaListAppConnectorsResponse::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaListAppConnectorsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single AppConnector.
        # @param [String] name
        #   Required. Unique resource name of the AppConnector. The name is ignored when
        #   creating a AppConnector.
        # @param [Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector] google_cloud_beyondcorp_appconnectors_v1alpha_app_connector_object
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes since the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] update_mask
        #   Required. Mask of fields to update. At least one path must be supplied in this
        #   field. The elements of the repeated paths field may only include these fields
        #   from [BeyondCorp.AppConnector]: * `labels` * `display_name`
        # @param [Boolean] validate_only
        #   Optional. If set, validates request by executing a dry-run which would not
        #   alter the resource in any way.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_app_connector(name, google_cloud_beyondcorp_appconnectors_v1alpha_app_connector_object = nil, request_id: nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector::Representation
          command.request_object = google_cloud_beyondcorp_appconnectors_v1alpha_app_connector_object
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Report status for a given connector.
        # @param [String] app_connector
        #   Required. BeyondCorp Connector name using the form: `projects/`project_id`/
        #   locations/`location_id`/connectors/`connector``
        # @param [Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaReportStatusRequest] google_cloud_beyondcorp_appconnectors_v1alpha_report_status_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def report_project_location_app_connector_status(app_connector, google_cloud_beyondcorp_appconnectors_v1alpha_report_status_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+appConnector}:reportStatus', options)
          command.request_representation = Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaReportStatusRequest::Representation
          command.request_object = google_cloud_beyondcorp_appconnectors_v1alpha_report_status_request_object
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation
          command.params['appConnector'] = app_connector unless app_connector.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets instance configuration for a given AppConnector. An internal method
        # called by a AppConnector to get its container config.
        # @param [String] app_connector
        #   Required. BeyondCorp AppConnector name using the form: `projects/`project_id`/
        #   locations/`location_id`/appConnectors/`app_connector``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaResolveInstanceConfigResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaResolveInstanceConfigResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def resolve_project_location_app_connector_instance_config(app_connector, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+appConnector}:resolveInstanceConfig', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaResolveInstanceConfigResponse::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpAppconnectorsV1alphaResolveInstanceConfigResponse
          command.params['appConnector'] = app_connector unless app_connector.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `
        # PERMISSION_DENIED` errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BeyondcorpV1alpha::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_app_connector_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource. If the
        # resource does not exist, this will return an empty set of permissions, not a `
        # NOT_FOUND` error. Note: This operation is designed to be used for building
        # permission-aware UIs and command-line tools, not for authorization checking.
        # This operation may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_app_connector_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new AppGateway in a given project and location.
        # @param [String] parent
        #   Required. The resource project name of the AppGateway location using the form:
        #   `projects/`project_id`/locations/`location_id``
        # @param [Google::Apis::BeyondcorpV1alpha::AppGateway] app_gateway_object
        # @param [String] app_gateway_id
        #   Optional. User-settable AppGateway resource ID. * Must start with a letter. *
        #   Must contain between 4-63 characters from `/a-z-/`. * Must end with a number
        #   or a letter.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes since the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [Boolean] validate_only
        #   Optional. If set, validates request by executing a dry-run which would not
        #   alter the resource in any way.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_app_gateway(parent, app_gateway_object = nil, app_gateway_id: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/appGateways', options)
          command.request_representation = Google::Apis::BeyondcorpV1alpha::AppGateway::Representation
          command.request_object = app_gateway_object
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['appGatewayId'] = app_gateway_id unless app_gateway_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single AppGateway.
        # @param [String] name
        #   Required. BeyondCorp AppGateway name using the form: `projects/`project_id`/
        #   locations/`location_id`/appGateways/`app_gateway_id``
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes after the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [Boolean] validate_only
        #   Optional. If set, validates request by executing a dry-run which would not
        #   alter the resource in any way.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_app_gateway(name, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single AppGateway.
        # @param [String] name
        #   Required. BeyondCorp AppGateway name using the form: `projects/`project_id`/
        #   locations/`location_id`/appGateways/`app_gateway_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::AppGateway] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::AppGateway]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_app_gateway(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::AppGateway::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::AppGateway
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The maximum policy version that will be used to format the policy.
        #   Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        #   rejected. Requests for policies with any conditional role bindings must
        #   specify version 3. Policies with no conditional role bindings may specify any
        #   valid value or leave the field unset. The policy in the response might use the
        #   policy version that you specified, or it might use a lower policy version. For
        #   example, if you specify version 3, but the policy has no conditional role
        #   bindings, the response uses version 1. To learn which resources support
        #   conditions in their IAM policies, see the [IAM documentation](https://cloud.
        #   google.com/iam/help/conditions/resource-policies).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_app_gateway_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists AppGateways in a given project and location.
        # @param [String] parent
        #   Required. The resource name of the AppGateway location using the form: `
        #   projects/`project_id`/locations/`location_id``
        # @param [String] filter
        #   Optional. A filter specifying constraints of a list operation.
        # @param [String] order_by
        #   Optional. Specifies the ordering of results. See [Sorting order](https://cloud.
        #   google.com/apis/design/design_patterns#sorting_order) for more information.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. If not specified, a default
        #   value of 50 will be used by the service. Regardless of the page_size value,
        #   the response may include a partial list and a caller should only rely on
        #   response's next_page_token to determine if there are more instances left to be
        #   queried.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous
        #   ListAppGatewaysRequest, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::ListAppGatewaysResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::ListAppGatewaysResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_app_gateways(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/appGateways', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::ListAppGatewaysResponse::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::ListAppGatewaysResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `
        # PERMISSION_DENIED` errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BeyondcorpV1alpha::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_app_gateway_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource. If the
        # resource does not exist, this will return an empty set of permissions, not a `
        # NOT_FOUND` error. Note: This operation is designed to be used for building
        # permission-aware UIs and command-line tools, not for authorization checking.
        # This operation may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_app_gateway_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The maximum policy version that will be used to format the policy.
        #   Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        #   rejected. Requests for policies with any conditional role bindings must
        #   specify version 3. Policies with no conditional role bindings may specify any
        #   valid value or leave the field unset. The policy in the response might use the
        #   policy version that you specified, or it might use a lower policy version. For
        #   example, if you specify version 3, but the policy has no conditional role
        #   bindings, the response uses version 1. To learn which resources support
        #   conditions in their IAM policies, see the [IAM documentation](https://cloud.
        #   google.com/iam/help/conditions/resource-policies).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_application_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `
        # PERMISSION_DENIED` errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BeyondcorpV1alpha::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_application_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource. If the
        # resource does not exist, this will return an empty set of permissions, not a `
        # NOT_FOUND` error. Note: This operation is designed to be used for building
        # permission-aware UIs and command-line tools, not for authorization checking.
        # This operation may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_application_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new ClientConnectorService in a given project and location.
        # @param [String] parent
        #   Required. Value for parent.
        # @param [Google::Apis::BeyondcorpV1alpha::ClientConnectorService] client_connector_service_object
        # @param [String] client_connector_service_id
        #   Optional. User-settable client connector service resource ID. * Must start
        #   with a letter. * Must contain between 4-63 characters from `/a-z-/`. * Must
        #   end with a number or a letter. A random system generated name will be assigned
        #   if not specified by the user.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes since the first request. For example, consider a
        #   situation where you make an initial request and t he request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [Boolean] validate_only
        #   Optional. If set, validates request by executing a dry-run which would not
        #   alter the resource in any way.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_client_connector_service(parent, client_connector_service_object = nil, client_connector_service_id: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/clientConnectorServices', options)
          command.request_representation = Google::Apis::BeyondcorpV1alpha::ClientConnectorService::Representation
          command.request_object = client_connector_service_object
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['clientConnectorServiceId'] = client_connector_service_id unless client_connector_service_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single ClientConnectorService.
        # @param [String] name
        #   Required. Name of the resource.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes after the first request. For example, consider a
        #   situation where you make an initial request and t he request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [Boolean] validate_only
        #   Optional. If set, validates request by executing a dry-run which would not
        #   alter the resource in any way.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_client_connector_service(name, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single ClientConnectorService.
        # @param [String] name
        #   Required. Name of the resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::ClientConnectorService] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::ClientConnectorService]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_client_connector_service(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::ClientConnectorService::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::ClientConnectorService
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The maximum policy version that will be used to format the policy.
        #   Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        #   rejected. Requests for policies with any conditional role bindings must
        #   specify version 3. Policies with no conditional role bindings may specify any
        #   valid value or leave the field unset. The policy in the response might use the
        #   policy version that you specified, or it might use a lower policy version. For
        #   example, if you specify version 3, but the policy has no conditional role
        #   bindings, the response uses version 1. To learn which resources support
        #   conditions in their IAM policies, see the [IAM documentation](https://cloud.
        #   google.com/iam/help/conditions/resource-policies).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_client_connector_service_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists ClientConnectorServices in a given project and location.
        # @param [String] parent
        #   Required. Parent value for ListClientConnectorServicesRequest.
        # @param [String] filter
        #   Optional. Filtering results.
        # @param [String] order_by
        #   Optional. Hint for how to order the results.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer items than requested.
        #   If unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   Optional. A token identifying a page of results the server should return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::ListClientConnectorServicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::ListClientConnectorServicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_client_connector_services(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/clientConnectorServices', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::ListClientConnectorServicesResponse::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::ListClientConnectorServicesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single ClientConnectorService.
        # @param [String] name
        #   Required. Name of resource. The name is ignored during creation.
        # @param [Google::Apis::BeyondcorpV1alpha::ClientConnectorService] client_connector_service_object
        # @param [Boolean] allow_missing
        #   Optional. If set as true, will create the resource if it is not found.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes since the first request. For example, consider a
        #   situation where you make an initial request and t he request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the
        #   ClientConnectorService resource by the update. The fields specified in the
        #   update_mask are relative to the resource, not the full request. A field will
        #   be overwritten if it is in the mask. If the user does not provide a mask then
        #   all fields will be overwritten. Mutable fields: display_name, ingress.config.
        #   destination_routes.
        # @param [Boolean] validate_only
        #   Optional. If set, validates request by executing a dry-run which would not
        #   alter the resource in any way.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_client_connector_service(name, client_connector_service_object = nil, allow_missing: nil, request_id: nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::BeyondcorpV1alpha::ClientConnectorService::Representation
          command.request_object = client_connector_service_object
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `
        # PERMISSION_DENIED` errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BeyondcorpV1alpha::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_client_connector_service_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource. If the
        # resource does not exist, this will return an empty set of permissions, not a `
        # NOT_FOUND` error. Note: This operation is designed to be used for building
        # permission-aware UIs and command-line tools, not for authorization checking.
        # This operation may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_client_connector_service_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new ClientGateway in a given project and location.
        # @param [String] parent
        #   Required. Value for parent.
        # @param [Google::Apis::BeyondcorpV1alpha::ClientGateway] client_gateway_object
        # @param [String] client_gateway_id
        #   Optional. User-settable client gateway resource ID. * Must start with a letter.
        #   * Must contain between 4-63 characters from `/a-z-/`. * Must end with a
        #   number or a letter.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes since the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [Boolean] validate_only
        #   Optional. If set, validates request by executing a dry-run which would not
        #   alter the resource in any way.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_client_gateway(parent, client_gateway_object = nil, client_gateway_id: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/clientGateways', options)
          command.request_representation = Google::Apis::BeyondcorpV1alpha::ClientGateway::Representation
          command.request_object = client_gateway_object
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['clientGatewayId'] = client_gateway_id unless client_gateway_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single ClientGateway.
        # @param [String] name
        #   Required. Name of the resource
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes after the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [Boolean] validate_only
        #   Optional. If set, validates request by executing a dry-run which would not
        #   alter the resource in any way.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_client_gateway(name, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single ClientGateway.
        # @param [String] name
        #   Required. Name of the resource
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::ClientGateway] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::ClientGateway]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_client_gateway(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::ClientGateway::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::ClientGateway
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The maximum policy version that will be used to format the policy.
        #   Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        #   rejected. Requests for policies with any conditional role bindings must
        #   specify version 3. Policies with no conditional role bindings may specify any
        #   valid value or leave the field unset. The policy in the response might use the
        #   policy version that you specified, or it might use a lower policy version. For
        #   example, if you specify version 3, but the policy has no conditional role
        #   bindings, the response uses version 1. To learn which resources support
        #   conditions in their IAM policies, see the [IAM documentation](https://cloud.
        #   google.com/iam/help/conditions/resource-policies).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_client_gateway_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists ClientGateways in a given project and location.
        # @param [String] parent
        #   Required. Parent value for ListClientGatewaysRequest.
        # @param [String] filter
        #   Optional. Filtering results.
        # @param [String] order_by
        #   Optional. Hint for how to order the results.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer items than requested.
        #   If unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   Optional. A token identifying a page of results the server should return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::ListClientGatewaysResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::ListClientGatewaysResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_client_gateways(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/clientGateways', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::ListClientGatewaysResponse::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::ListClientGatewaysResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `
        # PERMISSION_DENIED` errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BeyondcorpV1alpha::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_client_gateway_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource. If the
        # resource does not exist, this will return an empty set of permissions, not a `
        # NOT_FOUND` error. Note: This operation is designed to be used for building
        # permission-aware UIs and command-line tools, not for authorization checking.
        # This operation may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_client_gateway_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Connection in a given project and location.
        # @param [String] parent
        #   Required. The resource project name of the connection location using the form:
        #   `projects/`project_id`/locations/`location_id``
        # @param [Google::Apis::BeyondcorpV1alpha::Connection] connection_object
        # @param [String] connection_id
        #   Optional. User-settable connection resource ID. * Must start with a letter. *
        #   Must contain between 4-63 characters from `/a-z-/`. * Must end with a number
        #   or a letter.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes since the first request. For example, consider a
        #   situation where you make an initial request and t he request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [Boolean] validate_only
        #   Optional. If set, validates request by executing a dry-run which would not
        #   alter the resource in any way.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_connection(parent, connection_object = nil, connection_id: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/connections', options)
          command.request_representation = Google::Apis::BeyondcorpV1alpha::Connection::Representation
          command.request_object = connection_object
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['connectionId'] = connection_id unless connection_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single Connection.
        # @param [String] name
        #   Required. BeyondCorp Connector name using the form: `projects/`project_id`/
        #   locations/`location_id`/connections/`connection_id``
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes after the first request. For example, consider a
        #   situation where you make an initial request and t he request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [Boolean] validate_only
        #   Optional. If set, validates request by executing a dry-run which would not
        #   alter the resource in any way.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_connection(name, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single Connection.
        # @param [String] name
        #   Required. BeyondCorp Connection name using the form: `projects/`project_id`/
        #   locations/`location_id`/connections/`connection_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::Connection] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::Connection]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_connection(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::Connection::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::Connection
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The maximum policy version that will be used to format the policy.
        #   Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        #   rejected. Requests for policies with any conditional role bindings must
        #   specify version 3. Policies with no conditional role bindings may specify any
        #   valid value or leave the field unset. The policy in the response might use the
        #   policy version that you specified, or it might use a lower policy version. For
        #   example, if you specify version 3, but the policy has no conditional role
        #   bindings, the response uses version 1. To learn which resources support
        #   conditions in their IAM policies, see the [IAM documentation](https://cloud.
        #   google.com/iam/help/conditions/resource-policies).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_connection_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Connections in a given project and location.
        # @param [String] parent
        #   Required. The resource name of the connection location using the form: `
        #   projects/`project_id`/locations/`location_id``
        # @param [String] filter
        #   Optional. A filter specifying constraints of a list operation.
        # @param [String] order_by
        #   Optional. Specifies the ordering of results. See [Sorting order](https://cloud.
        #   google.com/apis/design/design_patterns#sorting_order) for more information.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. If not specified, a default
        #   value of 50 will be used by the service. Regardless of the page_size value,
        #   the response may include a partial list and a caller should only rely on
        #   response's next_page_token to determine if there are more instances left to be
        #   queried.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous
        #   ListConnectionsRequest, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::ListConnectionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::ListConnectionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_connections(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/connections', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::ListConnectionsResponse::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::ListConnectionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single Connection.
        # @param [String] name
        #   Required. Unique resource name of the connection. The name is ignored when
        #   creating a connection.
        # @param [Google::Apis::BeyondcorpV1alpha::Connection] connection_object
        # @param [Boolean] allow_missing
        #   Optional. If set as true, will create the resource if it is not found.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes since the first request. For example, consider a
        #   situation where you make an initial request and t he request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] update_mask
        #   Required. Mask of fields to update. At least one path must be supplied in this
        #   field. The elements of the repeated paths field may only include these fields
        #   from [BeyondCorp.Connection]: * `labels` * `display_name` * `
        #   application_endpoint` * `connectors`
        # @param [Boolean] validate_only
        #   Optional. If set, validates request by executing a dry-run which would not
        #   alter the resource in any way.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_connection(name, connection_object = nil, allow_missing: nil, request_id: nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::BeyondcorpV1alpha::Connection::Representation
          command.request_object = connection_object
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Resolves connections details for a given connector. An internal method called
        # by a connector to find connections to connect to.
        # @param [String] parent
        #   Required. The resource name of the connection location using the form: `
        #   projects/`project_id`/locations/`location_id``
        # @param [String] connector_id
        #   Required. BeyondCorp Connector name of the connector associated with those
        #   connections using the form: `projects/`project_id`/locations/`location_id`/
        #   connectors/`connector_id``
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. If not specified, a default
        #   value of 50 will be used by the service. Regardless of the page_size value,
        #   the response may include a partial list and a caller should only rely on
        #   response's next_page_token to determine if there are more instances left to be
        #   queried.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous
        #   ResolveConnectionsResponse, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::ResolveConnectionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::ResolveConnectionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def resolve_project_location_connection(parent, connector_id: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/connections:resolve', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::ResolveConnectionsResponse::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::ResolveConnectionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['connectorId'] = connector_id unless connector_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `
        # PERMISSION_DENIED` errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BeyondcorpV1alpha::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_connection_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource. If the
        # resource does not exist, this will return an empty set of permissions, not a `
        # NOT_FOUND` error. Note: This operation is designed to be used for building
        # permission-aware UIs and command-line tools, not for authorization checking.
        # This operation may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_connection_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Connector in a given project and location.
        # @param [String] parent
        #   Required. The resource project name of the connector location using the form: `
        #   projects/`project_id`/locations/`location_id``
        # @param [Google::Apis::BeyondcorpV1alpha::Connector] connector_object
        # @param [String] connector_id
        #   Optional. User-settable connector resource ID. * Must start with a letter. *
        #   Must contain between 4-63 characters from `/a-z-/`. * Must end with a number
        #   or a letter.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes since the first request. For example, consider a
        #   situation where you make an initial request and t he request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [Boolean] validate_only
        #   Optional. If set, validates request by executing a dry-run which would not
        #   alter the resource in any way.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_connector(parent, connector_object = nil, connector_id: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/connectors', options)
          command.request_representation = Google::Apis::BeyondcorpV1alpha::Connector::Representation
          command.request_object = connector_object
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['connectorId'] = connector_id unless connector_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single Connector.
        # @param [String] name
        #   Required. BeyondCorp Connector name using the form: `projects/`project_id`/
        #   locations/`location_id`/connectors/`connector_id``
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes after the first request. For example, consider a
        #   situation where you make an initial request and t he request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [Boolean] validate_only
        #   Optional. If set, validates request by executing a dry-run which would not
        #   alter the resource in any way.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_connector(name, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single Connector.
        # @param [String] name
        #   Required. BeyondCorp Connector name using the form: `projects/`project_id`/
        #   locations/`location_id`/connectors/`connector_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::Connector] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::Connector]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_connector(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::Connector::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::Connector
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The maximum policy version that will be used to format the policy.
        #   Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        #   rejected. Requests for policies with any conditional role bindings must
        #   specify version 3. Policies with no conditional role bindings may specify any
        #   valid value or leave the field unset. The policy in the response might use the
        #   policy version that you specified, or it might use a lower policy version. For
        #   example, if you specify version 3, but the policy has no conditional role
        #   bindings, the response uses version 1. To learn which resources support
        #   conditions in their IAM policies, see the [IAM documentation](https://cloud.
        #   google.com/iam/help/conditions/resource-policies).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_connector_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Connectors in a given project and location.
        # @param [String] parent
        #   Required. The resource name of the connector location using the form: `
        #   projects/`project_id`/locations/`location_id``
        # @param [String] filter
        #   Optional. A filter specifying constraints of a list operation.
        # @param [String] order_by
        #   Optional. Specifies the ordering of results. See [Sorting order](https://cloud.
        #   google.com/apis/design/design_patterns#sorting_order) for more information.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. If not specified, a default
        #   value of 50 will be used by the service. Regardless of the page_size value,
        #   the response may include a partial list and a caller should only rely on
        #   response's next_page_token to determine if there are more instances left to be
        #   queried.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous
        #   ListConnectorsRequest, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::ListConnectorsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::ListConnectorsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_connectors(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/connectors', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::ListConnectorsResponse::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::ListConnectorsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single Connector.
        # @param [String] name
        #   Required. Unique resource name of the connector. The name is ignored when
        #   creating a connector.
        # @param [Google::Apis::BeyondcorpV1alpha::Connector] connector_object
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes since the first request. For example, consider a
        #   situation where you make an initial request and t he request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] update_mask
        #   Required. Mask of fields to update. At least one path must be supplied in this
        #   field. The elements of the repeated paths field may only include these fields
        #   from [BeyondCorp.Connector]: * `labels` * `display_name`
        # @param [Boolean] validate_only
        #   Optional. If set, validates request by executing a dry-run which would not
        #   alter the resource in any way.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_connector(name, connector_object = nil, request_id: nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::BeyondcorpV1alpha::Connector::Representation
          command.request_object = connector_object
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Report status for a given connector.
        # @param [String] connector
        #   Required. BeyondCorp Connector name using the form: `projects/`project_id`/
        #   locations/`location_id`/connectors/`connector``
        # @param [Google::Apis::BeyondcorpV1alpha::ReportStatusRequest] report_status_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def report_connector_status(connector, report_status_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+connector}:reportStatus', options)
          command.request_representation = Google::Apis::BeyondcorpV1alpha::ReportStatusRequest::Representation
          command.request_object = report_status_request_object
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation
          command.params['connector'] = connector unless connector.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets instance configuration for a given connector. An internal method called
        # by a connector to get its container config.
        # @param [String] connector
        #   Required. BeyondCorp Connector name using the form: `projects/`project_id`/
        #   locations/`location_id`/connectors/`connector``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::ResolveInstanceConfigResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::ResolveInstanceConfigResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def resolve_project_location_connector_instance_config(connector, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+connector}:resolveInstanceConfig', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::ResolveInstanceConfigResponse::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::ResolveInstanceConfigResponse
          command.params['connector'] = connector unless connector.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `
        # PERMISSION_DENIED` errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BeyondcorpV1alpha::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_connector_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource. If the
        # resource does not exist, this will return an empty set of permissions, not a `
        # NOT_FOUND` error. Note: This operation is designed to be used for building
        # permission-aware UIs and command-line tools, not for authorization checking.
        # This operation may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_connector_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the value for a selected particular insight based on the provided filters.
        # Use the organization level path for fetching at org level and project level
        # path for fetching the insight value specific to a particular project.
        # @param [String] insight
        #   Required. The resource name of the insight using the form: `organizations/`
        #   organization_id`/locations/`location_id`/insights/`insight_id`` `projects/`
        #   project_id`/locations/`location_id`/insights/`insight_id``.
        # @param [String] aggregation
        #   Required. Aggregation type. Available aggregation could be fetched by calling
        #   insight list and get APIs in `BASIC` view.
        # @param [String] custom_grouping_field_filter
        #   Optional. Filterable parameters to be added to the grouping clause. Available
        #   fields could be fetched by calling insight list and get APIs in `BASIC` view. `
        #   =` is the only comparison operator supported. `AND` is the only logical
        #   operator supported. Usage: field_filter="fieldName1=fieldVal1 AND fieldName2=
        #   fieldVal2". NOTE: Only `AND` conditions are allowed. NOTE: Use the `
        #   filter_alias` from `Insight.Metadata.Field` message for the filtering the
        #   corresponding fields in this filter field. (These expressions are based on the
        #   filter language described at https://google.aip.dev/160).
        # @param [Array<String>, String] custom_grouping_group_fields
        #   Required. Fields to be used for grouping. NOTE: Use the `filter_alias` from `
        #   Insight.Metadata.Field` message for declaring the fields to be grouped-by here.
        # @param [String] end_time
        #   Required. Ending time for the duration for which insight is to be pulled.
        # @param [String] field_filter
        #   Optional. Other filterable/configurable parameters as applicable to the
        #   selected insight. Available fields could be fetched by calling insight list
        #   and get APIs in `BASIC` view. `=` is the only comparison operator supported. `
        #   AND` is the only logical operator supported. Usage: field_filter="fieldName1=
        #   fieldVal1 AND fieldName2=fieldVal2". NOTE: Only `AND` conditions are allowed.
        #   NOTE: Use the `filter_alias` from `Insight.Metadata.Field` message for the
        #   filtering the corresponding fields in this filter field. (These expressions
        #   are based on the filter language described at https://google.aip.dev/160).
        # @param [String] group
        #   Optional. Group id of the available groupings for the insight. Available
        #   groupings could be fetched by calling insight list and get APIs in `BASIC`
        #   view.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer items than requested.
        #   If unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   Optional. Used to fetch the page represented by the token. Fetches the first
        #   page when not set.
        # @param [String] start_time
        #   Required. Starting time for the duration for which insight is to be pulled.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def configured_project_location_insight_insight(insight, aggregation: nil, custom_grouping_field_filter: nil, custom_grouping_group_fields: nil, end_time: nil, field_filter: nil, group: nil, page_size: nil, page_token: nil, start_time: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+insight}:configuredInsight', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse
          command.params['insight'] = insight unless insight.nil?
          command.query['aggregation'] = aggregation unless aggregation.nil?
          command.query['customGrouping.fieldFilter'] = custom_grouping_field_filter unless custom_grouping_field_filter.nil?
          command.query['customGrouping.groupFields'] = custom_grouping_group_fields unless custom_grouping_group_fields.nil?
          command.query['endTime'] = end_time unless end_time.nil?
          command.query['fieldFilter'] = field_filter unless field_filter.nil?
          command.query['group'] = group unless group.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['startTime'] = start_time unless start_time.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the value for a selected particular insight with default configuration.
        # The default aggregation level is 'DAILY' and no grouping will be applied or
        # default grouping if applicable. The data will be returned for recent 7 days
        # starting the day before. The insight data size will be limited to 50 rows. Use
        # the organization level path for fetching at org level and project level path
        # for fetching the insight value specific to a particular project. Setting the `
        # view` to `BASIC` will only return the metadata for the insight.
        # @param [String] name
        #   Required. The resource name of the insight using the form: `organizations/`
        #   organization_id`/locations/`location_id`/insights/`insight_id`` `projects/`
        #   project_id`/locations/`location_id`/insights/`insight_id``
        # @param [String] view
        #   Required. Metadata only or full data view.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_insight(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists for all the available insights that could be fetched from the system.
        # Allows to filter using category. Setting the `view` to `BASIC` will let you
        # iterate over the list of insight metadatas.
        # @param [String] parent
        #   Required. The resource name of InsightMetadata using the form: `organizations/`
        #   organization_id`/locations/`location`` `projects/`project_id`/locations/`
        #   location_id``
        # @param [String] filter
        #   Optional. Filter expression to restrict the insights returned. Supported
        #   filter fields: * `type` * `category` * `subCategory` Examples: * "category =
        #   application AND type = count" * "category = application AND subCategory = iap"
        #   * "type = status" Allowed values: * type: [count, latency, status, list] *
        #   category: [application, device, request, security] * subCategory: [iap,
        #   webprotect] NOTE: Only equality based comparison is allowed. Only `AND`
        #   conjunction is allowed. NOTE: The 'AND' in the filter field needs to be in
        #   capital letters only. NOTE: Just filtering on `subCategory` is not allowed. It
        #   should be passed in with the parent `category` too. (These expressions are
        #   based on the filter language described at https://google.aip.dev/160).
        # @param [String] order_by
        #   Optional. Hint for how to order the results. This is currently ignored.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer items than requested.
        #   If unspecified, server will pick an appropriate default. NOTE: Default page
        #   size is 50.
        # @param [String] page_token
        #   Optional. A token identifying a page of results the server should return.
        # @param [String] view
        #   Required. List only metadata or full data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_insights(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/insights', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The maximum policy version that will be used to format the policy.
        #   Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        #   rejected. Requests for policies with any conditional role bindings must
        #   specify version 3. Policies with no conditional role bindings may specify any
        #   valid value or leave the field unset. The policy in the response might use the
        #   policy version that you specified, or it might use a lower policy version. For
        #   example, if you specify version 3, but the policy has no conditional role
        #   bindings, the response uses version 1. To learn which resources support
        #   conditions in their IAM policies, see the [IAM documentation](https://cloud.
        #   google.com/iam/help/conditions/resource-policies).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_net_connection_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `
        # PERMISSION_DENIED` errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BeyondcorpV1alpha::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_net_connection_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource. If the
        # resource does not exist, this will return an empty set of permissions, not a `
        # NOT_FOUND` error. Note: This operation is designed to be used for building
        # permission-aware UIs and command-line tools, not for authorization checking.
        # This operation may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_net_connection_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
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
        # an operation with an Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to `Code.CANCELLED`.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningCancelOperationRequest] google_longrunning_cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_location_operation(name, google_longrunning_cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:cancel', options)
          command.request_representation = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningCancelOperationRequest::Representation
          command.request_object = google_longrunning_cancel_operation_request_object
          command.response_representation = Google::Apis::BeyondcorpV1alpha::Empty::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a long-running operation. This method indicates that the client is no
        # longer interested in the operation result. It does not cancel the operation.
        # If the server doesn't support this method, it returns `google.rpc.Code.
        # UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation resource to be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::Empty::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::Empty
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
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name`
        # binding allows API services to override the binding to use different resource
        # name schemes, such as `users/*/operations`. To override the binding, API
        # services can add a binding such as `"/v1/`name=users/*`/operations"` to their
        # service configuration. For backwards compatibility, the default name includes
        # the operations collection id, however overriding users must ensure the name
        # binding is the parent resource, without the operations collection id.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BeyondcorpV1alpha::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}/operations', options)
          command.response_representation = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::BeyondcorpV1alpha::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
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
