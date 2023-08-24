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
    module CloudtraceV2beta1
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Result returned from `ListTraceSinks`.
      class ListTraceSinksResponse
        include Google::Apis::Core::Hashable
      
        # If there might be more results than appear in this response, then `
        # nextPageToken` is included. To get the next set of results, call the same
        # method again using the value of `nextPageToken` as `pageToken`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of sinks.
        # Corresponds to the JSON property `sinks`
        # @return [Array<Google::Apis::CloudtraceV2beta1::TraceSink>]
        attr_accessor :sinks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @sinks = args[:sinks] if args.key?(:sinks)
        end
      end
      
      # OutputConfig contains a destination for writing trace data.
      class OutputConfig
        include Google::Apis::Core::Hashable
      
        # The destination for writing trace data. Currently only BigQuery is supported.
        # E.g.: "bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]"
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination = args[:destination] if args.key?(:destination)
        end
      end
      
      # Describes a sink used to export traces to a BigQuery dataset. The sink must be
      # created within a project.
      class TraceSink
        include Google::Apis::Core::Hashable
      
        # Required. The canonical sink resource name, unique within the project. Must be
        # of the form: project/[PROJECT_NUMBER]/traceSinks/[SINK_ID]. E.g.: `"projects/
        # 12345/traceSinks/my-project-trace-sink"`. Sink identifiers are limited to 256
        # characters and can include only the following characters: upper and lower-case
        # alphanumeric characters, underscores, hyphens, and periods.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # OutputConfig contains a destination for writing trace data.
        # Corresponds to the JSON property `outputConfig`
        # @return [Google::Apis::CloudtraceV2beta1::OutputConfig]
        attr_accessor :output_config
      
        # Output only. A service account name for exporting the data. This field is set
        # by sinks.create and sinks.update. The service account will need to be granted
        # write access to the destination specified in the output configuration, see [
        # Granting access for a resource](/iam/docs/granting-roles-to-service-accounts#
        # granting_access_to_a_service_account_for_a_resource). To create tables and
        # write data this account will need the dataEditor role. Read more about roles
        # in the [BigQuery documentation](https://cloud.google.com/bigquery/docs/access-
        # control). E.g.: "service-00000001@00000002.iam.gserviceaccount.com"
        # Corresponds to the JSON property `writerIdentity`
        # @return [String]
        attr_accessor :writer_identity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @output_config = args[:output_config] if args.key?(:output_config)
          @writer_identity = args[:writer_identity] if args.key?(:writer_identity)
        end
      end
    end
  end
end
