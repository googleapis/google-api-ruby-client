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
    module MerchantapiReviewsV1beta
      
      # A message that represents custom attributes. Exactly one of `value` or `
      # group_values` must not be empty.
      class CustomAttribute
        include Google::Apis::Core::Hashable
      
        # Subattributes within this attribute group. If `group_values` is not empty, `
        # value` must be empty.
        # Corresponds to the JSON property `groupValues`
        # @return [Array<Google::Apis::MerchantapiReviewsV1beta::CustomAttribute>]
        attr_accessor :group_values
      
        # The name of the attribute.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The value of the attribute. If `value` is not empty, `group_values` must be
        # empty.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_values = args[:group_values] if args.key?(:group_values)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for the `ListMerchantsReview` method.
      class ListMerchantReviewsResponse
        include Google::Apis::Core::Hashable
      
        # The merchant review.
        # Corresponds to the JSON property `merchantReviews`
        # @return [Array<Google::Apis::MerchantapiReviewsV1beta::MerchantReview>]
        attr_accessor :merchant_reviews
      
        # The token to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @merchant_reviews = args[:merchant_reviews] if args.key?(:merchant_reviews)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # response message for the ListProductReviews method.
      class ListProductReviewsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The product review.
        # Corresponds to the JSON property `productReviews`
        # @return [Array<Google::Apis::MerchantapiReviewsV1beta::ProductReview>]
        attr_accessor :product_reviews
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @product_reviews = args[:product_reviews] if args.key?(:product_reviews)
        end
      end
      
      # A review for a merchant. For more information, see [Introduction to Merchant
      # Review Feeds](https://developers.google.com/merchant-review-feeds)
      class MerchantReview
        include Google::Apis::Core::Hashable
      
        # Attributes.
        # Corresponds to the JSON property `attributes`
        # @return [Google::Apis::MerchantapiReviewsV1beta::MerchantReviewAttributes]
        attr_accessor :attributes
      
        # Required. A list of custom (merchant-provided) attributes. It can also be used
        # for submitting any attribute of the data specification in its generic form (
        # for example, `` "name": "size type", "value": "regular" ``). This is useful
        # for submitting attributes not explicitly exposed by the API, such as
        # experimental attributes. Maximum allowed number of characters for each custom
        # attribute is 10240 (represents sum of characters for name and value). Maximum
        # 2500 custom attributes can be set per product, with total size of 102.4kB.
        # Underscores in custom attribute names are replaced by spaces upon insertion.
        # Corresponds to the JSON property `customAttributes`
        # @return [Array<Google::Apis::MerchantapiReviewsV1beta::CustomAttribute>]
        attr_accessor :custom_attributes
      
        # Output only. The primary data source of the merchant review.
        # Corresponds to the JSON property `dataSource`
        # @return [String]
        attr_accessor :data_source
      
        # Required. The user provided merchant review ID to uniquely identify the
        # merchant review.
        # Corresponds to the JSON property `merchantReviewId`
        # @return [String]
        attr_accessor :merchant_review_id
      
        # The status of a merchant review, data validation issues, that is, information
        # about a merchant review computed asynchronously.
        # Corresponds to the JSON property `merchantReviewStatus`
        # @return [Google::Apis::MerchantapiReviewsV1beta::MerchantReviewStatus]
        attr_accessor :merchant_review_status
      
        # Identifier. The name of the merchant review. Format: `"`merchantreview.name=
        # accounts/`account`/merchantReviews/`merchantReview``"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @custom_attributes = args[:custom_attributes] if args.key?(:custom_attributes)
          @data_source = args[:data_source] if args.key?(:data_source)
          @merchant_review_id = args[:merchant_review_id] if args.key?(:merchant_review_id)
          @merchant_review_status = args[:merchant_review_status] if args.key?(:merchant_review_status)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Attributes.
      class MerchantReviewAttributes
        include Google::Apis::Core::Hashable
      
        # Optional. The method used to collect the review.
        # Corresponds to the JSON property `collectionMethod`
        # @return [String]
        attr_accessor :collection_method
      
        # Required. This should be any freeform text provided by the user and should not
        # be truncated. If multiple responses to different questions are provided, all
        # responses should be included, with the minimal context for the responses to
        # make sense. Context should not be provided if questions were left unanswered.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # Optional. Set to true if the reviewer should remain anonymous.
        # Corresponds to the JSON property `isAnonymous`
        # @return [Boolean]
        attr_accessor :is_anonymous
        alias_method :is_anonymous?, :is_anonymous
      
        # Optional. The maximum possible number for the rating. The value of the max
        # rating must be greater than the value of the min rating.
        # Corresponds to the JSON property `maxRating`
        # @return [Fixnum]
        attr_accessor :max_rating
      
        # Optional. Human-readable display name for the merchant.
        # Corresponds to the JSON property `merchantDisplayName`
        # @return [String]
        attr_accessor :merchant_display_name
      
        # Required. Must be unique and stable across all requests. In other words, if a
        # request today and another 90 days ago refer to the same merchant, they must
        # have the same id.
        # Corresponds to the JSON property `merchantId`
        # @return [String]
        attr_accessor :merchant_id
      
        # Optional. URL to the merchant's main website. Do not use a redirect URL for
        # this value. In other words, the value should point directly to the merchant's
        # site.
        # Corresponds to the JSON property `merchantLink`
        # @return [String]
        attr_accessor :merchant_link
      
        # Optional. URL to the landing page that hosts the reviews for this merchant. Do
        # not use a redirect URL.
        # Corresponds to the JSON property `merchantRatingLink`
        # @return [String]
        attr_accessor :merchant_rating_link
      
        # Optional. The minimum possible number for the rating. This should be the worst
        # possible rating and should not be a value for no rating.
        # Corresponds to the JSON property `minRating`
        # @return [Fixnum]
        attr_accessor :min_rating
      
        # Optional. The reviewer's overall rating of the merchant.
        # Corresponds to the JSON property `rating`
        # @return [Float]
        attr_accessor :rating
      
        # Optional. The country where the reviewer made the order defined by ISO 3166-1
        # Alpha-2 Country Code.
        # Corresponds to the JSON property `reviewCountry`
        # @return [String]
        attr_accessor :review_country
      
        # Required. The language of the review defined by BCP-47 language code.
        # Corresponds to the JSON property `reviewLanguage`
        # @return [String]
        attr_accessor :review_language
      
        # Required. The timestamp indicating when the review was written.
        # Corresponds to the JSON property `reviewTime`
        # @return [String]
        attr_accessor :review_time
      
        # Optional. A permanent, unique identifier for the author of the review in the
        # publisher's system.
        # Corresponds to the JSON property `reviewerId`
        # @return [String]
        attr_accessor :reviewer_id
      
        # Optional. Display name of the review author.
        # Corresponds to the JSON property `reviewerUsername`
        # @return [String]
        attr_accessor :reviewer_username
      
        # Optional. The title of the review.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collection_method = args[:collection_method] if args.key?(:collection_method)
          @content = args[:content] if args.key?(:content)
          @is_anonymous = args[:is_anonymous] if args.key?(:is_anonymous)
          @max_rating = args[:max_rating] if args.key?(:max_rating)
          @merchant_display_name = args[:merchant_display_name] if args.key?(:merchant_display_name)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @merchant_link = args[:merchant_link] if args.key?(:merchant_link)
          @merchant_rating_link = args[:merchant_rating_link] if args.key?(:merchant_rating_link)
          @min_rating = args[:min_rating] if args.key?(:min_rating)
          @rating = args[:rating] if args.key?(:rating)
          @review_country = args[:review_country] if args.key?(:review_country)
          @review_language = args[:review_language] if args.key?(:review_language)
          @review_time = args[:review_time] if args.key?(:review_time)
          @reviewer_id = args[:reviewer_id] if args.key?(:reviewer_id)
          @reviewer_username = args[:reviewer_username] if args.key?(:reviewer_username)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # The destination status of the merchant review status.
      class MerchantReviewDestinationStatus
        include Google::Apis::Core::Hashable
      
        # Output only. The name of the reporting context.
        # Corresponds to the JSON property `reportingContext`
        # @return [String]
        attr_accessor :reporting_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reporting_context = args[:reporting_context] if args.key?(:reporting_context)
        end
      end
      
      # The ItemLevelIssue of the merchant review status.
      class MerchantReviewItemLevelIssue
        include Google::Apis::Core::Hashable
      
        # Output only. The attribute's name, if the issue is caused by a single
        # attribute.
        # Corresponds to the JSON property `attribute`
        # @return [String]
        attr_accessor :attribute
      
        # Output only. The error code of the issue.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Output only. A short issue description in English.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. A detailed issue description in English.
        # Corresponds to the JSON property `detail`
        # @return [String]
        attr_accessor :detail
      
        # Output only. The URL of a web page to help with resolving this issue.
        # Corresponds to the JSON property `documentation`
        # @return [String]
        attr_accessor :documentation
      
        # Output only. The reporting context the issue applies to.
        # Corresponds to the JSON property `reportingContext`
        # @return [String]
        attr_accessor :reporting_context
      
        # Output only. Whether the issue can be resolved by the merchant.
        # Corresponds to the JSON property `resolution`
        # @return [String]
        attr_accessor :resolution
      
        # Output only. How this issue affects serving of the merchant review.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute = args[:attribute] if args.key?(:attribute)
          @code = args[:code] if args.key?(:code)
          @description = args[:description] if args.key?(:description)
          @detail = args[:detail] if args.key?(:detail)
          @documentation = args[:documentation] if args.key?(:documentation)
          @reporting_context = args[:reporting_context] if args.key?(:reporting_context)
          @resolution = args[:resolution] if args.key?(:resolution)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # The status of a merchant review, data validation issues, that is, information
      # about a merchant review computed asynchronously.
      class MerchantReviewStatus
        include Google::Apis::Core::Hashable
      
        # Output only. Date on which the item has been created, in [ISO 8601](http://en.
        # wikipedia.org/wiki/ISO_8601) format.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The intended destinations for the merchant review.
        # Corresponds to the JSON property `destinationStatuses`
        # @return [Array<Google::Apis::MerchantapiReviewsV1beta::MerchantReviewDestinationStatus>]
        attr_accessor :destination_statuses
      
        # Output only. A list of all issues associated with the merchant review.
        # Corresponds to the JSON property `itemLevelIssues`
        # @return [Array<Google::Apis::MerchantapiReviewsV1beta::MerchantReviewItemLevelIssue>]
        attr_accessor :item_level_issues
      
        # Output only. Date on which the item has been last updated, in [ISO 8601](http:/
        # /en.wikipedia.org/wiki/ISO_8601) format.
        # Corresponds to the JSON property `lastUpdateTime`
        # @return [String]
        attr_accessor :last_update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @destination_statuses = args[:destination_statuses] if args.key?(:destination_statuses)
          @item_level_issues = args[:item_level_issues] if args.key?(:item_level_issues)
          @last_update_time = args[:last_update_time] if args.key?(:last_update_time)
        end
      end
      
      # The change that happened to the product including old value, new value,
      # country code as the region code and reporting context.
      class ProductChange
        include Google::Apis::Core::Hashable
      
        # The new value of the changed resource or attribute.
        # Corresponds to the JSON property `newValue`
        # @return [String]
        attr_accessor :new_value
      
        # The old value of the changed resource or attribute.
        # Corresponds to the JSON property `oldValue`
        # @return [String]
        attr_accessor :old_value
      
        # Countries that have the change (if applicable)
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # Reporting contexts that have the change (if applicable)
        # Corresponds to the JSON property `reportingContext`
        # @return [String]
        attr_accessor :reporting_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_value = args[:new_value] if args.key?(:new_value)
          @old_value = args[:old_value] if args.key?(:old_value)
          @region_code = args[:region_code] if args.key?(:region_code)
          @reporting_context = args[:reporting_context] if args.key?(:reporting_context)
        end
      end
      
      # A review for a product. For more information, see [Introduction to Product
      # Review Feeds](https://developers.google.com/product-review-feeds)
      class ProductReview
        include Google::Apis::Core::Hashable
      
        # Attributes.
        # Corresponds to the JSON property `attributes`
        # @return [Google::Apis::MerchantapiReviewsV1beta::ProductReviewAttributes]
        attr_accessor :attributes
      
        # Optional. A list of custom (merchant-provided) attributes.
        # Corresponds to the JSON property `customAttributes`
        # @return [Array<Google::Apis::MerchantapiReviewsV1beta::CustomAttribute>]
        attr_accessor :custom_attributes
      
        # Output only. The primary data source of the product review.
        # Corresponds to the JSON property `dataSource`
        # @return [String]
        attr_accessor :data_source
      
        # Identifier. The name of the product review. Format: `"`productreview.name=
        # accounts/`account`/productReviews/`productReview``"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The permanent, unique identifier for the product review in the
        # publisher’s system.
        # Corresponds to the JSON property `productReviewId`
        # @return [String]
        attr_accessor :product_review_id
      
        # Product review status.
        # Corresponds to the JSON property `productReviewStatus`
        # @return [Google::Apis::MerchantapiReviewsV1beta::ProductReviewStatus]
        attr_accessor :product_review_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @custom_attributes = args[:custom_attributes] if args.key?(:custom_attributes)
          @data_source = args[:data_source] if args.key?(:data_source)
          @name = args[:name] if args.key?(:name)
          @product_review_id = args[:product_review_id] if args.key?(:product_review_id)
          @product_review_status = args[:product_review_status] if args.key?(:product_review_status)
        end
      end
      
      # Attributes.
      class ProductReviewAttributes
        include Google::Apis::Core::Hashable
      
        # Optional. The name of the aggregator of the product reviews. A publisher may
        # use a reviews aggregator to manage reviews and provide the feeds. This element
        # indicates the use of an aggregator and contains information about the
        # aggregator.
        # Corresponds to the JSON property `aggregatorName`
        # @return [String]
        attr_accessor :aggregator_name
      
        # Optional. Contains ASINs (Amazon Standard Identification Numbers) associated
        # with a product.
        # Corresponds to the JSON property `asins`
        # @return [Array<String>]
        attr_accessor :asins
      
        # Optional. Contains brand names associated with a product.
        # Corresponds to the JSON property `brands`
        # @return [Array<String>]
        attr_accessor :brands
      
        # Optional. The method used to collect the review.
        # Corresponds to the JSON property `collectionMethod`
        # @return [String]
        attr_accessor :collection_method
      
        # Optional. Contains the disadvantages based on the opinion of the reviewer.
        # Omit boilerplate text like "con:" unless it was written by the reviewer.
        # Corresponds to the JSON property `cons`
        # @return [Array<String>]
        attr_accessor :cons
      
        # Required. The content of the review.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # Optional. Contains GTINs (global trade item numbers) associated with a product.
        # Sub-types of GTINs (e.g. UPC, EAN, ISBN, JAN) are supported.
        # Corresponds to the JSON property `gtins`
        # @return [Array<String>]
        attr_accessor :gtins
      
        # Optional. Indicates whether the review is marked as spam in the publisher's
        # system.
        # Corresponds to the JSON property `isSpam`
        # @return [Boolean]
        attr_accessor :is_spam
        alias_method :is_spam?, :is_spam
      
        # Optional. The maximum possible number for the rating. The value of the max
        # rating must be greater than the value of the min attribute.
        # Corresponds to the JSON property `maxRating`
        # @return [Fixnum]
        attr_accessor :max_rating
      
        # Optional. Contains the ratings associated with the review. The minimum
        # possible number for the rating. This should be the worst possible rating and
        # should not be a value for no rating.
        # Corresponds to the JSON property `minRating`
        # @return [Fixnum]
        attr_accessor :min_rating
      
        # Optional. Contains MPNs (manufacturer part numbers) associated with a product.
        # Corresponds to the JSON property `mpns`
        # @return [Array<String>]
        attr_accessor :mpns
      
        # Optional. The URI of the product. This URI can have the same value as the `
        # review_link` element, if the review URI and the product URI are the same.
        # Corresponds to the JSON property `productLinks`
        # @return [Array<String>]
        attr_accessor :product_links
      
        # Optional. Descriptive name of a product.
        # Corresponds to the JSON property `productNames`
        # @return [Array<String>]
        attr_accessor :product_names
      
        # Optional. Contains the advantages based on the opinion of the reviewer. Omit
        # boilerplate text like "pro:" unless it was written by the reviewer.
        # Corresponds to the JSON property `pros`
        # @return [Array<String>]
        attr_accessor :pros
      
        # Optional. A link to the company favicon of the publisher. The image dimensions
        # should be favicon size: 16x16 pixels. The image format should be GIF, JPG or
        # PNG.
        # Corresponds to the JSON property `publisherFavicon`
        # @return [String]
        attr_accessor :publisher_favicon
      
        # Optional. The name of the publisher of the product reviews. The information
        # about the publisher, which may be a retailer, manufacturer, reviews service
        # company, or any entity that publishes product reviews.
        # Corresponds to the JSON property `publisherName`
        # @return [String]
        attr_accessor :publisher_name
      
        # Optional. The reviewer's overall rating of the product.
        # Corresponds to the JSON property `rating`
        # @return [Float]
        attr_accessor :rating
      
        # Optional. The country of the review defined by ISO 3166-1 Alpha-2 Country Code.
        # Corresponds to the JSON property `reviewCountry`
        # @return [String]
        attr_accessor :review_country
      
        # Optional. The language of the review defined by BCP-47 language code.
        # Corresponds to the JSON property `reviewLanguage`
        # @return [String]
        attr_accessor :review_language
      
        # The URI of the review landing page.
        # Corresponds to the JSON property `reviewLink`
        # @return [Google::Apis::MerchantapiReviewsV1beta::ReviewLink]
        attr_accessor :review_link
      
        # Required. The timestamp indicating when the review was written.
        # Corresponds to the JSON property `reviewTime`
        # @return [String]
        attr_accessor :review_time
      
        # Optional. The author of the product review. A permanent, unique identifier for
        # the author of the review in the publisher's system.
        # Corresponds to the JSON property `reviewerId`
        # @return [String]
        attr_accessor :reviewer_id
      
        # Optional. A URI to an image of the reviewed product created by the review
        # author. The URI does not have to end with an image file extension.
        # Corresponds to the JSON property `reviewerImageLinks`
        # @return [Array<String>]
        attr_accessor :reviewer_image_links
      
        # Optional. Set to true if the reviewer should remain anonymous.
        # Corresponds to the JSON property `reviewerIsAnonymous`
        # @return [Boolean]
        attr_accessor :reviewer_is_anonymous
        alias_method :reviewer_is_anonymous?, :reviewer_is_anonymous
      
        # Optional. The name of the reviewer of the product review.
        # Corresponds to the JSON property `reviewerUsername`
        # @return [String]
        attr_accessor :reviewer_username
      
        # Optional. Contains SKUs (stock keeping units) associated with a product. Often
        # this matches the product Offer Id in the product feed.
        # Corresponds to the JSON property `skus`
        # @return [Array<String>]
        attr_accessor :skus
      
        # Optional. The name of the subclient of the product reviews. The subclient is
        # an identifier of the product review source. It should be equivalent to the
        # directory provided in the file data source path.
        # Corresponds to the JSON property `subclientName`
        # @return [String]
        attr_accessor :subclient_name
      
        # Optional. The title of the review.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Optional. A permanent, unique identifier for the transaction associated with
        # the review in the publisher's system. This ID can be used to indicate that
        # multiple reviews are associated with the same transaction.
        # Corresponds to the JSON property `transactionId`
        # @return [String]
        attr_accessor :transaction_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregator_name = args[:aggregator_name] if args.key?(:aggregator_name)
          @asins = args[:asins] if args.key?(:asins)
          @brands = args[:brands] if args.key?(:brands)
          @collection_method = args[:collection_method] if args.key?(:collection_method)
          @cons = args[:cons] if args.key?(:cons)
          @content = args[:content] if args.key?(:content)
          @gtins = args[:gtins] if args.key?(:gtins)
          @is_spam = args[:is_spam] if args.key?(:is_spam)
          @max_rating = args[:max_rating] if args.key?(:max_rating)
          @min_rating = args[:min_rating] if args.key?(:min_rating)
          @mpns = args[:mpns] if args.key?(:mpns)
          @product_links = args[:product_links] if args.key?(:product_links)
          @product_names = args[:product_names] if args.key?(:product_names)
          @pros = args[:pros] if args.key?(:pros)
          @publisher_favicon = args[:publisher_favicon] if args.key?(:publisher_favicon)
          @publisher_name = args[:publisher_name] if args.key?(:publisher_name)
          @rating = args[:rating] if args.key?(:rating)
          @review_country = args[:review_country] if args.key?(:review_country)
          @review_language = args[:review_language] if args.key?(:review_language)
          @review_link = args[:review_link] if args.key?(:review_link)
          @review_time = args[:review_time] if args.key?(:review_time)
          @reviewer_id = args[:reviewer_id] if args.key?(:reviewer_id)
          @reviewer_image_links = args[:reviewer_image_links] if args.key?(:reviewer_image_links)
          @reviewer_is_anonymous = args[:reviewer_is_anonymous] if args.key?(:reviewer_is_anonymous)
          @reviewer_username = args[:reviewer_username] if args.key?(:reviewer_username)
          @skus = args[:skus] if args.key?(:skus)
          @subclient_name = args[:subclient_name] if args.key?(:subclient_name)
          @title = args[:title] if args.key?(:title)
          @transaction_id = args[:transaction_id] if args.key?(:transaction_id)
        end
      end
      
      # The destination status of the product review status.
      class ProductReviewDestinationStatus
        include Google::Apis::Core::Hashable
      
        # Output only. The name of the reporting context.
        # Corresponds to the JSON property `reportingContext`
        # @return [String]
        attr_accessor :reporting_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reporting_context = args[:reporting_context] if args.key?(:reporting_context)
        end
      end
      
      # The ItemLevelIssue of the product review status.
      class ProductReviewItemLevelIssue
        include Google::Apis::Core::Hashable
      
        # Output only. The attribute's name, if the issue is caused by a single
        # attribute.
        # Corresponds to the JSON property `attribute`
        # @return [String]
        attr_accessor :attribute
      
        # Output only. The error code of the issue.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Output only. A short issue description in English.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. A detailed issue description in English.
        # Corresponds to the JSON property `detail`
        # @return [String]
        attr_accessor :detail
      
        # Output only. The URL of a web page to help with resolving this issue.
        # Corresponds to the JSON property `documentation`
        # @return [String]
        attr_accessor :documentation
      
        # Output only. The reporting context the issue applies to.
        # Corresponds to the JSON property `reportingContext`
        # @return [String]
        attr_accessor :reporting_context
      
        # Output only. Whether the issue can be resolved by the merchant.
        # Corresponds to the JSON property `resolution`
        # @return [String]
        attr_accessor :resolution
      
        # Output only. How this issue affects serving of the product review.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute = args[:attribute] if args.key?(:attribute)
          @code = args[:code] if args.key?(:code)
          @description = args[:description] if args.key?(:description)
          @detail = args[:detail] if args.key?(:detail)
          @documentation = args[:documentation] if args.key?(:documentation)
          @reporting_context = args[:reporting_context] if args.key?(:reporting_context)
          @resolution = args[:resolution] if args.key?(:resolution)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # Product review status.
      class ProductReviewStatus
        include Google::Apis::Core::Hashable
      
        # Output only. Date on which the item has been created, in [ISO 8601](http://en.
        # wikipedia.org/wiki/ISO_8601) format.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The intended destinations for the product review.
        # Corresponds to the JSON property `destinationStatuses`
        # @return [Array<Google::Apis::MerchantapiReviewsV1beta::ProductReviewDestinationStatus>]
        attr_accessor :destination_statuses
      
        # Output only. A list of all issues associated with the product review.
        # Corresponds to the JSON property `itemLevelIssues`
        # @return [Array<Google::Apis::MerchantapiReviewsV1beta::ProductReviewItemLevelIssue>]
        attr_accessor :item_level_issues
      
        # Output only. Date on which the item has been last updated, in [ISO 8601](http:/
        # /en.wikipedia.org/wiki/ISO_8601) format.
        # Corresponds to the JSON property `lastUpdateTime`
        # @return [String]
        attr_accessor :last_update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @destination_statuses = args[:destination_statuses] if args.key?(:destination_statuses)
          @item_level_issues = args[:item_level_issues] if args.key?(:item_level_issues)
          @last_update_time = args[:last_update_time] if args.key?(:last_update_time)
        end
      end
      
      # The message that the merchant will receive to notify about product status
      # change event
      class ProductStatusChangeMessage
        include Google::Apis::Core::Hashable
      
        # The target account that owns the entity that changed. Format : `accounts/`
        # merchant_id``
        # Corresponds to the JSON property `account`
        # @return [String]
        attr_accessor :account
      
        # The attribute in the resource that changed, in this case it will be always `
        # Status`.
        # Corresponds to the JSON property `attribute`
        # @return [String]
        attr_accessor :attribute
      
        # A message to describe the change that happened to the product
        # Corresponds to the JSON property `changes`
        # @return [Array<Google::Apis::MerchantapiReviewsV1beta::ProductChange>]
        attr_accessor :changes
      
        # The account that manages the merchant's account. can be the same as merchant
        # id if it is standalone account. Format : `accounts/`service_provider_id``
        # Corresponds to the JSON property `managingAccount`
        # @return [String]
        attr_accessor :managing_account
      
        # The product name. Format: ``product.name=accounts/`account`/products/`product``
        # `
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # The product id.
        # Corresponds to the JSON property `resourceId`
        # @return [String]
        attr_accessor :resource_id
      
        # The resource that changed, in this case it will always be `Product`.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] if args.key?(:account)
          @attribute = args[:attribute] if args.key?(:attribute)
          @changes = args[:changes] if args.key?(:changes)
          @managing_account = args[:managing_account] if args.key?(:managing_account)
          @resource = args[:resource] if args.key?(:resource)
          @resource_id = args[:resource_id] if args.key?(:resource_id)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
        end
      end
      
      # The URI of the review landing page.
      class ReviewLink
        include Google::Apis::Core::Hashable
      
        # Optional. The URI of the review landing page. For example: `http://www.example.
        # com/review_5.html`.
        # Corresponds to the JSON property `link`
        # @return [String]
        attr_accessor :link
      
        # Optional. Type of the review URI.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @link = args[:link] if args.key?(:link)
          @type = args[:type] if args.key?(:type)
        end
      end
    end
  end
end
