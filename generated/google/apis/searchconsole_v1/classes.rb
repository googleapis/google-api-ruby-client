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

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module SearchconsoleV1
      
      # Mobile-friendly test request.
      class RunMobileFriendlyTestRequest
        include Google::Apis::Core::Hashable
      
        # URL for inspection.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        # Whether or not screenshot is requested. Default is false.
        # Corresponds to the JSON property `requestScreenshot`
        # @return [Boolean]
        attr_accessor :request_screenshot
        alias_method :request_screenshot?, :request_screenshot
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @url = args[:url] if args.key?(:url)
          @request_screenshot = args[:request_screenshot] if args.key?(:request_screenshot)
        end
      end
      
      # Describe image data.
      class Image
        include Google::Apis::Core::Hashable
      
        # The mime-type of the image data.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Image data in format determined by the mime type. Currently, the format
        # will always be "image/png", but this might change in the future.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @data = args[:data] if args.key?(:data)
        end
      end
      
      # Mobile-friendly issue.
      class MobileFriendlyIssue
        include Google::Apis::Core::Hashable
      
        # Rule violated.
        # Corresponds to the JSON property `rule`
        # @return [String]
        attr_accessor :rule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rule = args[:rule] if args.key?(:rule)
        end
      end
      
      # Mobile-friendly test response, including mobile-friendly issues and resource
      # issues.
      class RunMobileFriendlyTestResponse
        include Google::Apis::Core::Hashable
      
        # Information about embedded resources issues.
        # Corresponds to the JSON property `resourceIssues`
        # @return [Array<Google::Apis::SearchconsoleV1::ResourceIssue>]
        attr_accessor :resource_issues
      
        # Final state of the test, including error details if necessary.
        # Corresponds to the JSON property `testStatus`
        # @return [Google::Apis::SearchconsoleV1::TestStatus]
        attr_accessor :test_status
      
        # Test verdict, whether the page is mobile friendly or not.
        # Corresponds to the JSON property `mobileFriendliness`
        # @return [String]
        attr_accessor :mobile_friendliness
      
        # List of mobile-usability issues.
        # Corresponds to the JSON property `mobileFriendlyIssues`
        # @return [Array<Google::Apis::SearchconsoleV1::MobileFriendlyIssue>]
        attr_accessor :mobile_friendly_issues
      
        # Describe image data.
        # Corresponds to the JSON property `screenshot`
        # @return [Google::Apis::SearchconsoleV1::Image]
        attr_accessor :screenshot
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_issues = args[:resource_issues] if args.key?(:resource_issues)
          @test_status = args[:test_status] if args.key?(:test_status)
          @mobile_friendliness = args[:mobile_friendliness] if args.key?(:mobile_friendliness)
          @mobile_friendly_issues = args[:mobile_friendly_issues] if args.key?(:mobile_friendly_issues)
          @screenshot = args[:screenshot] if args.key?(:screenshot)
        end
      end
      
      # Information about a resource with issue.
      class ResourceIssue
        include Google::Apis::Core::Hashable
      
        # Blocked resource.
        # Corresponds to the JSON property `blockedResource`
        # @return [Google::Apis::SearchconsoleV1::BlockedResource]
        attr_accessor :blocked_resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blocked_resource = args[:blocked_resource] if args.key?(:blocked_resource)
        end
      end
      
      # Blocked resource.
      class BlockedResource
        include Google::Apis::Core::Hashable
      
        # URL of the blocked resource.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Final state of the test, including error details if necessary.
      class TestStatus
        include Google::Apis::Core::Hashable
      
        # Status of the test.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Error details if applicable.
        # Corresponds to the JSON property `details`
        # @return [String]
        attr_accessor :details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status = args[:status] if args.key?(:status)
          @details = args[:details] if args.key?(:details)
        end
      end
    end
  end
end
