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
      class AppRestrictionsSchemaRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AppRestrictionsSchemaRestrictionRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AppRestrictionsSchemaRestrictionRestrictionValueRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CollectionRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CollectionViewersListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CollectionsListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DeviceRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DeviceStateRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DevicesListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class EnterpriseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class EnterpriseAccountRepresentation < Google::Apis::Core::JsonRepresentation; end
      class EnterprisesListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class EntitlementRepresentation < Google::Apis::Core::JsonRepresentation; end
      class EntitlementsListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class GroupLicenseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class GroupLicenseUsersListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class GroupLicensesListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class InstallRepresentation < Google::Apis::Core::JsonRepresentation; end
      class InstallsListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PermissionRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ProductRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ProductPermissionRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ProductPermissionsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class UserRepresentation < Google::Apis::Core::JsonRepresentation; end
      class UserTokenRepresentation < Google::Apis::Core::JsonRepresentation; end
      class UsersListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end

      # @private
      class AppRestrictionsSchemaRepresentation < Google::Apis::Core::JsonRepresentation
        collection :restrictions, as: 'restrictions', class: Google::Apis::AndroidenterpriseV1::AppRestrictionsSchemaRestriction, decorator: Google::Apis::AndroidenterpriseV1::AppRestrictionsSchemaRestrictionRepresentation
      end

      # @private
      class AppRestrictionsSchemaRestrictionRepresentation < Google::Apis::Core::JsonRepresentation
        property :default_value, as: 'defaultValue', class: Google::Apis::AndroidenterpriseV1::AppRestrictionsSchemaRestrictionRestrictionValue, decorator: Google::Apis::AndroidenterpriseV1::AppRestrictionsSchemaRestrictionRestrictionValueRepresentation
        
        property :description, as: 'description'
        collection :entry, as: 'entry'
        
        collection :entry_value, as: 'entryValue'
        
        property :key, as: 'key'
        property :restriction_type, as: 'restrictionType'
        property :title, as: 'title'
      end

      # @private
      class AppRestrictionsSchemaRestrictionRestrictionValueRepresentation < Google::Apis::Core::JsonRepresentation
        property :type, as: 'type'
        property :value_bool, as: 'valueBool'
        property :value_integer, as: 'valueInteger'
        collection :value_multiselect, as: 'valueMultiselect'
        
        property :value_string, as: 'valueString'
      end

      # @private
      class CollectionRepresentation < Google::Apis::Core::JsonRepresentation
        property :collection_id, as: 'collectionId'
        property :kind, as: 'kind'
        property :name, as: 'name'
        collection :product_id, as: 'productId'
        
        property :visibility, as: 'visibility'
      end

      # @private
      class CollectionViewersListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        collection :user, as: 'user', class: Google::Apis::AndroidenterpriseV1::User, decorator: Google::Apis::AndroidenterpriseV1::UserRepresentation
      end

      # @private
      class CollectionsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :collection, as: 'collection', class: Google::Apis::AndroidenterpriseV1::Collection, decorator: Google::Apis::AndroidenterpriseV1::CollectionRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class DeviceRepresentation < Google::Apis::Core::JsonRepresentation
        property :android_id, as: 'androidId'
        property :kind, as: 'kind'
      end

      # @private
      class DeviceStateRepresentation < Google::Apis::Core::JsonRepresentation
        property :account_state, as: 'accountState'
        property :kind, as: 'kind'
      end

      # @private
      class DevicesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :device, as: 'device', class: Google::Apis::AndroidenterpriseV1::Device, decorator: Google::Apis::AndroidenterpriseV1::DeviceRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class EnterpriseRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :primary_domain, as: 'primaryDomain'
      end

      # @private
      class EnterpriseAccountRepresentation < Google::Apis::Core::JsonRepresentation
        property :account_email, as: 'accountEmail'
        property :kind, as: 'kind'
      end

      # @private
      class EnterprisesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :enterprise, as: 'enterprise', class: Google::Apis::AndroidenterpriseV1::Enterprise, decorator: Google::Apis::AndroidenterpriseV1::EnterpriseRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class EntitlementRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :product_id, as: 'productId'
        property :reason, as: 'reason'
      end

      # @private
      class EntitlementsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :entitlement, as: 'entitlement', class: Google::Apis::AndroidenterpriseV1::Entitlement, decorator: Google::Apis::AndroidenterpriseV1::EntitlementRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class GroupLicenseRepresentation < Google::Apis::Core::JsonRepresentation
        property :acquisition_kind, as: 'acquisitionKind'
        property :approval, as: 'approval'
        property :kind, as: 'kind'
        property :num_provisioned, as: 'numProvisioned'
        property :num_purchased, as: 'numPurchased'
        property :product_id, as: 'productId'
      end

      # @private
      class GroupLicenseUsersListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        collection :user, as: 'user', class: Google::Apis::AndroidenterpriseV1::User, decorator: Google::Apis::AndroidenterpriseV1::UserRepresentation
      end

      # @private
      class GroupLicensesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :group_license, as: 'groupLicense', class: Google::Apis::AndroidenterpriseV1::GroupLicense, decorator: Google::Apis::AndroidenterpriseV1::GroupLicenseRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class InstallRepresentation < Google::Apis::Core::JsonRepresentation
        property :install_state, as: 'installState'
        property :kind, as: 'kind'
        property :product_id, as: 'productId'
        property :version_code, as: 'versionCode'
      end

      # @private
      class InstallsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :install, as: 'install', class: Google::Apis::AndroidenterpriseV1::Install, decorator: Google::Apis::AndroidenterpriseV1::InstallRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class PermissionRepresentation < Google::Apis::Core::JsonRepresentation
        property :description, as: 'description'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :permission_id, as: 'permissionId'
      end

      # @private
      class ProductRepresentation < Google::Apis::Core::JsonRepresentation
        property :author_name, as: 'authorName'
        property :details_url, as: 'detailsUrl'
        property :icon_url, as: 'iconUrl'
        property :kind, as: 'kind'
        property :product_id, as: 'productId'
        property :title, as: 'title'
        property :work_details_url, as: 'workDetailsUrl'
      end

      # @private
      class ProductPermissionRepresentation < Google::Apis::Core::JsonRepresentation
        property :permission_id, as: 'permissionId'
        property :state, as: 'state'
      end

      # @private
      class ProductPermissionsRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        collection :permission, as: 'permission', class: Google::Apis::AndroidenterpriseV1::ProductPermission, decorator: Google::Apis::AndroidenterpriseV1::ProductPermissionRepresentation
        
        
        property :product_id, as: 'productId'
      end

      # @private
      class UserRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :primary_email, as: 'primaryEmail'
      end

      # @private
      class UserTokenRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :token, as: 'token'
        property :user_id, as: 'userId'
      end

      # @private
      class UsersListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        collection :user, as: 'user', class: Google::Apis::AndroidenterpriseV1::User, decorator: Google::Apis::AndroidenterpriseV1::UserRepresentation
      end
    end
  end
end
