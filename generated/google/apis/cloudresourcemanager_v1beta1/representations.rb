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
    module CloudresourcemanagerV1beta1
      
      class Project
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListProjectsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class GetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Rule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Condition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class LogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CounterOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DataAccessOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CloudAuditOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class TestIamPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class TestIamPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Project
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project_number, as: 'projectNumber'
          property :project_id, as: 'projectId'
          property :lifecycle_state, as: 'lifecycleState'
          property :name, as: 'name'
          property :create_time, as: 'createTime'
          hash :labels, as: 'labels'
        end
      end
      
      class ListProjectsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :projects, as: 'projects', class: Google::Apis::CloudresourcemanagerV1beta1::Project, decorator: Google::Apis::CloudresourcemanagerV1beta1::Project::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :version, as: 'version'
          collection :bindings, as: 'bindings', class: Google::Apis::CloudresourcemanagerV1beta1::Binding, decorator: Google::Apis::CloudresourcemanagerV1beta1::Binding::Representation
      
          collection :rules, as: 'rules', class: Google::Apis::CloudresourcemanagerV1beta1::Rule, decorator: Google::Apis::CloudresourcemanagerV1beta1::Rule::Representation
      
          property :etag, :base64 => true, as: 'etag'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :role, as: 'role'
          collection :members, as: 'members'
        end
      end
      
      class Rule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          collection :permissions, as: 'permissions'
          property :action, as: 'action'
          collection :in, as: 'in'
          collection :not_in, as: 'notIn'
          collection :conditions, as: 'conditions', class: Google::Apis::CloudresourcemanagerV1beta1::Condition, decorator: Google::Apis::CloudresourcemanagerV1beta1::Condition::Representation
      
          collection :log_config, as: 'logConfig', class: Google::Apis::CloudresourcemanagerV1beta1::LogConfig, decorator: Google::Apis::CloudresourcemanagerV1beta1::LogConfig::Representation
      
        end
      end
      
      class Condition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :iam, as: 'iam'
          property :sys, as: 'sys'
          property :svc, as: 'svc'
          property :op, as: 'op'
          property :value, as: 'value'
          collection :values, as: 'values'
        end
      end
      
      class LogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :counter, as: 'counter', class: Google::Apis::CloudresourcemanagerV1beta1::CounterOptions, decorator: Google::Apis::CloudresourcemanagerV1beta1::CounterOptions::Representation
      
          property :data_access, as: 'dataAccess', class: Google::Apis::CloudresourcemanagerV1beta1::DataAccessOptions, decorator: Google::Apis::CloudresourcemanagerV1beta1::DataAccessOptions::Representation
      
          property :cloud_audit, as: 'cloudAudit', class: Google::Apis::CloudresourcemanagerV1beta1::CloudAuditOptions, decorator: Google::Apis::CloudresourcemanagerV1beta1::CloudAuditOptions::Representation
      
        end
      end
      
      class CounterOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metric, as: 'metric'
          property :field, as: 'field'
        end
      end
      
      class DataAccessOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CloudAuditOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::CloudresourcemanagerV1beta1::Policy, decorator: Google::Apis::CloudresourcemanagerV1beta1::Policy::Representation
      
        end
      end
      
      class TestIamPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class TestIamPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
    end
  end
end
