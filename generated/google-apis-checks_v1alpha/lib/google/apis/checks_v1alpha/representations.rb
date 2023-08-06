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
      
      class AnalyzePrivacyPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalyzePrivacyPolicyResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FindPrivacyPolicyResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LastUpdatedDate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyDataTypeAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyPurposeOfUseAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicySectionAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WaitOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalyzePrivacyPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :privacy_policy_page_content, as: 'privacyPolicyPageContent'
          property :privacy_policy_uri, as: 'privacyPolicyUri'
        end
      end
      
      class AnalyzePrivacyPolicyResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_purpose_annotations, as: 'dataPurposeAnnotations', class: Google::Apis::ChecksV1alpha::PolicyPurposeOfUseAnnotation, decorator: Google::Apis::ChecksV1alpha::PolicyPurposeOfUseAnnotation::Representation
      
          collection :data_type_annotations, as: 'dataTypeAnnotations', class: Google::Apis::ChecksV1alpha::PolicyDataTypeAnnotation, decorator: Google::Apis::ChecksV1alpha::PolicyDataTypeAnnotation::Representation
      
          property :html_content, as: 'htmlContent'
          property :last_updated_date_info, as: 'lastUpdatedDateInfo', class: Google::Apis::ChecksV1alpha::LastUpdatedDate, decorator: Google::Apis::ChecksV1alpha::LastUpdatedDate::Representation
      
          collection :section_annotations, as: 'sectionAnnotations', class: Google::Apis::ChecksV1alpha::PolicySectionAnnotation, decorator: Google::Apis::ChecksV1alpha::PolicySectionAnnotation::Representation
      
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FindPrivacyPolicyResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :privacy_policy, as: 'privacyPolicy'
        end
      end
      
      class LastUpdatedDate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_offset, :numeric_string => true, as: 'endOffset'
          property :last_updated_date, as: 'lastUpdatedDate', class: Google::Apis::ChecksV1alpha::Date, decorator: Google::Apis::ChecksV1alpha::Date::Representation
      
          property :start_offset, :numeric_string => true, as: 'startOffset'
          property :text_content, as: 'textContent'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::ChecksV1alpha::Operation, decorator: Google::Apis::ChecksV1alpha::Operation::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::ChecksV1alpha::Status, decorator: Google::Apis::ChecksV1alpha::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class PolicyDataTypeAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_type, as: 'dataType'
          property :end_offset, :numeric_string => true, as: 'endOffset'
          property :score, as: 'score'
          property :start_offset, :numeric_string => true, as: 'startOffset'
          property :text_content, as: 'textContent'
        end
      end
      
      class PolicyPurposeOfUseAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_offset, :numeric_string => true, as: 'endOffset'
          property :purpose_of_use, as: 'purposeOfUse'
          property :score, as: 'score'
          property :start_offset, :numeric_string => true, as: 'startOffset'
          property :text_content, as: 'textContent'
        end
      end
      
      class PolicySectionAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_offset, :numeric_string => true, as: 'endOffset'
          property :score, as: 'score'
          property :section_type, as: 'sectionType'
          property :start_offset, :numeric_string => true, as: 'startOffset'
          property :text_content, as: 'textContent'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class WaitOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :timeout, as: 'timeout'
        end
      end
    end
  end
end
