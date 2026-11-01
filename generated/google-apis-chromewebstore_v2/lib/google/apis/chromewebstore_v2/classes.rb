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

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module ChromewebstoreV2
      
      # Info on the author of the review.
      class AuthorInfo
        include Google::Apis::Core::Hashable
      
        # Display name for the author.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # Request message for CancelSubmission.
      class CancelSubmissionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for `CancelSubmission`.
      class CancelSubmissionResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values. * A month
      # and day, with a zero year (for example, an anniversary). * A year on its own,
      # with a zero month and a zero day. * A year and month, with a zero day (for
      # example, a credit card expiration date). Related types: * google.type.
      # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
      class Date
        include Google::Apis::Core::Hashable
      
        # Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        # specify a year by itself or a year and month where the day isn't significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        # and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        # year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # Deployment information for a specific release channel. Used in requests to
      # update deployment parameters.
      class DeployInfo
        include Google::Apis::Core::Hashable
      
        # Required. The current deploy percentage for the release channel (nonnegative
        # number between 0 and 100).
        # Corresponds to the JSON property `deployPercentage`
        # @return [Fixnum]
        attr_accessor :deploy_percentage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deploy_percentage = args[:deploy_percentage] if args.key?(:deploy_percentage)
        end
      end
      
      # Deployment information for a specific release channel
      class DistributionChannel
        include Google::Apis::Core::Hashable
      
        # The extension version provided in the manifest of the uploaded package.
        # Corresponds to the JSON property `crxVersion`
        # @return [String]
        attr_accessor :crx_version
      
        # The current deploy percentage for the release channel (nonnegative number
        # between 0 and 100).
        # Corresponds to the JSON property `deployPercentage`
        # @return [Fixnum]
        attr_accessor :deploy_percentage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @crx_version = args[:crx_version] if args.key?(:crx_version)
          @deploy_percentage = args[:deploy_percentage] if args.key?(:deploy_percentage)
        end
      end
      
      # Response message for FetchItemReviews.
      class FetchItemReviewsResponse
        include Google::Apis::Core::Hashable
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of reviews.
        # Corresponds to the JSON property `reviews`
        # @return [Array<Google::Apis::ChromewebstoreV2::Review>]
        attr_accessor :reviews
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @reviews = args[:reviews] if args.key?(:reviews)
        end
      end
      
      # Response message for `FetchItemStatus`.
      class FetchItemStatusResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The ID of the item.
        # Corresponds to the JSON property `itemId`
        # @return [String]
        attr_accessor :item_id
      
        # Output only. The state of the last async upload for an item. Only set when
        # there has been an async upload for the item in the past 24 hours.
        # Corresponds to the JSON property `lastAsyncUploadState`
        # @return [String]
        attr_accessor :last_async_upload_state
      
        # The name of the requested item.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The public key of the item, which may be generated by the store.
        # Corresponds to the JSON property `publicKey`
        # @return [String]
        attr_accessor :public_key
      
        # Details on the status of an item revision.
        # Corresponds to the JSON property `publishedItemRevisionStatus`
        # @return [Google::Apis::ChromewebstoreV2::ItemRevisionStatus]
        attr_accessor :published_item_revision_status
      
        # Details on the status of an item revision.
        # Corresponds to the JSON property `submittedItemRevisionStatus`
        # @return [Google::Apis::ChromewebstoreV2::ItemRevisionStatus]
        attr_accessor :submitted_item_revision_status
      
        # If true, the item has been taken down for a policy violation. Check the
        # developer dashboard for details.
        # Corresponds to the JSON property `takenDown`
        # @return [Boolean]
        attr_accessor :taken_down
        alias_method :taken_down?, :taken_down
      
        # If true, the item has been warned for a policy violation and will be taken
        # down if not resolved. Check the developer dashboard for details.
        # Corresponds to the JSON property `warned`
        # @return [Boolean]
        attr_accessor :warned
        alias_method :warned?, :warned
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @item_id = args[:item_id] if args.key?(:item_id)
          @last_async_upload_state = args[:last_async_upload_state] if args.key?(:last_async_upload_state)
          @name = args[:name] if args.key?(:name)
          @public_key = args[:public_key] if args.key?(:public_key)
          @published_item_revision_status = args[:published_item_revision_status] if args.key?(:published_item_revision_status)
          @submitted_item_revision_status = args[:submitted_item_revision_status] if args.key?(:submitted_item_revision_status)
          @taken_down = args[:taken_down] if args.key?(:taken_down)
          @warned = args[:warned] if args.key?(:warned)
        end
      end
      
      # Details on the status of an item revision.
      class ItemRevisionStatus
        include Google::Apis::Core::Hashable
      
        # Details on the package of the item
        # Corresponds to the JSON property `distributionChannels`
        # @return [Array<Google::Apis::ChromewebstoreV2::DistributionChannel>]
        attr_accessor :distribution_channels
      
        # Output only. Current state of the item
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @distribution_channels = args[:distribution_channels] if args.key?(:distribution_channels)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # A single row of metrics and dimension values.
      class MetricRow
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::ChromewebstoreV2::Date]
        attr_accessor :date
      
        # Dimension value columns for the row.
        # Corresponds to the JSON property `dimensionValues`
        # @return [Array<String>]
        attr_accessor :dimension_values
      
        # Metric columns for the row.
        # Corresponds to the JSON property `metricValues`
        # @return [Array<Google::Apis::ChromewebstoreV2::MetricValue>]
        attr_accessor :metric_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date = args[:date] if args.key?(:date)
          @dimension_values = args[:dimension_values] if args.key?(:dimension_values)
          @metric_values = args[:metric_values] if args.key?(:metric_values)
        end
      end
      
      # Represents the value of a single metric
      class MetricValue
        include Google::Apis::Core::Hashable
      
        # The name of the metric
        # Corresponds to the JSON property `metric`
        # @return [String]
        attr_accessor :metric
      
        # The unique user count associated with the metric (if applicable).
        # Corresponds to the JSON property `uniqueUserCount`
        # @return [Fixnum]
        attr_accessor :unique_user_count
      
        # The value of the metric.
        # Corresponds to the JSON property `value`
        # @return [Fixnum]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metric = args[:metric] if args.key?(:metric)
          @unique_user_count = args[:unique_user_count] if args.key?(:unique_user_count)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Request message for PublishItem.
      class PublishItemRequest
        include Google::Apis::Core::Hashable
      
        # Optional. When set to true the request will fail if there are any warnings
        # during validation and the details will be included in the `error.details`.
        # Otherwise warnings are treated as non-blocking and will be ignored for
        # validation but will be included in the response for inspection. Defaults to `
        # false` if unset.
        # Corresponds to the JSON property `blockOnWarnings`
        # @return [Boolean]
        attr_accessor :block_on_warnings
        alias_method :block_on_warnings?, :block_on_warnings
      
        # Optional. Additional deploy information including the desired initial
        # percentage rollout. Defaults to the current value saved in the developer
        # dashboard if unset.
        # Corresponds to the JSON property `deployInfos`
        # @return [Array<Google::Apis::ChromewebstoreV2::DeployInfo>]
        attr_accessor :deploy_infos
      
        # Optional. Use this to control if the item is published immediately on approval
        # or staged for publishing in the future. Defaults to `DEFAULT_PUBLISH` if unset.
        # Corresponds to the JSON property `publishType`
        # @return [String]
        attr_accessor :publish_type
      
        # Optional. Whether to attempt to skip item review. The API will validate if the
        # item qualifies and return a validation error if the item requires review.
        # Defaults to `false` if unset.
        # Corresponds to the JSON property `skipReview`
        # @return [Boolean]
        attr_accessor :skip_review
        alias_method :skip_review?, :skip_review
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @block_on_warnings = args[:block_on_warnings] if args.key?(:block_on_warnings)
          @deploy_infos = args[:deploy_infos] if args.key?(:deploy_infos)
          @publish_type = args[:publish_type] if args.key?(:publish_type)
          @skip_review = args[:skip_review] if args.key?(:skip_review)
        end
      end
      
      # Response message for `PublishItem`.
      class PublishItemResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The ID of the item.
        # Corresponds to the JSON property `itemId`
        # @return [String]
        attr_accessor :item_id
      
        # The name of the item that was submitted
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The current state of the submission.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Message containing details on warnings encountered during PublishItem.
        # Corresponds to the JSON property `warningInfo`
        # @return [Google::Apis::ChromewebstoreV2::WarningsInfo]
        attr_accessor :warning_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @item_id = args[:item_id] if args.key?(:item_id)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @warning_info = args[:warning_info] if args.key?(:warning_info)
        end
      end
      
      # Response message for QueryItemMetrics.
      class QueryItemMetricsResponse
        include Google::Apis::Core::Hashable
      
        # The metric rows.
        # Corresponds to the JSON property `metricRows`
        # @return [Array<Google::Apis::ChromewebstoreV2::MetricRow>]
        attr_accessor :metric_rows
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metric_rows = args[:metric_rows] if args.key?(:metric_rows)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Singleton resource for the rating summary of an item.
      class RatingSummary
        include Google::Apis::Core::Hashable
      
        # The number of five star ratings.
        # Corresponds to the JSON property `fiveStarRatingCount`
        # @return [Fixnum]
        attr_accessor :five_star_rating_count
      
        # The number of four star ratings.
        # Corresponds to the JSON property `fourStarRatingCount`
        # @return [Fixnum]
        attr_accessor :four_star_rating_count
      
        # Identifier. Item rating summary resource name Format: publishers/`publisher`/
        # items/`item`/ratingSummary
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The number of ratings with a non-empty review text.
        # Corresponds to the JSON property `nonEmptyReviewCount`
        # @return [Fixnum]
        attr_accessor :non_empty_review_count
      
        # The number of one star ratings.
        # Corresponds to the JSON property `oneStarRatingCount`
        # @return [Fixnum]
        attr_accessor :one_star_rating_count
      
        # The rating of the item as shown on the store page, expressed as a double
        # between 1 and 5.
        # Corresponds to the JSON property `rating`
        # @return [Float]
        attr_accessor :rating
      
        # The total number of ratings for the item.
        # Corresponds to the JSON property `ratingCount`
        # @return [Fixnum]
        attr_accessor :rating_count
      
        # The number of three star ratings.
        # Corresponds to the JSON property `threeStarRatingCount`
        # @return [Fixnum]
        attr_accessor :three_star_rating_count
      
        # The number of two star ratings.
        # Corresponds to the JSON property `twoStarRatingCount`
        # @return [Fixnum]
        attr_accessor :two_star_rating_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @five_star_rating_count = args[:five_star_rating_count] if args.key?(:five_star_rating_count)
          @four_star_rating_count = args[:four_star_rating_count] if args.key?(:four_star_rating_count)
          @name = args[:name] if args.key?(:name)
          @non_empty_review_count = args[:non_empty_review_count] if args.key?(:non_empty_review_count)
          @one_star_rating_count = args[:one_star_rating_count] if args.key?(:one_star_rating_count)
          @rating = args[:rating] if args.key?(:rating)
          @rating_count = args[:rating_count] if args.key?(:rating_count)
          @three_star_rating_count = args[:three_star_rating_count] if args.key?(:three_star_rating_count)
          @two_star_rating_count = args[:two_star_rating_count] if args.key?(:two_star_rating_count)
        end
      end
      
      # A review written by a user to rate an item in the Chrome Web Store.
      class Review
        include Google::Apis::Core::Hashable
      
        # Info on the author of the review.
        # Corresponds to the JSON property `authorInfo`
        # @return [Google::Apis::ChromewebstoreV2::AuthorInfo]
        attr_accessor :author_info
      
        # Content of the review.
        # Corresponds to the JSON property `comment`
        # @return [String]
        attr_accessor :comment
      
        # Output only. When the review was posted.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The item that this review evaluates. Format: publishers/`
        # publisher`/items/`item`
        # Corresponds to the JSON property `item`
        # @return [String]
        attr_accessor :item
      
        # Identifier. Review resource name. Format: reviews/`reviewId`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Rating of the item, between 1 and 5.
        # Corresponds to the JSON property `rating`
        # @return [Fixnum]
        attr_accessor :rating
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @author_info = args[:author_info] if args.key?(:author_info)
          @comment = args[:comment] if args.key?(:comment)
          @create_time = args[:create_time] if args.key?(:create_time)
          @item = args[:item] if args.key?(:item)
          @name = args[:name] if args.key?(:name)
          @rating = args[:rating] if args.key?(:rating)
        end
      end
      
      # Request message for RollbackItem.
      class RollbackItemRequest
        include Google::Apis::Core::Hashable
      
        # Required. The new version to assign to the package being rolled back to. This
        # effectively "rolls forward" the previous package by giving it a higher version
        # number than the currently-published package. E.g. if the current published
        # version is 1.1, the new version could be 1.1.1 or 1.2 but not 1.0.
        # Corresponds to the JSON property `newVersion`
        # @return [String]
        attr_accessor :new_version
      
        # Required. The reason for the rollback that will be used for internal auditing
        # and developer dashboard visibility.
        # Corresponds to the JSON property `rollbackReason`
        # @return [String]
        attr_accessor :rollback_reason
      
        # Required. The target previously published CRX version to roll back to. If
        # unset, defaults to the last published CRX version.
        # Corresponds to the JSON property `targetCrxVersion`
        # @return [String]
        attr_accessor :target_crx_version
      
        # Optional. If set, validate and dry run the request but do not actually
        # initiate the rollback
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_version = args[:new_version] if args.key?(:new_version)
          @rollback_reason = args[:rollback_reason] if args.key?(:rollback_reason)
          @target_crx_version = args[:target_crx_version] if args.key?(:target_crx_version)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # Response message for `RollbackItem`.
      class RollbackItemResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for SetPublishedDeployPercentage.
      class SetPublishedDeployPercentageRequest
        include Google::Apis::Core::Hashable
      
        # Required. Unscaled percentage value for the publised revision (nonnegative
        # number between 0 and 100). It must be larger than the existing target
        # percentage.
        # Corresponds to the JSON property `deployPercentage`
        # @return [Fixnum]
        attr_accessor :deploy_percentage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deploy_percentage = args[:deploy_percentage] if args.key?(:deploy_percentage)
        end
      end
      
      # Response message for `SetPublishedDeployPercentage`.
      class SetPublishedDeployPercentageResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for UploadItemPackage.
      class UploadItemPackageRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for `UploadItemPackage`.
      class UploadItemPackageResponse
        include Google::Apis::Core::Hashable
      
        # The extension version provided in the manifest of the uploaded package. This
        # will not be set if the upload is still in progress (`upload_state` is `
        # UPLOAD_IN_PROGRESS`).
        # Corresponds to the JSON property `crxVersion`
        # @return [String]
        attr_accessor :crx_version
      
        # Output only. The ID of the item the package was uploaded to.
        # Corresponds to the JSON property `itemId`
        # @return [String]
        attr_accessor :item_id
      
        # The name of the item the package was uploaded to.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The state of the upload. If `upload_state` is `UPLOAD_IN_PROGRESS`
        # , you can poll for updates using the fetchStatus method.
        # Corresponds to the JSON property `uploadState`
        # @return [String]
        attr_accessor :upload_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @crx_version = args[:crx_version] if args.key?(:crx_version)
          @item_id = args[:item_id] if args.key?(:item_id)
          @name = args[:name] if args.key?(:name)
          @upload_state = args[:upload_state] if args.key?(:upload_state)
        end
      end
      
      # Represents a single warning encountered during the request.
      class Warning
        include Google::Apis::Core::Hashable
      
        # A description of the warning. Developers should use this message to understand
        # the warning and take appropriate action to resolve the issue.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The reason for the warning. This is a constant value that identifies the
        # proximate cause of the warning.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # Message containing details on warnings encountered during PublishItem.
      class WarningsInfo
        include Google::Apis::Core::Hashable
      
        # All warnings encountered during the request.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::ChromewebstoreV2::Warning>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
      end
    end
  end
end
