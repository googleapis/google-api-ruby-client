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
    module ChromewebstoreV1_1
      
      # 
      class Item
        include Google::Apis::Core::Hashable
      
        # The CRX version of the item. If the projection is draft, then it is the draft'
        # s CRX version.
        # Corresponds to the JSON property `crxVersion`
        # @return [String]
        attr_accessor :crx_version
      
        # Unique ID of the item.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Detail human-readable status of the operation, in English only. Same error
        # messages are displayed when you upload your app to the Chrome Web Store.
        # Corresponds to the JSON property `itemError`
        # @return [Array<Google::Apis::ChromewebstoreV1_1::ItemError>]
        attr_accessor :item_error
      
        # Identifies this resource as an Item. Value: the fixed string "chromewebstore#
        # item".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Public key of this item.
        # Corresponds to the JSON property `publicKey`
        # @return [String]
        attr_accessor :public_key
      
        # Status of the operation. Possible values are: - \"FAILURE\" - \"IN_PROGRESS\" -
        # \"NOT_FOUND\" - \"SUCCESS\"
        # Corresponds to the JSON property `uploadState`
        # @return [String]
        attr_accessor :upload_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @crx_version = args[:crx_version] if args.key?(:crx_version)
          @id = args[:id] if args.key?(:id)
          @item_error = args[:item_error] if args.key?(:item_error)
          @kind = args[:kind] if args.key?(:kind)
          @public_key = args[:public_key] if args.key?(:public_key)
          @upload_state = args[:upload_state] if args.key?(:upload_state)
        end
      end
      
      # 
      class Item2
        include Google::Apis::Core::Hashable
      
        # The ID of this item.
        # Corresponds to the JSON property `item_id`
        # @return [String]
        attr_accessor :item_id
      
        # Static string value is always "chromewebstore#item".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The status code of this publish operation. It may contain multiple elements
        # from the following list: NOT_AUTHORIZED, INVALID_DEVELOPER,
        # DEVELOPER_NO_OWNERSHIP, DEVELOPER_SUSPENDED, ITEM_NOT_FOUND,
        # ITEM_PENDING_REVIEW, ITEM_TAKEN_DOWN, PUBLISHER_SUSPENDED.
        # Corresponds to the JSON property `status`
        # @return [Array<String>]
        attr_accessor :status
      
        # Detailed human-comprehensible explanation of the status code above.
        # Corresponds to the JSON property `statusDetail`
        # @return [Array<String>]
        attr_accessor :status_detail
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @item_id = args[:item_id] if args.key?(:item_id)
          @kind = args[:kind] if args.key?(:kind)
          @status = args[:status] if args.key?(:status)
          @status_detail = args[:status_detail] if args.key?(:status_detail)
        end
      end
      
      # Error of the item
      class ItemError
        include Google::Apis::Core::Hashable
      
        # The error code.
        # Corresponds to the JSON property `error_code`
        # @return [String]
        attr_accessor :error_code
      
        # The human-readable detail message of the error.
        # Corresponds to the JSON property `error_detail`
        # @return [String]
        attr_accessor :error_detail
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_code = args[:error_code] if args.key?(:error_code)
          @error_detail = args[:error_detail] if args.key?(:error_detail)
        end
      end
      
      # 
      class PublishRequest
        include Google::Apis::Core::Hashable
      
        # The target deploy percentage of the item. It's only useful for items with big
        # user base.
        # Corresponds to the JSON property `deployPercentage`
        # @return [Fixnum]
        attr_accessor :deploy_percentage
      
        # Optional. The caller request to exempt the review and directly publish because
        # the update is within the list that we can automatically validate. The API will
        # check if the exemption can be granted using real time data.
        # Corresponds to the JSON property `reviewExemption`
        # @return [Boolean]
        attr_accessor :review_exemption
        alias_method :review_exemption?, :review_exemption
      
        # The publish target of this publish operation. This is the same as using
        # publishTarget as a URL query parameter. The string value can either be target="
        # trustedTesters" or target="default". The default value, if none is supplied,
        # is target="default". Recommended usage is to use the URL query parameter to
        # specificy the value.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deploy_percentage = args[:deploy_percentage] if args.key?(:deploy_percentage)
          @review_exemption = args[:review_exemption] if args.key?(:review_exemption)
          @target = args[:target] if args.key?(:target)
        end
      end
    end
  end
end
