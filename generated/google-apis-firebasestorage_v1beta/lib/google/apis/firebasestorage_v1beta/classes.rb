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
    module FirebasestorageV1beta
      
      # The request used to link a Google Cloud Storage bucket to a Firebase project.
      class AddFirebaseRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A storage bucket and its relation to a parent Firebase project.
      class Bucket
        include Google::Apis::Core::Hashable
      
        # Output only. Resource name of the bucket.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Spark tier-eligible Cloud Storage bucket. One per project. This resource
      # exists if the underlying Cloud Storage bucket exists and it is linked to your
      # Firebase project. See https://firebase.google.com/pricing for pricing details.
      class DefaultBucket
        include Google::Apis::Core::Hashable
      
        # A storage bucket and its relation to a parent Firebase project.
        # Corresponds to the JSON property `bucket`
        # @return [Google::Apis::FirebasestorageV1beta::Bucket]
        attr_accessor :bucket
      
        # Immutable. Location of the default bucket.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Identifier. Resource name of the default bucket.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Immutable. Storage class of the default bucket. Supported values are available
        # at https://cloud.google.com/storage/docs/storage-classes#classes.
        # Corresponds to the JSON property `storageClass`
        # @return [String]
        attr_accessor :storage_class
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket = args[:bucket] if args.key?(:bucket)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @storage_class = args[:storage_class] if args.key?(:storage_class)
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
      
      # The response returned by `ListBuckets`.
      class ListBucketsResponse
        include Google::Apis::Core::Hashable
      
        # The list of linked buckets.
        # Corresponds to the JSON property `buckets`
        # @return [Array<Google::Apis::FirebasestorageV1beta::Bucket>]
        attr_accessor :buckets
      
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
          @buckets = args[:buckets] if args.key?(:buckets)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The request used to unlink a Google Cloud Storage bucket from a Firebase
      # project.
      class RemoveFirebaseRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
    end
  end
end
