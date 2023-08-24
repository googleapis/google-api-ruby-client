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
    module ChromeuxreportV1
      
      # A bin is a discrete portion of data spanning from start to end, or if no end
      # is given, then from start to +inf. A bin's start and end values are given in
      # the value type of the metric it represents. For example, "first contentful
      # paint" is measured in milliseconds and exposed as ints, therefore its metric
      # bins will use int32s for its start and end types. However, "cumulative layout
      # shift" is measured in unitless decimals and is exposed as a decimal encoded as
      # a string, therefore its metric bins will use strings for its value type.
      class Bin
        include Google::Apis::Core::Hashable
      
        # The proportion of users that experienced this bin's value for the given metric.
        # Corresponds to the JSON property `density`
        # @return [Float]
        attr_accessor :density
      
        # End is the end of the data bin. If end is not populated, then the bin has no
        # end and is valid from start to +inf.
        # Corresponds to the JSON property `end`
        # @return [Object]
        attr_accessor :end
      
        # Start is the beginning of the data bin.
        # Corresponds to the JSON property `start`
        # @return [Object]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @density = args[:density] if args.key?(:density)
          @end = args[:end] if args.key?(:end)
          @start = args[:start] if args.key?(:start)
        end
      end
      
      # Key defines all the dimensions that identify this record as unique.
      class Key
        include Google::Apis::Core::Hashable
      
        # The effective connection type is the general connection class that all users
        # experienced for this record. This field uses the values ["offline", "slow-2G",
        # "2G", "3G", "4G"] as specified in: https://wicg.github.io/netinfo/#effective-
        # connection-types If the effective connection type is unspecified, then
        # aggregated data over all effective connection types will be returned.
        # Corresponds to the JSON property `effectiveConnectionType`
        # @return [String]
        attr_accessor :effective_connection_type
      
        # The form factor is the device class that all users used to access the site for
        # this record. If the form factor is unspecified, then aggregated data over all
        # form factors will be returned.
        # Corresponds to the JSON property `formFactor`
        # @return [String]
        attr_accessor :form_factor
      
        # Origin specifies the origin that this record is for. Note: When specifying an
        # origin, data for loads under this origin over all pages are aggregated into
        # origin level user experience data.
        # Corresponds to the JSON property `origin`
        # @return [String]
        attr_accessor :origin
      
        # Url specifies a specific url that this record is for. Note: When specifying a "
        # url" only data for that specific url will be aggregated.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @effective_connection_type = args[:effective_connection_type] if args.key?(:effective_connection_type)
          @form_factor = args[:form_factor] if args.key?(:form_factor)
          @origin = args[:origin] if args.key?(:origin)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # A `metric` is a set of user experience data for a single web performance
      # metric, like "first contentful paint". It contains a summary histogram of real
      # world Chrome usage as a series of `bins`.
      class Metric
        include Google::Apis::Core::Hashable
      
        # The histogram of user experiences for a metric. The histogram will have at
        # least one bin and the densities of all bins will add up to ~1.
        # Corresponds to the JSON property `histogram`
        # @return [Array<Google::Apis::ChromeuxreportV1::Bin>]
        attr_accessor :histogram
      
        # Percentiles contains synthetic values of a metric at a given statistical
        # percentile. These are used for estimating a metric's value as experienced by a
        # percentage of users out of the total number of users.
        # Corresponds to the JSON property `percentiles`
        # @return [Google::Apis::ChromeuxreportV1::Percentiles]
        attr_accessor :percentiles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @histogram = args[:histogram] if args.key?(:histogram)
          @percentiles = args[:percentiles] if args.key?(:percentiles)
        end
      end
      
      # Percentiles contains synthetic values of a metric at a given statistical
      # percentile. These are used for estimating a metric's value as experienced by a
      # percentage of users out of the total number of users.
      class Percentiles
        include Google::Apis::Core::Hashable
      
        # 75% of users experienced the given metric at or below this value.
        # Corresponds to the JSON property `p75`
        # @return [Object]
        attr_accessor :p75
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @p75 = args[:p75] if args.key?(:p75)
        end
      end
      
      # Request payload sent by a physical web client. This request includes all
      # necessary context to load a particular user experience record.
      class QueryRequest
        include Google::Apis::Core::Hashable
      
        # The effective connection type is a query dimension that specifies the
        # effective network class that the record's data should belong to. This field
        # uses the values ["offline", "slow-2G", "2G", "3G", "4G"] as specified in:
        # https://wicg.github.io/netinfo/#effective-connection-types Note: If no
        # effective connection type is specified, then a special record with aggregated
        # data over all effective connection types will be returned.
        # Corresponds to the JSON property `effectiveConnectionType`
        # @return [String]
        attr_accessor :effective_connection_type
      
        # The form factor is a query dimension that specifies the device class that the
        # record's data should belong to. Note: If no form factor is specified, then a
        # special record with aggregated data over all form factors will be returned.
        # Corresponds to the JSON property `formFactor`
        # @return [String]
        attr_accessor :form_factor
      
        # The metrics that should be included in the response. If none are specified
        # then any metrics found will be returned. Allowed values: ["
        # first_contentful_paint", "first_input_delay", "largest_contentful_paint", "
        # cumulative_layout_shift"]
        # Corresponds to the JSON property `metrics`
        # @return [Array<String>]
        attr_accessor :metrics
      
        # The url pattern "origin" refers to a url pattern that is the origin of a
        # website. Examples: "https://example.com", "https://cloud.google.com"
        # Corresponds to the JSON property `origin`
        # @return [String]
        attr_accessor :origin
      
        # The url pattern "url" refers to a url pattern that is any arbitrary url.
        # Examples: "https://example.com/", "https://cloud.google.com/why-google-cloud/"
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @effective_connection_type = args[:effective_connection_type] if args.key?(:effective_connection_type)
          @form_factor = args[:form_factor] if args.key?(:form_factor)
          @metrics = args[:metrics] if args.key?(:metrics)
          @origin = args[:origin] if args.key?(:origin)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Response payload sent back to a physical web client. This response contains
      # the record found based on the identiers present in a `QueryRequest`. The
      # returned response will have a record, and sometimes details on normalization
      # actions taken on the request that were necessary to make the request
      # successful.
      class QueryResponse
        include Google::Apis::Core::Hashable
      
        # Record is a single Chrome UX report data record. It contains use experience
        # statistics for a single url pattern and set of dimensions.
        # Corresponds to the JSON property `record`
        # @return [Google::Apis::ChromeuxreportV1::Record]
        attr_accessor :record
      
        # Object representing the normalization actions taken to normalize a url to
        # achieve a higher chance of successful lookup. These are simple automated
        # changes that are taken when looking up the provided `url_patten` would be
        # known to fail. Complex actions like following redirects are not handled.
        # Corresponds to the JSON property `urlNormalizationDetails`
        # @return [Google::Apis::ChromeuxreportV1::UrlNormalization]
        attr_accessor :url_normalization_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @record = args[:record] if args.key?(:record)
          @url_normalization_details = args[:url_normalization_details] if args.key?(:url_normalization_details)
        end
      end
      
      # Record is a single Chrome UX report data record. It contains use experience
      # statistics for a single url pattern and set of dimensions.
      class Record
        include Google::Apis::Core::Hashable
      
        # Key defines all the dimensions that identify this record as unique.
        # Corresponds to the JSON property `key`
        # @return [Google::Apis::ChromeuxreportV1::Key]
        attr_accessor :key
      
        # Metrics is the map of user experience data available for the record defined in
        # the key field. Metrics are keyed on the metric name. Allowed key values: ["
        # first_contentful_paint", "first_input_delay", "largest_contentful_paint", "
        # cumulative_layout_shift"]
        # Corresponds to the JSON property `metrics`
        # @return [Hash<String,Google::Apis::ChromeuxreportV1::Metric>]
        attr_accessor :metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @metrics = args[:metrics] if args.key?(:metrics)
        end
      end
      
      # Object representing the normalization actions taken to normalize a url to
      # achieve a higher chance of successful lookup. These are simple automated
      # changes that are taken when looking up the provided `url_patten` would be
      # known to fail. Complex actions like following redirects are not handled.
      class UrlNormalization
        include Google::Apis::Core::Hashable
      
        # The URL after any normalization actions. This is a valid user experience URL
        # that could reasonably be looked up.
        # Corresponds to the JSON property `normalizedUrl`
        # @return [String]
        attr_accessor :normalized_url
      
        # The original requested URL prior to any normalization actions.
        # Corresponds to the JSON property `originalUrl`
        # @return [String]
        attr_accessor :original_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @normalized_url = args[:normalized_url] if args.key?(:normalized_url)
          @original_url = args[:original_url] if args.key?(:original_url)
        end
      end
    end
  end
end
