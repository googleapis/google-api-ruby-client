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
    module ChromewebstoreV2
      # Chrome Web Store API
      #
      # The Chrome Web Store API provides access to data about apps and extensions, as
      #  well as developer tools for managing them.
      #
      # @example
      #    require 'google/apis/chromewebstore_v2'
      #
      #    Chromewebstore = Google::Apis::ChromewebstoreV2 # Alias the module
      #    service = Chromewebstore::ChromewebstoreService.new
      #
      # @see https://developer.chrome.com/docs/webstore/api
      class ChromewebstoreService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://chromewebstore.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-chromewebstore_v2',
                client_version: Google::Apis::ChromewebstoreV2::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Upload a new package to an existing item.
        # @param [String] name
        #   Required. Name of the item to upload the new package to in the form `
        #   publishers/`publisherId`/items/`itemId``
        # @param [Google::Apis::ChromewebstoreV2::UploadItemPackageRequest] upload_item_package_request_object
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
        # @yieldparam result [Google::Apis::ChromewebstoreV2::UploadItemPackageResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromewebstoreV2::UploadItemPackageResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_medium_item_package(name, upload_item_package_request_object = nil, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:post, 'v2/{+name}:upload', options)
          else
            command = make_upload_command(:post, 'v2/{+name}:upload', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::ChromewebstoreV2::UploadItemPackageRequest::Representation
          command.request_object = upload_item_package_request_object
          command.response_representation = Google::Apis::ChromewebstoreV2::UploadItemPackageResponse::Representation
          command.response_class = Google::Apis::ChromewebstoreV2::UploadItemPackageResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancel the current active submission of an item if present. This can be used
        # to cancel the review of a pending submission.
        # @param [String] name
        #   Required. Name of the item to cancel the submission of in the form `publishers/
        #   `publisherId`/items/`itemId``
        # @param [Google::Apis::ChromewebstoreV2::CancelSubmissionRequest] cancel_submission_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromewebstoreV2::CancelSubmissionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromewebstoreV2::CancelSubmissionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_item_submission(name, cancel_submission_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:cancelSubmission', options)
          command.request_representation = Google::Apis::ChromewebstoreV2::CancelSubmissionRequest::Representation
          command.request_object = cancel_submission_request_object
          command.response_representation = Google::Apis::ChromewebstoreV2::CancelSubmissionResponse::Representation
          command.response_class = Google::Apis::ChromewebstoreV2::CancelSubmissionResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetch user reviews for an item.
        # @param [String] name
        #   Required. The item resource name whose reviews are being fetched. Format:
        #   publishers/`publisher_id`/items/`item_id`
        # @param [String] filter
        #   Optional. A filter to apply to the reviews. Only equality comparison on rating
        #   is supported, e.g. `rating = 5`.
        # @param [String] order_by
        #   Optional. An optional comma-separated list of fields by which to sort the
        #   results. The default sort order is ascending (`asc`). Supported fields are: - `
        #   rating`: Supported orders are `asc` (default) and `desc`. - `create_time`:
        #   Only `desc` (most recent first) is supported; `desc` must be explicitly
        #   specified since the default is `asc`. Example: `rating desc`, `create_time
        #   desc`, or `rating desc, create_time desc`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of reviews to return. The service may return
        #   fewer than this value. If unspecified, at most 50 reviews will be returned.
        #   The maximum value is 200; values above 200 will be coerced to 200.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `FetchItemReviews` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `FetchItemReviews` must match the call that provided
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
        # @yieldparam result [Google::Apis::ChromewebstoreV2::FetchItemReviewsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromewebstoreV2::FetchItemReviewsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_publisher_item_reviews(name, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}:fetchReviews', options)
          command.response_representation = Google::Apis::ChromewebstoreV2::FetchItemReviewsResponse::Representation
          command.response_class = Google::Apis::ChromewebstoreV2::FetchItemReviewsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetch the status of an item.
        # @param [String] name
        #   Required. Name of the item to retrieve the status of in the form `publishers/`
        #   publisherId`/items/`itemId``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromewebstoreV2::FetchItemStatusResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromewebstoreV2::FetchItemStatusResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_publisher_item_status(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}:fetchStatus', options)
          command.response_representation = Google::Apis::ChromewebstoreV2::FetchItemStatusResponse::Representation
          command.response_class = Google::Apis::ChromewebstoreV2::FetchItemStatusResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the RatingSummary for the publishers item.
        # @param [String] name
        #   Required. The name of the rating summary to retrieve. Format: publishers/`
        #   publisher`/items/`item`/ratingSummary
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromewebstoreV2::RatingSummary] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromewebstoreV2::RatingSummary]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_publisher_item_rating_summary(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::ChromewebstoreV2::RatingSummary::Representation
          command.response_class = Google::Apis::ChromewebstoreV2::RatingSummary
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Submit the item to be published in the store. The item will be submitted for
        # review unless `skip_review` is set to true, or the item is staged from a
        # previous submission with `publish_type` set to `STAGED_PUBLISH`.
        # @param [String] name
        #   Required. Name of the item in the form `publishers/`publisherId`/items/`itemId`
        #   `
        # @param [Google::Apis::ChromewebstoreV2::PublishItemRequest] publish_item_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromewebstoreV2::PublishItemResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromewebstoreV2::PublishItemResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def publish_item(name, publish_item_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:publish', options)
          command.request_representation = Google::Apis::ChromewebstoreV2::PublishItemRequest::Representation
          command.request_object = publish_item_request_object
          command.response_representation = Google::Apis::ChromewebstoreV2::PublishItemResponse::Representation
          command.response_class = Google::Apis::ChromewebstoreV2::PublishItemResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Query the metrics for an item.
        # @param [String] name
        #   Required. The name of the item to query the metrics for. Format: publishers/`
        #   publisher`/items/`item`
        # @param [Array<String>, String] dimensions
        #   Optional. Dimensions to slice the metrics by. At most one dimension can be
        #   specified. **Supported dimensions:** - os: The operating system of the user. -
        #   app-version: The version of the item. - country: The country of the user. -
        #   install-source: The source of the install. - install-type: The type of install
        #   (from webstore, inline, or other). - language: The language of the user. -
        #   enabled: If the item is enabled or disabled. - utm-campaign: The UTM campaign
        #   of the user. - utm-content: The UTM content of the user. - utm-medium: The UTM
        #   medium of the user. - utm-source: The UTM source of the user. - utm-term: The
        #   UTM term of the user.
        # @param [Array<String>, String] metrics
        #   Required. The metrics to query the metric set for. **Supported metrics:** -
        #   installs: Count of item installs. - installs-7d: Count of item installs in the
        #   last 7 days. - uninstalls: Count of item uninstalls. - users: Count of daily
        #   active users of the item. - users-7d: Count of 7-day active users of the item.
        #   - impressions: Count of item impressions across the entire store front. - page-
        #   views: Count of individual views of the item's detail page.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of rows to return. If unspecified, at most 100
        #   rows will be returned. The maximum value is 1000; Values above 1000 will be
        #   coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to the request must match the call that provided the page token.
        # @param [Fixnum] time_spec_first_date_day
        #   Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        #   specify a year by itself or a year and month where the day isn't significant.
        # @param [Fixnum] time_spec_first_date_month
        #   Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        #   and day.
        # @param [Fixnum] time_spec_first_date_year
        #   Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        #   year.
        # @param [Fixnum] time_spec_last_date_day
        #   Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        #   specify a year by itself or a year and month where the day isn't significant.
        # @param [Fixnum] time_spec_last_date_month
        #   Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        #   and day.
        # @param [Fixnum] time_spec_last_date_year
        #   Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        #   year.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromewebstoreV2::QueryItemMetricsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromewebstoreV2::QueryItemMetricsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_publisher_item_metrics(name, dimensions: nil, metrics: nil, page_size: nil, page_token: nil, time_spec_first_date_day: nil, time_spec_first_date_month: nil, time_spec_first_date_year: nil, time_spec_last_date_day: nil, time_spec_last_date_month: nil, time_spec_last_date_year: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}:queryMetrics', options)
          command.response_representation = Google::Apis::ChromewebstoreV2::QueryItemMetricsResponse::Representation
          command.response_class = Google::Apis::ChromewebstoreV2::QueryItemMetricsResponse
          command.params['name'] = name unless name.nil?
          command.query['dimensions'] = dimensions unless dimensions.nil?
          command.query['metrics'] = metrics unless metrics.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['timeSpec.firstDate.day'] = time_spec_first_date_day unless time_spec_first_date_day.nil?
          command.query['timeSpec.firstDate.month'] = time_spec_first_date_month unless time_spec_first_date_month.nil?
          command.query['timeSpec.firstDate.year'] = time_spec_first_date_year unless time_spec_first_date_year.nil?
          command.query['timeSpec.lastDate.day'] = time_spec_last_date_day unless time_spec_last_date_day.nil?
          command.query['timeSpec.lastDate.month'] = time_spec_last_date_month unless time_spec_last_date_month.nil?
          command.query['timeSpec.lastDate.year'] = time_spec_last_date_year unless time_spec_last_date_year.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Rolls back an item's published CRX package to a specified previously published
        # CRX package and publishes it to all users.
        # @param [String] name
        #   Required. Name of the item to rollback in the form `publishers/`publisherId`/
        #   items/`itemId``
        # @param [Google::Apis::ChromewebstoreV2::RollbackItemRequest] rollback_item_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromewebstoreV2::RollbackItemResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromewebstoreV2::RollbackItemResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def rollback_item(name, rollback_item_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:rollback', options)
          command.request_representation = Google::Apis::ChromewebstoreV2::RollbackItemRequest::Representation
          command.request_object = rollback_item_request_object
          command.response_representation = Google::Apis::ChromewebstoreV2::RollbackItemResponse::Representation
          command.response_class = Google::Apis::ChromewebstoreV2::RollbackItemResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Set a higher target deploy percentage for the item's published revision. This
        # will be updated without the item being submitted for review. This is only
        # available to items with over 10,000 seven-day active users.
        # @param [String] name
        #   Required. Name of the item to update the published revision of in the form `
        #   publishers/`publisherId`/items/`itemId``
        # @param [Google::Apis::ChromewebstoreV2::SetPublishedDeployPercentageRequest] set_published_deploy_percentage_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromewebstoreV2::SetPublishedDeployPercentageResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromewebstoreV2::SetPublishedDeployPercentageResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_item_published_deploy_percentage(name, set_published_deploy_percentage_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:setPublishedDeployPercentage', options)
          command.request_representation = Google::Apis::ChromewebstoreV2::SetPublishedDeployPercentageRequest::Representation
          command.request_object = set_published_deploy_percentage_request_object
          command.response_representation = Google::Apis::ChromewebstoreV2::SetPublishedDeployPercentageResponse::Representation
          command.response_class = Google::Apis::ChromewebstoreV2::SetPublishedDeployPercentageResponse
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
