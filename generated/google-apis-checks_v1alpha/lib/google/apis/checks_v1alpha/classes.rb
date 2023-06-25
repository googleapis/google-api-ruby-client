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
    module ChecksV1alpha
      
      # The request proto for AnalyzePrivacyPolicy method.
      class AnalyzePrivacyPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Web page raw HTML content for the privacy policy page to be analyzed. Useful
        # when the client wants to analyze a privacy policy already fetched.
        # Corresponds to the JSON property `privacyPolicyPageContent`
        # @return [String]
        attr_accessor :privacy_policy_page_content
      
        # URL for the privacy policy page to be analyzed. https://linter.aip.dev/140/uri
        # (Use `uri` instead of `url` in field name)
        # Corresponds to the JSON property `privacyPolicyUri`
        # @return [String]
        attr_accessor :privacy_policy_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @privacy_policy_page_content = args[:privacy_policy_page_content] if args.key?(:privacy_policy_page_content)
          @privacy_policy_uri = args[:privacy_policy_uri] if args.key?(:privacy_policy_uri)
        end
      end
      
      # The response proto for AnalyzePrivacyPolicy method.
      class AnalyzePrivacyPolicyResponse
        include Google::Apis::Core::Hashable
      
        # List of all data types in the privacy policy.
        # Corresponds to the JSON property `dataPurposeAnnotations`
        # @return [Array<Google::Apis::ChecksV1alpha::PolicyPurposeOfUseAnnotation>]
        attr_accessor :data_purpose_annotations
      
        # List of all data types in the privacy policy.
        # Corresponds to the JSON property `dataTypeAnnotations`
        # @return [Array<Google::Apis::ChecksV1alpha::PolicyDataTypeAnnotation>]
        attr_accessor :data_type_annotations
      
        # HTML content for the privacy policy page.
        # Corresponds to the JSON property `htmlContent`
        # @return [String]
        attr_accessor :html_content
      
        # Information about the date when the privacy policy was last updated.
        # Corresponds to the JSON property `lastUpdatedDateInfo`
        # @return [Google::Apis::ChecksV1alpha::LastUpdatedDate]
        attr_accessor :last_updated_date_info
      
        # List of all sections in the privacy policy.
        # Corresponds to the JSON property `sectionAnnotations`
        # @return [Array<Google::Apis::ChecksV1alpha::PolicySectionAnnotation>]
        attr_accessor :section_annotations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_purpose_annotations = args[:data_purpose_annotations] if args.key?(:data_purpose_annotations)
          @data_type_annotations = args[:data_type_annotations] if args.key?(:data_type_annotations)
          @html_content = args[:html_content] if args.key?(:html_content)
          @last_updated_date_info = args[:last_updated_date_info] if args.key?(:last_updated_date_info)
          @section_annotations = args[:section_annotations] if args.key?(:section_annotations)
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
      
      # Information about the date when the privacy policy was last updated.
      class LastUpdatedDate
        include Google::Apis::Core::Hashable
      
        # Byte offsets for the end of the date text inside the full text.
        # Corresponds to the JSON property `endOffset`
        # @return [Fixnum]
        attr_accessor :end_offset
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `lastUpdatedDate`
        # @return [Google::Apis::ChecksV1alpha::Date]
        attr_accessor :last_updated_date
      
        # Byte offsets for the start of the date text inside the full text.
        # Corresponds to the JSON property `startOffset`
        # @return [Fixnum]
        attr_accessor :start_offset
      
        # The bytes of actual text content in the section. NOTE: - This will correspond
        # to the whole sentence that includes the date. - This field might contain HTML
        # and it is not sanitized.
        # Corresponds to the JSON property `textContent`
        # @return [String]
        attr_accessor :text_content
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_offset = args[:end_offset] if args.key?(:end_offset)
          @last_updated_date = args[:last_updated_date] if args.key?(:last_updated_date)
          @start_offset = args[:start_offset] if args.key?(:start_offset)
          @text_content = args[:text_content] if args.key?(:text_content)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::ChecksV1alpha::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal response of the operation in case of success. If the original
        # method returns no data on success, such as `Delete`, the response is `google.
        # protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`,
        # the response should be the resource. For other methods, the response should
        # have the type `XxxResponse`, where `Xxx` is the original method name. For
        # example, if the original method name is `TakeSnapshot()`, the inferred
        # response type is `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # 
      class PolicyDataTypeAnnotation
        include Google::Apis::Core::Hashable
      
        # Type of the data mentioned in the policy.
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # Byte offsets for the end of the data type sentence inside the full text.
        # Corresponds to the JSON property `endOffset`
        # @return [Fixnum]
        attr_accessor :end_offset
      
        # Score given by the model representing how confident it was regarding this `
        # text_content` being of `data_type`.
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        # Byte offsets for the start of the data type sentence inside the full text.
        # Corresponds to the JSON property `startOffset`
        # @return [Fixnum]
        attr_accessor :start_offset
      
        # Actual text content in the section. This makes it much easier to consume the
        # information. NOTE: This field might contain HTML and does not guarantee a
        # SafeHtml security contract go/safehtmltypecontracts#safehtml.
        # Corresponds to the JSON property `textContent`
        # @return [String]
        attr_accessor :text_content
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_type = args[:data_type] if args.key?(:data_type)
          @end_offset = args[:end_offset] if args.key?(:end_offset)
          @score = args[:score] if args.key?(:score)
          @start_offset = args[:start_offset] if args.key?(:start_offset)
          @text_content = args[:text_content] if args.key?(:text_content)
        end
      end
      
      # 
      class PolicyPurposeOfUseAnnotation
        include Google::Apis::Core::Hashable
      
        # Byte offsets for the end of the purpose of use sentence inside the full text.
        # Corresponds to the JSON property `endOffset`
        # @return [Fixnum]
        attr_accessor :end_offset
      
        # Purpose of use mentioned in the policy.
        # Corresponds to the JSON property `purposeOfUse`
        # @return [String]
        attr_accessor :purpose_of_use
      
        # Score given by the model representing how confident it was regarding this `
        # text_content` being of `purpose_of_use`.
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        # Byte offsets for the start of the purpose of use sentence inside the full text.
        # Corresponds to the JSON property `startOffset`
        # @return [Fixnum]
        attr_accessor :start_offset
      
        # The bytes of actual text content in the sentence that mentions the purpose of
        # use. This makes it much easier to consume the information. NOTE: This field
        # might contain HTML and does not guarantee a SafeHtml security contract go/
        # safehtmltypecontracts#safehtml.
        # Corresponds to the JSON property `textContent`
        # @return [String]
        attr_accessor :text_content
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_offset = args[:end_offset] if args.key?(:end_offset)
          @purpose_of_use = args[:purpose_of_use] if args.key?(:purpose_of_use)
          @score = args[:score] if args.key?(:score)
          @start_offset = args[:start_offset] if args.key?(:start_offset)
          @text_content = args[:text_content] if args.key?(:text_content)
        end
      end
      
      # 
      class PolicySectionAnnotation
        include Google::Apis::Core::Hashable
      
        # Byte offsets for the end of the section inside the full text.
        # Corresponds to the JSON property `endOffset`
        # @return [Fixnum]
        attr_accessor :end_offset
      
        # Score given by the model representing how confident it was regarding this `
        # text_content` being of `section_type`.
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        # Type of the high-level category in the policy.
        # Corresponds to the JSON property `sectionType`
        # @return [String]
        attr_accessor :section_type
      
        # Byte offsets for the start of the section inside the full text.
        # Corresponds to the JSON property `startOffset`
        # @return [Fixnum]
        attr_accessor :start_offset
      
        # Actual text content in the section. This makes it much easier to consume the
        # information. NOTE: This field might contain HTML and does not guarantee a
        # SafeHtml security contract go/safehtmltypecontracts#safehtml.
        # Corresponds to the JSON property `textContent`
        # @return [String]
        attr_accessor :text_content
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_offset = args[:end_offset] if args.key?(:end_offset)
          @score = args[:score] if args.key?(:score)
          @section_type = args[:section_type] if args.key?(:section_type)
          @start_offset = args[:start_offset] if args.key?(:start_offset)
          @text_content = args[:text_content] if args.key?(:text_content)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
    end
  end
end
