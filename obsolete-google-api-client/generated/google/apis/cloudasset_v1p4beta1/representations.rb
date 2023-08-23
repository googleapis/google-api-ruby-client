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
    module CloudassetV1p4beta1
      
      class AccessSelector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalyzeIamPolicyResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportIamPolicyAnalysisRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcsDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssetV1p4beta1Access
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssetV1p4beta1AccessControlList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssetV1p4beta1AnalysisState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssetV1p4beta1Edge
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssetV1p4beta1Identity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssetV1p4beta1IdentityList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssetV1p4beta1Resource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IamPolicyAnalysis
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IamPolicyAnalysisOutputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IamPolicyAnalysisQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IamPolicyAnalysisResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IdentitySelector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Options
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceSelector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccessSelector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
          collection :roles, as: 'roles'
        end
      end
      
      class AnalyzeIamPolicyResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fully_explored, as: 'fullyExplored'
          property :main_analysis, as: 'mainAnalysis', class: Google::Apis::CloudassetV1p4beta1::IamPolicyAnalysis, decorator: Google::Apis::CloudassetV1p4beta1::IamPolicyAnalysis::Representation
      
          collection :non_critical_errors, as: 'nonCriticalErrors', class: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1AnalysisState, decorator: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1AnalysisState::Representation
      
          collection :service_account_impersonation_analysis, as: 'serviceAccountImpersonationAnalysis', class: Google::Apis::CloudassetV1p4beta1::IamPolicyAnalysis, decorator: Google::Apis::CloudassetV1p4beta1::IamPolicyAnalysis::Representation
      
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::CloudassetV1p4beta1::Expr, decorator: Google::Apis::CloudassetV1p4beta1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class ExportIamPolicyAnalysisRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analysis_query, as: 'analysisQuery', class: Google::Apis::CloudassetV1p4beta1::IamPolicyAnalysisQuery, decorator: Google::Apis::CloudassetV1p4beta1::IamPolicyAnalysisQuery::Representation
      
          property :options, as: 'options', class: Google::Apis::CloudassetV1p4beta1::Options, decorator: Google::Apis::CloudassetV1p4beta1::Options::Representation
      
          property :output_config, as: 'outputConfig', class: Google::Apis::CloudassetV1p4beta1::IamPolicyAnalysisOutputConfig, decorator: Google::Apis::CloudassetV1p4beta1::IamPolicyAnalysisOutputConfig::Representation
      
        end
      end
      
      class Expr
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :expression, as: 'expression'
          property :location, as: 'location'
          property :title, as: 'title'
        end
      end
      
      class GcsDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudAssetV1p4beta1Access
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analysis_state, as: 'analysisState', class: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1AnalysisState, decorator: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1AnalysisState::Representation
      
          property :permission, as: 'permission'
          property :role, as: 'role'
        end
      end
      
      class GoogleCloudAssetV1p4beta1AccessControlList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accesses, as: 'accesses', class: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1Access, decorator: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1Access::Representation
      
          collection :resource_edges, as: 'resourceEdges', class: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1Edge, decorator: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1Edge::Representation
      
          collection :resources, as: 'resources', class: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1Resource, decorator: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1Resource::Representation
      
        end
      end
      
      class GoogleCloudAssetV1p4beta1AnalysisState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cause, as: 'cause'
          property :code, as: 'code'
        end
      end
      
      class GoogleCloudAssetV1p4beta1Edge
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source_node, as: 'sourceNode'
          property :target_node, as: 'targetNode'
        end
      end
      
      class GoogleCloudAssetV1p4beta1Identity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analysis_state, as: 'analysisState', class: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1AnalysisState, decorator: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1AnalysisState::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudAssetV1p4beta1IdentityList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :group_edges, as: 'groupEdges', class: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1Edge, decorator: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1Edge::Representation
      
          collection :identities, as: 'identities', class: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1Identity, decorator: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1Identity::Representation
      
        end
      end
      
      class GoogleCloudAssetV1p4beta1Resource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analysis_state, as: 'analysisState', class: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1AnalysisState, decorator: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1AnalysisState::Representation
      
          property :full_resource_name, as: 'fullResourceName'
        end
      end
      
      class IamPolicyAnalysis
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analysis_query, as: 'analysisQuery', class: Google::Apis::CloudassetV1p4beta1::IamPolicyAnalysisQuery, decorator: Google::Apis::CloudassetV1p4beta1::IamPolicyAnalysisQuery::Representation
      
          collection :analysis_results, as: 'analysisResults', class: Google::Apis::CloudassetV1p4beta1::IamPolicyAnalysisResult, decorator: Google::Apis::CloudassetV1p4beta1::IamPolicyAnalysisResult::Representation
      
          property :fully_explored, as: 'fullyExplored'
        end
      end
      
      class IamPolicyAnalysisOutputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_destination, as: 'gcsDestination', class: Google::Apis::CloudassetV1p4beta1::GcsDestination, decorator: Google::Apis::CloudassetV1p4beta1::GcsDestination::Representation
      
        end
      end
      
      class IamPolicyAnalysisQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_selector, as: 'accessSelector', class: Google::Apis::CloudassetV1p4beta1::AccessSelector, decorator: Google::Apis::CloudassetV1p4beta1::AccessSelector::Representation
      
          property :identity_selector, as: 'identitySelector', class: Google::Apis::CloudassetV1p4beta1::IdentitySelector, decorator: Google::Apis::CloudassetV1p4beta1::IdentitySelector::Representation
      
          property :parent, as: 'parent'
          property :resource_selector, as: 'resourceSelector', class: Google::Apis::CloudassetV1p4beta1::ResourceSelector, decorator: Google::Apis::CloudassetV1p4beta1::ResourceSelector::Representation
      
        end
      end
      
      class IamPolicyAnalysisResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :access_control_lists, as: 'accessControlLists', class: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1AccessControlList, decorator: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1AccessControlList::Representation
      
          property :attached_resource_full_name, as: 'attachedResourceFullName'
          property :fully_explored, as: 'fullyExplored'
          property :iam_binding, as: 'iamBinding', class: Google::Apis::CloudassetV1p4beta1::Binding, decorator: Google::Apis::CloudassetV1p4beta1::Binding::Representation
      
          property :identity_list, as: 'identityList', class: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1IdentityList, decorator: Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1IdentityList::Representation
      
        end
      end
      
      class IdentitySelector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :identity, as: 'identity'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::CloudassetV1p4beta1::Status, decorator: Google::Apis::CloudassetV1p4beta1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class Options
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analyze_service_account_impersonation, as: 'analyzeServiceAccountImpersonation'
          property :expand_groups, as: 'expandGroups'
          property :expand_resources, as: 'expandResources'
          property :expand_roles, as: 'expandRoles'
          property :output_group_edges, as: 'outputGroupEdges'
          property :output_resource_edges, as: 'outputResourceEdges'
        end
      end
      
      class ResourceSelector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :full_resource_name, as: 'fullResourceName'
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
    end
  end
end
