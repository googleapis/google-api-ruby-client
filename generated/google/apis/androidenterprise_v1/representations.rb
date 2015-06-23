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
    module AndroidenterpriseV1
      
      class AppRestrictionsSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AppRestrictionsSchemaRestriction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AppRestrictionsSchemaRestrictionRestrictionValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AppVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ApprovalUrlInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Collection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListCollectionViewersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListCollectionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Device
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DeviceState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListDevicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Enterprise
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class EnterpriseAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListEnterprisesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Entitlement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListEntitlementsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class GroupLicense
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListGroupLicenseUsersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListGroupLicensesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Install
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListInstallsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Permission
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Product
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ProductPermission
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ProductPermissions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ApproveProductRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class GenerateProductApprovalUrlResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class User
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class UserToken
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListUsersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      # @private
      class AppRestrictionsSchema
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :restrictions, as: 'restrictions', class: Google::Apis::AndroidenterpriseV1::AppRestrictionsSchemaRestriction, decorator: Google::Apis::AndroidenterpriseV1::AppRestrictionsSchemaRestriction::Representation
      
        end
      end
      
      # @private
      class AppRestrictionsSchemaRestriction
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_value, as: 'defaultValue', class: Google::Apis::AndroidenterpriseV1::AppRestrictionsSchemaRestrictionRestrictionValue, decorator: Google::Apis::AndroidenterpriseV1::AppRestrictionsSchemaRestrictionRestrictionValue::Representation
      
          property :description, as: 'description'
          collection :entry, as: 'entry'
          collection :entry_value, as: 'entryValue'
          property :key, as: 'key'
          property :restriction_type, as: 'restrictionType'
          property :title, as: 'title'
        end
      end
      
      # @private
      class AppRestrictionsSchemaRestrictionRestrictionValue
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :value_bool, as: 'valueBool'
          property :value_integer, as: 'valueInteger'
          collection :value_multiselect, as: 'valueMultiselect'
          property :value_string, as: 'valueString'
        end
      end
      
      # @private
      class AppVersion
        class Representation < Google::Apis::Core::JsonRepresentation
          property :version_code, as: 'versionCode'
          property :version_string, as: 'versionString'
        end
      end
      
      # @private
      class ApprovalUrlInfo
        class Representation < Google::Apis::Core::JsonRepresentation
          property :approval_url, as: 'approvalUrl'
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class Collection
        class Representation < Google::Apis::Core::JsonRepresentation
          property :collection_id, as: 'collectionId'
          property :kind, as: 'kind'
          property :name, as: 'name'
          collection :product_id, as: 'productId'
          property :visibility, as: 'visibility'
        end
      end
      
      # @private
      class ListCollectionViewersResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :user, as: 'user', class: Google::Apis::AndroidenterpriseV1::User, decorator: Google::Apis::AndroidenterpriseV1::User::Representation
      
        end
      end
      
      # @private
      class ListCollectionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :collection, as: 'collection', class: Google::Apis::AndroidenterpriseV1::Collection, decorator: Google::Apis::AndroidenterpriseV1::Collection::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class Device
        class Representation < Google::Apis::Core::JsonRepresentation
          property :android_id, as: 'androidId'
          property :kind, as: 'kind'
          property :management_type, as: 'managementType'
        end
      end
      
      # @private
      class DeviceState
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_state, as: 'accountState'
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class ListDevicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :device, as: 'device', class: Google::Apis::AndroidenterpriseV1::Device, decorator: Google::Apis::AndroidenterpriseV1::Device::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class Enterprise
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :primary_domain, as: 'primaryDomain'
        end
      end
      
      # @private
      class EnterpriseAccount
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_email, as: 'accountEmail'
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class ListEnterprisesResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :enterprise, as: 'enterprise', class: Google::Apis::AndroidenterpriseV1::Enterprise, decorator: Google::Apis::AndroidenterpriseV1::Enterprise::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class Entitlement
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :product_id, as: 'productId'
          property :reason, as: 'reason'
        end
      end
      
      # @private
      class ListEntitlementsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entitlement, as: 'entitlement', class: Google::Apis::AndroidenterpriseV1::Entitlement, decorator: Google::Apis::AndroidenterpriseV1::Entitlement::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class GroupLicense
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acquisition_kind, as: 'acquisitionKind'
          property :approval, as: 'approval'
          property :kind, as: 'kind'
          property :num_provisioned, as: 'numProvisioned'
          property :num_purchased, as: 'numPurchased'
          property :product_id, as: 'productId'
        end
      end
      
      # @private
      class ListGroupLicenseUsersResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :user, as: 'user', class: Google::Apis::AndroidenterpriseV1::User, decorator: Google::Apis::AndroidenterpriseV1::User::Representation
      
        end
      end
      
      # @private
      class ListGroupLicensesResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :group_license, as: 'groupLicense', class: Google::Apis::AndroidenterpriseV1::GroupLicense, decorator: Google::Apis::AndroidenterpriseV1::GroupLicense::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class Install
        class Representation < Google::Apis::Core::JsonRepresentation
          property :install_state, as: 'installState'
          property :kind, as: 'kind'
          property :product_id, as: 'productId'
          property :version_code, as: 'versionCode'
        end
      end
      
      # @private
      class ListInstallsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :install, as: 'install', class: Google::Apis::AndroidenterpriseV1::Install, decorator: Google::Apis::AndroidenterpriseV1::Install::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class Permission
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :permission_id, as: 'permissionId'
        end
      end
      
      # @private
      class Product
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :app_version, as: 'appVersion', class: Google::Apis::AndroidenterpriseV1::AppVersion, decorator: Google::Apis::AndroidenterpriseV1::AppVersion::Representation
      
          property :author_name, as: 'authorName'
          property :details_url, as: 'detailsUrl'
          property :distribution_channel, as: 'distributionChannel'
          property :icon_url, as: 'iconUrl'
          property :kind, as: 'kind'
          property :product_id, as: 'productId'
          property :requires_container_app, as: 'requiresContainerApp'
          property :title, as: 'title'
          property :work_details_url, as: 'workDetailsUrl'
        end
      end
      
      # @private
      class ProductPermission
        class Representation < Google::Apis::Core::JsonRepresentation
          property :permission_id, as: 'permissionId'
          property :state, as: 'state'
        end
      end
      
      # @private
      class ProductPermissions
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :permission, as: 'permission', class: Google::Apis::AndroidenterpriseV1::ProductPermission, decorator: Google::Apis::AndroidenterpriseV1::ProductPermission::Representation
      
          property :product_id, as: 'productId'
        end
      end
      
      # @private
      class ApproveProductRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          property :approval_url_info, as: 'approvalUrlInfo', class: Google::Apis::AndroidenterpriseV1::ApprovalUrlInfo, decorator: Google::Apis::AndroidenterpriseV1::ApprovalUrlInfo::Representation
      
        end
      end
      
      # @private
      class GenerateProductApprovalUrlResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :url, as: 'url'
        end
      end
      
      # @private
      class User
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :primary_email, as: 'primaryEmail'
        end
      end
      
      # @private
      class UserToken
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :token, as: 'token'
          property :user_id, as: 'userId'
        end
      end
      
      # @private
      class ListUsersResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :user, as: 'user', class: Google::Apis::AndroidenterpriseV1::User, decorator: Google::Apis::AndroidenterpriseV1::User::Representation
      
        end
      end
    end
  end
end
