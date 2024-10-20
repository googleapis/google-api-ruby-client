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
      
      class CustomAttribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMerchantReviewsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListProductReviewsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MerchantReview
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MerchantReviewAttributes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MerchantReviewDestinationStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MerchantReviewItemLevelIssue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MerchantReviewStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductChange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductReview
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductReviewAttributes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductReviewDestinationStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductReviewItemLevelIssue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductReviewStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductStatusChangeMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReviewLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :group_values, as: 'groupValues', class: Google::Apis::MerchantapiReviewsV1beta::CustomAttribute, decorator: Google::Apis::MerchantapiReviewsV1beta::CustomAttribute::Representation
      
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ListMerchantReviewsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :merchant_reviews, as: 'merchantReviews', class: Google::Apis::MerchantapiReviewsV1beta::MerchantReview, decorator: Google::Apis::MerchantapiReviewsV1beta::MerchantReview::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListProductReviewsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :product_reviews, as: 'productReviews', class: Google::Apis::MerchantapiReviewsV1beta::ProductReview, decorator: Google::Apis::MerchantapiReviewsV1beta::ProductReview::Representation
      
        end
      end
      
      class MerchantReview
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attributes, as: 'attributes', class: Google::Apis::MerchantapiReviewsV1beta::MerchantReviewAttributes, decorator: Google::Apis::MerchantapiReviewsV1beta::MerchantReviewAttributes::Representation
      
          collection :custom_attributes, as: 'customAttributes', class: Google::Apis::MerchantapiReviewsV1beta::CustomAttribute, decorator: Google::Apis::MerchantapiReviewsV1beta::CustomAttribute::Representation
      
          property :data_source, as: 'dataSource'
          property :merchant_review_id, as: 'merchantReviewId'
          property :merchant_review_status, as: 'merchantReviewStatus', class: Google::Apis::MerchantapiReviewsV1beta::MerchantReviewStatus, decorator: Google::Apis::MerchantapiReviewsV1beta::MerchantReviewStatus::Representation
      
          property :name, as: 'name'
        end
      end
      
      class MerchantReviewAttributes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :collection_method, as: 'collectionMethod'
          property :content, as: 'content'
          property :is_anonymous, as: 'isAnonymous'
          property :max_rating, :numeric_string => true, as: 'maxRating'
          property :merchant_display_name, as: 'merchantDisplayName'
          property :merchant_id, as: 'merchantId'
          property :merchant_link, as: 'merchantLink'
          property :merchant_rating_link, as: 'merchantRatingLink'
          property :min_rating, :numeric_string => true, as: 'minRating'
          property :rating, as: 'rating'
          property :review_country, as: 'reviewCountry'
          property :review_language, as: 'reviewLanguage'
          property :review_time, as: 'reviewTime'
          property :reviewer_id, as: 'reviewerId'
          property :reviewer_username, as: 'reviewerUsername'
          property :title, as: 'title'
        end
      end
      
      class MerchantReviewDestinationStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reporting_context, as: 'reportingContext'
        end
      end
      
      class MerchantReviewItemLevelIssue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute, as: 'attribute'
          property :code, as: 'code'
          property :description, as: 'description'
          property :detail, as: 'detail'
          property :documentation, as: 'documentation'
          property :reporting_context, as: 'reportingContext'
          property :resolution, as: 'resolution'
          property :severity, as: 'severity'
        end
      end
      
      class MerchantReviewStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          collection :destination_statuses, as: 'destinationStatuses', class: Google::Apis::MerchantapiReviewsV1beta::MerchantReviewDestinationStatus, decorator: Google::Apis::MerchantapiReviewsV1beta::MerchantReviewDestinationStatus::Representation
      
          collection :item_level_issues, as: 'itemLevelIssues', class: Google::Apis::MerchantapiReviewsV1beta::MerchantReviewItemLevelIssue, decorator: Google::Apis::MerchantapiReviewsV1beta::MerchantReviewItemLevelIssue::Representation
      
          property :last_update_time, as: 'lastUpdateTime'
        end
      end
      
      class ProductChange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_value, as: 'newValue'
          property :old_value, as: 'oldValue'
          property :region_code, as: 'regionCode'
          property :reporting_context, as: 'reportingContext'
        end
      end
      
      class ProductReview
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attributes, as: 'attributes', class: Google::Apis::MerchantapiReviewsV1beta::ProductReviewAttributes, decorator: Google::Apis::MerchantapiReviewsV1beta::ProductReviewAttributes::Representation
      
          collection :custom_attributes, as: 'customAttributes', class: Google::Apis::MerchantapiReviewsV1beta::CustomAttribute, decorator: Google::Apis::MerchantapiReviewsV1beta::CustomAttribute::Representation
      
          property :data_source, as: 'dataSource'
          property :name, as: 'name'
          property :product_review_id, as: 'productReviewId'
          property :product_review_status, as: 'productReviewStatus', class: Google::Apis::MerchantapiReviewsV1beta::ProductReviewStatus, decorator: Google::Apis::MerchantapiReviewsV1beta::ProductReviewStatus::Representation
      
        end
      end
      
      class ProductReviewAttributes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregator_name, as: 'aggregatorName'
          collection :asins, as: 'asins'
          collection :brands, as: 'brands'
          property :collection_method, as: 'collectionMethod'
          collection :cons, as: 'cons'
          property :content, as: 'content'
          collection :gtins, as: 'gtins'
          property :is_spam, as: 'isSpam'
          property :max_rating, :numeric_string => true, as: 'maxRating'
          property :min_rating, :numeric_string => true, as: 'minRating'
          collection :mpns, as: 'mpns'
          collection :product_links, as: 'productLinks'
          collection :product_names, as: 'productNames'
          collection :pros, as: 'pros'
          property :publisher_favicon, as: 'publisherFavicon'
          property :publisher_name, as: 'publisherName'
          property :rating, as: 'rating'
          property :review_country, as: 'reviewCountry'
          property :review_language, as: 'reviewLanguage'
          property :review_link, as: 'reviewLink', class: Google::Apis::MerchantapiReviewsV1beta::ReviewLink, decorator: Google::Apis::MerchantapiReviewsV1beta::ReviewLink::Representation
      
          property :review_time, as: 'reviewTime'
          property :reviewer_id, as: 'reviewerId'
          collection :reviewer_image_links, as: 'reviewerImageLinks'
          property :reviewer_is_anonymous, as: 'reviewerIsAnonymous'
          property :reviewer_username, as: 'reviewerUsername'
          collection :skus, as: 'skus'
          property :subclient_name, as: 'subclientName'
          property :title, as: 'title'
          property :transaction_id, as: 'transactionId'
        end
      end
      
      class ProductReviewDestinationStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reporting_context, as: 'reportingContext'
        end
      end
      
      class ProductReviewItemLevelIssue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute, as: 'attribute'
          property :code, as: 'code'
          property :description, as: 'description'
          property :detail, as: 'detail'
          property :documentation, as: 'documentation'
          property :reporting_context, as: 'reportingContext'
          property :resolution, as: 'resolution'
          property :severity, as: 'severity'
        end
      end
      
      class ProductReviewStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          collection :destination_statuses, as: 'destinationStatuses', class: Google::Apis::MerchantapiReviewsV1beta::ProductReviewDestinationStatus, decorator: Google::Apis::MerchantapiReviewsV1beta::ProductReviewDestinationStatus::Representation
      
          collection :item_level_issues, as: 'itemLevelIssues', class: Google::Apis::MerchantapiReviewsV1beta::ProductReviewItemLevelIssue, decorator: Google::Apis::MerchantapiReviewsV1beta::ProductReviewItemLevelIssue::Representation
      
          property :last_update_time, as: 'lastUpdateTime'
        end
      end
      
      class ProductStatusChangeMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, as: 'account'
          property :attribute, as: 'attribute'
          collection :changes, as: 'changes', class: Google::Apis::MerchantapiReviewsV1beta::ProductChange, decorator: Google::Apis::MerchantapiReviewsV1beta::ProductChange::Representation
      
          property :managing_account, as: 'managingAccount'
          property :resource, as: 'resource'
          property :resource_id, as: 'resourceId'
          property :resource_type, as: 'resourceType'
        end
      end
      
      class ReviewLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :link, as: 'link'
          property :type, as: 'type'
        end
      end
    end
  end
end
