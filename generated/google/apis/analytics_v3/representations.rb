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
    module AnalyticsV3
      
      class AccountRepresentation < Google::Apis::Core::JsonRepresentation
        
        class ChildLinkRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class PermissionsRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class AccountRefRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AccountSummariesRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AccountSummaryRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AccountTicketRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AccountsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AdWordsAccountRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class DataimportDeleteUploadDataRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ColumnRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ColumnsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CustomDataSourceRepresentation < Google::Apis::Core::JsonRepresentation
        
        class ChildLinkRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class ParentLinkRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class CustomDataSourcesRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CustomDimensionRepresentation < Google::Apis::Core::JsonRepresentation
        
        class ParentLinkRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class CustomDimensionsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CustomMetricRepresentation < Google::Apis::Core::JsonRepresentation
        
        class ParentLinkRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class CustomMetricsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class EntityAdWordsLinkRepresentation < Google::Apis::Core::JsonRepresentation
        
        class EntityRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class EntityAdWordsLinksRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class EntityUserLinkRepresentation < Google::Apis::Core::JsonRepresentation
        
        class EntityRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class PermissionsRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class EntityUserLinksRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ExperimentRepresentation < Google::Apis::Core::JsonRepresentation
        
        class ParentLinkRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class VariationRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class ExperimentsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class FilterRepresentation < Google::Apis::Core::JsonRepresentation
        
        class AdvancedDetailsRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class LowercaseDetailsRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class ParentLinkRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class SearchAndReplaceDetailsRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class UppercaseDetailsRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class FilterExpressionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class FilterRefRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class FiltersRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class GaDataRepresentation < Google::Apis::Core::JsonRepresentation
        
        class ColumnHeaderRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class DataTableRepresentation < Google::Apis::Core::JsonRepresentation
          
          class ColRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
          
          class RowRepresentation < Google::Apis::Core::JsonRepresentation
            
            class CRepresentation < Google::Apis::Core::JsonRepresentation
              
            end
          end
        end
        
        class ProfileInfoRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class QueryRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class GoalRepresentation < Google::Apis::Core::JsonRepresentation
        
        class EventDetailsRepresentation < Google::Apis::Core::JsonRepresentation
          
          class EventConditionRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
        end
        
        class ParentLinkRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class UrlDestinationDetailsRepresentation < Google::Apis::Core::JsonRepresentation
          
          class StepRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
        end
        
        class VisitNumPagesDetailsRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class VisitTimeOnSiteDetailsRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class GoalsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class McfDataRepresentation < Google::Apis::Core::JsonRepresentation
        
        class ColumnHeaderRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class ProfileInfoRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class QueryRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class RowRepresentation < Google::Apis::Core::JsonRepresentation
          
          class ConversionPathValueRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
        end
      end
      
      class ProfileRepresentation < Google::Apis::Core::JsonRepresentation
        
        class ChildLinkRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class ParentLinkRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class PermissionsRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class ProfileFilterLinkRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ProfileFilterLinksRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ProfileRefRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ProfileSummaryRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ProfilesRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RealtimeDataRepresentation < Google::Apis::Core::JsonRepresentation
        
        class ColumnHeaderRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class ProfileInfoRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class QueryRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class SegmentRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SegmentsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UnsampledReportRepresentation < Google::Apis::Core::JsonRepresentation
        
        class CloudStorageDownloadDetailsRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class DriveDownloadDetailsRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class UnsampledReportsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UploadRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UploadsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UserRefRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class WebPropertyRefRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class WebPropertySummaryRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class WebpropertiesRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class WebpropertyRepresentation < Google::Apis::Core::JsonRepresentation
        
        class ChildLinkRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class ParentLinkRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class PermissionsRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end

      # @private
      class AccountRepresentation < Google::Apis::Core::JsonRepresentation
        class ChildLinkRepresentation < Google::Apis::Core::JsonRepresentation; end
        class PermissionsRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :child_link, as: 'childLink', class: Google::Apis::AnalyticsV3::Account::ChildLink, decorator: Google::Apis::AnalyticsV3::AccountRepresentation::ChildLinkRepresentation
        
        property :created, as: 'created', type: DateTime
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :permissions, as: 'permissions', class: Google::Apis::AnalyticsV3::Account::Permissions, decorator: Google::Apis::AnalyticsV3::AccountRepresentation::PermissionsRepresentation
        
        property :self_link, as: 'selfLink'
        property :updated, as: 'updated', type: DateTime
        
        # @private
        class ChildLinkRepresentation < Google::Apis::Core::JsonRepresentation
          property :href, as: 'href'
          property :type, as: 'type'
        end
        
        # @private
        class PermissionsRepresentation < Google::Apis::Core::JsonRepresentation
          collection :effective, as: 'effective'
        end
      end

      # @private
      class AccountRefRepresentation < Google::Apis::Core::JsonRepresentation
        property :href, as: 'href'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
      end

      # @private
      class AccountSummariesRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::AnalyticsV3::AccountSummary, decorator: Google::Apis::AnalyticsV3::AccountSummaryRepresentation
        
        
        property :items_per_page, as: 'itemsPerPage'
        property :kind, as: 'kind'
        property :next_link, as: 'nextLink'
        property :previous_link, as: 'previousLink'
        property :start_index, as: 'startIndex'
        property :total_results, as: 'totalResults'
        property :username, as: 'username'
      end

      # @private
      class AccountSummaryRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        collection :web_properties, as: 'webProperties', class: Google::Apis::AnalyticsV3::WebPropertySummary, decorator: Google::Apis::AnalyticsV3::WebPropertySummaryRepresentation
      end

      # @private
      class AccountTicketRepresentation < Google::Apis::Core::JsonRepresentation
        property :account, as: 'account', class: Google::Apis::AnalyticsV3::Account, decorator: Google::Apis::AnalyticsV3::AccountRepresentation
        
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :profile, as: 'profile', class: Google::Apis::AnalyticsV3::Profile, decorator: Google::Apis::AnalyticsV3::ProfileRepresentation
        
        property :redirect_uri, as: 'redirectUri'
        property :webproperty, as: 'webproperty', class: Google::Apis::AnalyticsV3::Webproperty, decorator: Google::Apis::AnalyticsV3::WebpropertyRepresentation
      end

      # @private
      class AccountsRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::AnalyticsV3::Account, decorator: Google::Apis::AnalyticsV3::AccountRepresentation
        
        
        property :items_per_page, as: 'itemsPerPage'
        property :kind, as: 'kind'
        property :next_link, as: 'nextLink'
        property :previous_link, as: 'previousLink'
        property :start_index, as: 'startIndex'
        property :total_results, as: 'totalResults'
        property :username, as: 'username'
      end

      # @private
      class AdWordsAccountRepresentation < Google::Apis::Core::JsonRepresentation
        property :auto_tagging_enabled, as: 'autoTaggingEnabled'
        property :customer_id, as: 'customerId'
        property :kind, as: 'kind'
      end

      # @private
      class DataimportDeleteUploadDataRequestRepresentation < Google::Apis::Core::JsonRepresentation
        collection :custom_data_import_uids, as: 'customDataImportUids'
      end

      # @private
      class ColumnRepresentation < Google::Apis::Core::JsonRepresentation
        hash :attributes, as: 'attributes'
        
        property :id, as: 'id'
        property :kind, as: 'kind'
      end

      # @private
      class ColumnsRepresentation < Google::Apis::Core::JsonRepresentation
        collection :attribute_names, as: 'attributeNames'
        
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::AnalyticsV3::Column, decorator: Google::Apis::AnalyticsV3::ColumnRepresentation
        
        
        property :kind, as: 'kind'
        property :total_results, as: 'totalResults'
      end

      # @private
      class CustomDataSourceRepresentation < Google::Apis::Core::JsonRepresentation
        class ChildLinkRepresentation < Google::Apis::Core::JsonRepresentation; end
        class ParentLinkRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :account_id, as: 'accountId'
        property :child_link, as: 'childLink', class: Google::Apis::AnalyticsV3::CustomDataSource::ChildLink, decorator: Google::Apis::AnalyticsV3::CustomDataSourceRepresentation::ChildLinkRepresentation
        
        property :created, as: 'created', type: DateTime
        property :description, as: 'description'
        property :id, as: 'id'
        property :import_behavior, as: 'importBehavior'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :parent_link, as: 'parentLink', class: Google::Apis::AnalyticsV3::CustomDataSource::ParentLink, decorator: Google::Apis::AnalyticsV3::CustomDataSourceRepresentation::ParentLinkRepresentation
        
        collection :profiles_linked, as: 'profilesLinked'
        
        property :self_link, as: 'selfLink'
        property :type, as: 'type'
        property :updated, as: 'updated', type: DateTime
        property :upload_type, as: 'uploadType'
        property :web_property_id, as: 'webPropertyId'
        
        # @private
        class ChildLinkRepresentation < Google::Apis::Core::JsonRepresentation
          property :href, as: 'href'
          property :type, as: 'type'
        end
        
        # @private
        class ParentLinkRepresentation < Google::Apis::Core::JsonRepresentation
          property :href, as: 'href'
          property :type, as: 'type'
        end
      end

      # @private
      class CustomDataSourcesRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::AnalyticsV3::CustomDataSource, decorator: Google::Apis::AnalyticsV3::CustomDataSourceRepresentation
        
        
        property :items_per_page, as: 'itemsPerPage'
        property :kind, as: 'kind'
        property :next_link, as: 'nextLink'
        property :previous_link, as: 'previousLink'
        property :start_index, as: 'startIndex'
        property :total_results, as: 'totalResults'
        property :username, as: 'username'
      end

      # @private
      class CustomDimensionRepresentation < Google::Apis::Core::JsonRepresentation
        class ParentLinkRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :account_id, as: 'accountId'
        property :active, as: 'active'
        property :created, as: 'created', type: DateTime
        property :id, as: 'id'
        property :index, as: 'index'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :parent_link, as: 'parentLink', class: Google::Apis::AnalyticsV3::CustomDimension::ParentLink, decorator: Google::Apis::AnalyticsV3::CustomDimensionRepresentation::ParentLinkRepresentation
        
        property :scope, as: 'scope'
        property :self_link, as: 'selfLink'
        property :updated, as: 'updated', type: DateTime
        property :web_property_id, as: 'webPropertyId'
        
        # @private
        class ParentLinkRepresentation < Google::Apis::Core::JsonRepresentation
          property :href, as: 'href'
          property :type, as: 'type'
        end
      end

      # @private
      class CustomDimensionsRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::AnalyticsV3::CustomDimension, decorator: Google::Apis::AnalyticsV3::CustomDimensionRepresentation
        
        
        property :items_per_page, as: 'itemsPerPage'
        property :kind, as: 'kind'
        property :next_link, as: 'nextLink'
        property :previous_link, as: 'previousLink'
        property :start_index, as: 'startIndex'
        property :total_results, as: 'totalResults'
        property :username, as: 'username'
      end

      # @private
      class CustomMetricRepresentation < Google::Apis::Core::JsonRepresentation
        class ParentLinkRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :account_id, as: 'accountId'
        property :active, as: 'active'
        property :created, as: 'created', type: DateTime
        property :id, as: 'id'
        property :index, as: 'index'
        property :kind, as: 'kind'
        property :max_value, as: 'max_value'
        property :min_value, as: 'min_value'
        property :name, as: 'name'
        property :parent_link, as: 'parentLink', class: Google::Apis::AnalyticsV3::CustomMetric::ParentLink, decorator: Google::Apis::AnalyticsV3::CustomMetricRepresentation::ParentLinkRepresentation
        
        property :scope, as: 'scope'
        property :self_link, as: 'selfLink'
        property :type, as: 'type'
        property :updated, as: 'updated', type: DateTime
        property :web_property_id, as: 'webPropertyId'
        
        # @private
        class ParentLinkRepresentation < Google::Apis::Core::JsonRepresentation
          property :href, as: 'href'
          property :type, as: 'type'
        end
      end

      # @private
      class CustomMetricsRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::AnalyticsV3::CustomMetric, decorator: Google::Apis::AnalyticsV3::CustomMetricRepresentation
        
        
        property :items_per_page, as: 'itemsPerPage'
        property :kind, as: 'kind'
        property :next_link, as: 'nextLink'
        property :previous_link, as: 'previousLink'
        property :start_index, as: 'startIndex'
        property :total_results, as: 'totalResults'
        property :username, as: 'username'
      end

      # @private
      class EntityAdWordsLinkRepresentation < Google::Apis::Core::JsonRepresentation
        class EntityRepresentation < Google::Apis::Core::JsonRepresentation; end
        collection :ad_words_accounts, as: 'adWordsAccounts', class: Google::Apis::AnalyticsV3::AdWordsAccount, decorator: Google::Apis::AnalyticsV3::AdWordsAccountRepresentation
        
        
        property :entity, as: 'entity', class: Google::Apis::AnalyticsV3::EntityAdWordsLink::Entity, decorator: Google::Apis::AnalyticsV3::EntityAdWordsLinkRepresentation::EntityRepresentation
        
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        collection :profile_ids, as: 'profileIds'
        
        property :self_link, as: 'selfLink'
        
        # @private
        class EntityRepresentation < Google::Apis::Core::JsonRepresentation
          property :web_property_ref, as: 'webPropertyRef', class: Google::Apis::AnalyticsV3::WebPropertyRef, decorator: Google::Apis::AnalyticsV3::WebPropertyRefRepresentation
        end
      end

      # @private
      class EntityAdWordsLinksRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::AnalyticsV3::EntityAdWordsLink, decorator: Google::Apis::AnalyticsV3::EntityAdWordsLinkRepresentation
        
        
        property :items_per_page, as: 'itemsPerPage'
        property :kind, as: 'kind'
        property :next_link, as: 'nextLink'
        property :previous_link, as: 'previousLink'
        property :start_index, as: 'startIndex'
        property :total_results, as: 'totalResults'
      end

      # @private
      class EntityUserLinkRepresentation < Google::Apis::Core::JsonRepresentation
        class EntityRepresentation < Google::Apis::Core::JsonRepresentation; end
        class PermissionsRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :entity, as: 'entity', class: Google::Apis::AnalyticsV3::EntityUserLink::Entity, decorator: Google::Apis::AnalyticsV3::EntityUserLinkRepresentation::EntityRepresentation
        
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :permissions, as: 'permissions', class: Google::Apis::AnalyticsV3::EntityUserLink::Permissions, decorator: Google::Apis::AnalyticsV3::EntityUserLinkRepresentation::PermissionsRepresentation
        
        property :self_link, as: 'selfLink'
        property :user_ref, as: 'userRef', class: Google::Apis::AnalyticsV3::UserRef, decorator: Google::Apis::AnalyticsV3::UserRefRepresentation
        
        
        # @private
        class EntityRepresentation < Google::Apis::Core::JsonRepresentation
          property :account_ref, as: 'accountRef', class: Google::Apis::AnalyticsV3::AccountRef, decorator: Google::Apis::AnalyticsV3::AccountRefRepresentation
          
          property :profile_ref, as: 'profileRef', class: Google::Apis::AnalyticsV3::ProfileRef, decorator: Google::Apis::AnalyticsV3::ProfileRefRepresentation
          
          property :web_property_ref, as: 'webPropertyRef', class: Google::Apis::AnalyticsV3::WebPropertyRef, decorator: Google::Apis::AnalyticsV3::WebPropertyRefRepresentation
        end
        
        # @private
        class PermissionsRepresentation < Google::Apis::Core::JsonRepresentation
          collection :effective, as: 'effective'
          
          collection :local, as: 'local'
        end
      end

      # @private
      class EntityUserLinksRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::AnalyticsV3::EntityUserLink, decorator: Google::Apis::AnalyticsV3::EntityUserLinkRepresentation
        
        
        property :items_per_page, as: 'itemsPerPage'
        property :kind, as: 'kind'
        property :next_link, as: 'nextLink'
        property :previous_link, as: 'previousLink'
        property :start_index, as: 'startIndex'
        property :total_results, as: 'totalResults'
      end

      # @private
      class ExperimentRepresentation < Google::Apis::Core::JsonRepresentation
        class ParentLinkRepresentation < Google::Apis::Core::JsonRepresentation; end
        class VariationRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :account_id, as: 'accountId'
        property :created, as: 'created', type: DateTime
        property :description, as: 'description'
        property :editable_in_ga_ui, as: 'editableInGaUi'
        property :end_time, as: 'endTime', type: DateTime
        property :equal_weighting, as: 'equalWeighting'
        property :id, as: 'id'
        property :internal_web_property_id, as: 'internalWebPropertyId'
        property :kind, as: 'kind'
        property :minimum_experiment_length_in_days, as: 'minimumExperimentLengthInDays'
        property :name, as: 'name'
        property :objective_metric, as: 'objectiveMetric'
        property :optimization_type, as: 'optimizationType'
        property :parent_link, as: 'parentLink', class: Google::Apis::AnalyticsV3::Experiment::ParentLink, decorator: Google::Apis::AnalyticsV3::ExperimentRepresentation::ParentLinkRepresentation
        
        property :profile_id, as: 'profileId'
        property :reason_experiment_ended, as: 'reasonExperimentEnded'
        property :rewrite_variation_urls_as_original, as: 'rewriteVariationUrlsAsOriginal'
        property :self_link, as: 'selfLink'
        property :serving_framework, as: 'servingFramework'
        property :snippet, as: 'snippet'
        property :start_time, as: 'startTime', type: DateTime
        property :status, as: 'status'
        property :traffic_coverage, as: 'trafficCoverage'
        property :updated, as: 'updated', type: DateTime
        collection :variations, as: 'variations', class: Google::Apis::AnalyticsV3::Experiment::Variation, decorator: Google::Apis::AnalyticsV3::ExperimentRepresentation::VariationRepresentation
        
        
        property :web_property_id, as: 'webPropertyId'
        property :winner_confidence_level, as: 'winnerConfidenceLevel'
        property :winner_found, as: 'winnerFound'
        
        # @private
        class ParentLinkRepresentation < Google::Apis::Core::JsonRepresentation
          property :href, as: 'href'
          property :type, as: 'type'
        end
        
        # @private
        class VariationRepresentation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :status, as: 'status'
          property :url, as: 'url'
          property :weight, as: 'weight'
          property :won, as: 'won'
        end
      end

      # @private
      class ExperimentsRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::AnalyticsV3::Experiment, decorator: Google::Apis::AnalyticsV3::ExperimentRepresentation
        
        
        property :items_per_page, as: 'itemsPerPage'
        property :kind, as: 'kind'
        property :next_link, as: 'nextLink'
        property :previous_link, as: 'previousLink'
        property :start_index, as: 'startIndex'
        property :total_results, as: 'totalResults'
        property :username, as: 'username'
      end

      # @private
      class FilterRepresentation < Google::Apis::Core::JsonRepresentation
        class AdvancedDetailsRepresentation < Google::Apis::Core::JsonRepresentation; end
        class LowercaseDetailsRepresentation < Google::Apis::Core::JsonRepresentation; end
        class ParentLinkRepresentation < Google::Apis::Core::JsonRepresentation; end
        class SearchAndReplaceDetailsRepresentation < Google::Apis::Core::JsonRepresentation; end
        class UppercaseDetailsRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :account_id, as: 'accountId'
        property :advanced_details, as: 'advancedDetails', class: Google::Apis::AnalyticsV3::Filter::AdvancedDetails, decorator: Google::Apis::AnalyticsV3::FilterRepresentation::AdvancedDetailsRepresentation
        
        property :created, as: 'created', type: DateTime
        property :exclude_details, as: 'excludeDetails', class: Google::Apis::AnalyticsV3::FilterExpression, decorator: Google::Apis::AnalyticsV3::FilterExpressionRepresentation
        
        property :id, as: 'id'
        property :include_details, as: 'includeDetails', class: Google::Apis::AnalyticsV3::FilterExpression, decorator: Google::Apis::AnalyticsV3::FilterExpressionRepresentation
        
        property :kind, as: 'kind'
        property :lowercase_details, as: 'lowercaseDetails', class: Google::Apis::AnalyticsV3::Filter::LowercaseDetails, decorator: Google::Apis::AnalyticsV3::FilterRepresentation::LowercaseDetailsRepresentation
        
        property :name, as: 'name'
        property :parent_link, as: 'parentLink', class: Google::Apis::AnalyticsV3::Filter::ParentLink, decorator: Google::Apis::AnalyticsV3::FilterRepresentation::ParentLinkRepresentation
        
        property :search_and_replace_details, as: 'searchAndReplaceDetails', class: Google::Apis::AnalyticsV3::Filter::SearchAndReplaceDetails, decorator: Google::Apis::AnalyticsV3::FilterRepresentation::SearchAndReplaceDetailsRepresentation
        
        property :self_link, as: 'selfLink'
        property :type, as: 'type'
        property :updated, as: 'updated', type: DateTime
        property :uppercase_details, as: 'uppercaseDetails', class: Google::Apis::AnalyticsV3::Filter::UppercaseDetails, decorator: Google::Apis::AnalyticsV3::FilterRepresentation::UppercaseDetailsRepresentation
        
        
        # @private
        class AdvancedDetailsRepresentation < Google::Apis::Core::JsonRepresentation
          property :case_sensitive, as: 'caseSensitive'
          property :extract_a, as: 'extractA'
          property :extract_b, as: 'extractB'
          property :field_a, as: 'fieldA'
          property :field_a_required, as: 'fieldARequired'
          property :field_b, as: 'fieldB'
          property :field_b_required, as: 'fieldBRequired'
          property :output_constructor, as: 'outputConstructor'
          property :output_to_field, as: 'outputToField'
          property :override_output_field, as: 'overrideOutputField'
        end
        
        # @private
        class LowercaseDetailsRepresentation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field'
        end
        
        # @private
        class ParentLinkRepresentation < Google::Apis::Core::JsonRepresentation
          property :href, as: 'href'
          property :type, as: 'type'
        end
        
        # @private
        class SearchAndReplaceDetailsRepresentation < Google::Apis::Core::JsonRepresentation
          property :case_sensitive, as: 'caseSensitive'
          property :field, as: 'field'
          property :replace_string, as: 'replaceString'
          property :search_string, as: 'searchString'
        end
        
        # @private
        class UppercaseDetailsRepresentation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field'
        end
      end

      # @private
      class FilterExpressionRepresentation < Google::Apis::Core::JsonRepresentation
        property :case_sensitive, as: 'caseSensitive'
        property :expression_value, as: 'expressionValue'
        property :field, as: 'field'
        property :kind, as: 'kind'
        property :match_type, as: 'matchType'
      end

      # @private
      class FilterRefRepresentation < Google::Apis::Core::JsonRepresentation
        property :account_id, as: 'accountId'
        property :href, as: 'href'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
      end

      # @private
      class FiltersRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::AnalyticsV3::Filter, decorator: Google::Apis::AnalyticsV3::FilterRepresentation
        
        
        property :items_per_page, as: 'itemsPerPage'
        property :kind, as: 'kind'
        property :next_link, as: 'nextLink'
        property :previous_link, as: 'previousLink'
        property :start_index, as: 'startIndex'
        property :total_results, as: 'totalResults'
        property :username, as: 'username'
      end

      # @private
      class GaDataRepresentation < Google::Apis::Core::JsonRepresentation
        class ColumnHeaderRepresentation < Google::Apis::Core::JsonRepresentation; end
        class DataTableRepresentation < Google::Apis::Core::JsonRepresentation; end
        class ProfileInfoRepresentation < Google::Apis::Core::JsonRepresentation; end
        class QueryRepresentation < Google::Apis::Core::JsonRepresentation; end
        collection :column_headers, as: 'columnHeaders', class: Google::Apis::AnalyticsV3::GaData::ColumnHeader, decorator: Google::Apis::AnalyticsV3::GaDataRepresentation::ColumnHeaderRepresentation
        
        
        property :contains_sampled_data, as: 'containsSampledData'
        property :data_table, as: 'dataTable', class: Google::Apis::AnalyticsV3::GaData::DataTable, decorator: Google::Apis::AnalyticsV3::GaDataRepresentation::DataTableRepresentation
        
        property :id, as: 'id'
        property :items_per_page, as: 'itemsPerPage'
        property :kind, as: 'kind'
        property :next_link, as: 'nextLink'
        property :previous_link, as: 'previousLink'
        property :profile_info, as: 'profileInfo', class: Google::Apis::AnalyticsV3::GaData::ProfileInfo, decorator: Google::Apis::AnalyticsV3::GaDataRepresentation::ProfileInfoRepresentation
        
        property :query, as: 'query', class: Google::Apis::AnalyticsV3::GaData::Query, decorator: Google::Apis::AnalyticsV3::GaDataRepresentation::QueryRepresentation
        
        collection :rows, as: 'rows', :class => Array do
          include Representable::JSON::Collection
          items
        end
        
        
        property :sample_size, as: 'sampleSize'
        property :sample_space, as: 'sampleSpace'
        property :self_link, as: 'selfLink'
        property :total_results, as: 'totalResults'
        hash :totals_for_all_results, as: 'totalsForAllResults'
        
        
        # @private
        class ColumnHeaderRepresentation < Google::Apis::Core::JsonRepresentation
          property :column_type, as: 'columnType'
          property :data_type, as: 'dataType'
          property :name, as: 'name'
        end
        
        # @private
        class DataTableRepresentation < Google::Apis::Core::JsonRepresentation
          class ColRepresentation < Google::Apis::Core::JsonRepresentation; end
          class RowRepresentation < Google::Apis::Core::JsonRepresentation; end
          collection :cols, as: 'cols', class: Google::Apis::AnalyticsV3::GaData::DataTable::Col, decorator: Google::Apis::AnalyticsV3::GaDataRepresentation::DataTableRepresentation::ColRepresentation
          
          
          collection :rows, as: 'rows', class: Google::Apis::AnalyticsV3::GaData::DataTable::Row, decorator: Google::Apis::AnalyticsV3::GaDataRepresentation::DataTableRepresentation::RowRepresentation
          
          
          
          # @private
          class ColRepresentation < Google::Apis::Core::JsonRepresentation
            property :id, as: 'id'
            property :label, as: 'label'
            property :type, as: 'type'
          end
          
          # @private
          class RowRepresentation < Google::Apis::Core::JsonRepresentation
            class CRepresentation < Google::Apis::Core::JsonRepresentation; end
            collection :c, as: 'c', class: Google::Apis::AnalyticsV3::GaData::DataTable::Row::C, decorator: Google::Apis::AnalyticsV3::GaDataRepresentation::DataTableRepresentation::RowRepresentation::CRepresentation
            
            
            
            # @private
            class CRepresentation < Google::Apis::Core::JsonRepresentation
              property :v, as: 'v'
            end
          end
        end
        
        # @private
        class ProfileInfoRepresentation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :internal_web_property_id, as: 'internalWebPropertyId'
          property :profile_id, as: 'profileId'
          property :profile_name, as: 'profileName'
          property :table_id, as: 'tableId'
          property :web_property_id, as: 'webPropertyId'
        end
        
        # @private
        class QueryRepresentation < Google::Apis::Core::JsonRepresentation
          property :dimensions, as: 'dimensions'
          property :end_date, as: 'end-date'
          property :filters, as: 'filters'
          property :ids, as: 'ids'
          property :max_results, as: 'max-results'
          collection :metrics, as: 'metrics'
          
          property :sampling_level, as: 'samplingLevel'
          property :segment, as: 'segment'
          collection :sort, as: 'sort'
          
          property :start_date, as: 'start-date'
          property :start_index, as: 'start-index'
        end
      end

      # @private
      class GoalRepresentation < Google::Apis::Core::JsonRepresentation
        class EventDetailsRepresentation < Google::Apis::Core::JsonRepresentation; end
        class ParentLinkRepresentation < Google::Apis::Core::JsonRepresentation; end
        class UrlDestinationDetailsRepresentation < Google::Apis::Core::JsonRepresentation; end
        class VisitNumPagesDetailsRepresentation < Google::Apis::Core::JsonRepresentation; end
        class VisitTimeOnSiteDetailsRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :account_id, as: 'accountId'
        property :active, as: 'active'
        property :created, as: 'created', type: DateTime
        property :event_details, as: 'eventDetails', class: Google::Apis::AnalyticsV3::Goal::EventDetails, decorator: Google::Apis::AnalyticsV3::GoalRepresentation::EventDetailsRepresentation
        
        property :id, as: 'id'
        property :internal_web_property_id, as: 'internalWebPropertyId'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :parent_link, as: 'parentLink', class: Google::Apis::AnalyticsV3::Goal::ParentLink, decorator: Google::Apis::AnalyticsV3::GoalRepresentation::ParentLinkRepresentation
        
        property :profile_id, as: 'profileId'
        property :self_link, as: 'selfLink'
        property :type, as: 'type'
        property :updated, as: 'updated', type: DateTime
        property :url_destination_details, as: 'urlDestinationDetails', class: Google::Apis::AnalyticsV3::Goal::UrlDestinationDetails, decorator: Google::Apis::AnalyticsV3::GoalRepresentation::UrlDestinationDetailsRepresentation
        
        property :value, as: 'value'
        property :visit_num_pages_details, as: 'visitNumPagesDetails', class: Google::Apis::AnalyticsV3::Goal::VisitNumPagesDetails, decorator: Google::Apis::AnalyticsV3::GoalRepresentation::VisitNumPagesDetailsRepresentation
        
        property :visit_time_on_site_details, as: 'visitTimeOnSiteDetails', class: Google::Apis::AnalyticsV3::Goal::VisitTimeOnSiteDetails, decorator: Google::Apis::AnalyticsV3::GoalRepresentation::VisitTimeOnSiteDetailsRepresentation
        
        property :web_property_id, as: 'webPropertyId'
        
        # @private
        class EventDetailsRepresentation < Google::Apis::Core::JsonRepresentation
          class EventConditionRepresentation < Google::Apis::Core::JsonRepresentation; end
          collection :event_conditions, as: 'eventConditions', class: Google::Apis::AnalyticsV3::Goal::EventDetails::EventCondition, decorator: Google::Apis::AnalyticsV3::GoalRepresentation::EventDetailsRepresentation::EventConditionRepresentation
          
          
          property :use_event_value, as: 'useEventValue'
          
          # @private
          class EventConditionRepresentation < Google::Apis::Core::JsonRepresentation
            property :comparison_type, as: 'comparisonType'
            property :comparison_value, as: 'comparisonValue'
            property :expression, as: 'expression'
            property :match_type, as: 'matchType'
            property :type, as: 'type'
          end
        end
        
        # @private
        class ParentLinkRepresentation < Google::Apis::Core::JsonRepresentation
          property :href, as: 'href'
          property :type, as: 'type'
        end
        
        # @private
        class UrlDestinationDetailsRepresentation < Google::Apis::Core::JsonRepresentation
          class StepRepresentation < Google::Apis::Core::JsonRepresentation; end
          property :case_sensitive, as: 'caseSensitive'
          property :first_step_required, as: 'firstStepRequired'
          property :match_type, as: 'matchType'
          collection :steps, as: 'steps', class: Google::Apis::AnalyticsV3::Goal::UrlDestinationDetails::Step, decorator: Google::Apis::AnalyticsV3::GoalRepresentation::UrlDestinationDetailsRepresentation::StepRepresentation
          
          
          property :url, as: 'url'
          
          # @private
          class StepRepresentation < Google::Apis::Core::JsonRepresentation
            property :name, as: 'name'
            property :number, as: 'number'
            property :url, as: 'url'
          end
        end
        
        # @private
        class VisitNumPagesDetailsRepresentation < Google::Apis::Core::JsonRepresentation
          property :comparison_type, as: 'comparisonType'
          property :comparison_value, as: 'comparisonValue'
        end
        
        # @private
        class VisitTimeOnSiteDetailsRepresentation < Google::Apis::Core::JsonRepresentation
          property :comparison_type, as: 'comparisonType'
          property :comparison_value, as: 'comparisonValue'
        end
      end

      # @private
      class GoalsRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::AnalyticsV3::Goal, decorator: Google::Apis::AnalyticsV3::GoalRepresentation
        
        
        property :items_per_page, as: 'itemsPerPage'
        property :kind, as: 'kind'
        property :next_link, as: 'nextLink'
        property :previous_link, as: 'previousLink'
        property :start_index, as: 'startIndex'
        property :total_results, as: 'totalResults'
        property :username, as: 'username'
      end

      # @private
      class McfDataRepresentation < Google::Apis::Core::JsonRepresentation
        class ColumnHeaderRepresentation < Google::Apis::Core::JsonRepresentation; end
        class ProfileInfoRepresentation < Google::Apis::Core::JsonRepresentation; end
        class QueryRepresentation < Google::Apis::Core::JsonRepresentation; end
        class RowRepresentation < Google::Apis::Core::JsonRepresentation; end
        collection :column_headers, as: 'columnHeaders', class: Google::Apis::AnalyticsV3::McfData::ColumnHeader, decorator: Google::Apis::AnalyticsV3::McfDataRepresentation::ColumnHeaderRepresentation
        
        
        property :contains_sampled_data, as: 'containsSampledData'
        property :id, as: 'id'
        property :items_per_page, as: 'itemsPerPage'
        property :kind, as: 'kind'
        property :next_link, as: 'nextLink'
        property :previous_link, as: 'previousLink'
        property :profile_info, as: 'profileInfo', class: Google::Apis::AnalyticsV3::McfData::ProfileInfo, decorator: Google::Apis::AnalyticsV3::McfDataRepresentation::ProfileInfoRepresentation
        
        property :query, as: 'query', class: Google::Apis::AnalyticsV3::McfData::Query, decorator: Google::Apis::AnalyticsV3::McfDataRepresentation::QueryRepresentation
        
        collection :rows, as: 'rows', :class => Array do
          include Representable::JSON::Collection
          items class: Google::Apis::AnalyticsV3::McfData::Row, decorator: Google::Apis::AnalyticsV3::McfDataRepresentation::RowRepresentation
        
        end
        
        
        property :sample_size, as: 'sampleSize'
        property :sample_space, as: 'sampleSpace'
        property :self_link, as: 'selfLink'
        property :total_results, as: 'totalResults'
        hash :totals_for_all_results, as: 'totalsForAllResults'
        
        
        # @private
        class ColumnHeaderRepresentation < Google::Apis::Core::JsonRepresentation
          property :column_type, as: 'columnType'
          property :data_type, as: 'dataType'
          property :name, as: 'name'
        end
        
        # @private
        class ProfileInfoRepresentation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :internal_web_property_id, as: 'internalWebPropertyId'
          property :profile_id, as: 'profileId'
          property :profile_name, as: 'profileName'
          property :table_id, as: 'tableId'
          property :web_property_id, as: 'webPropertyId'
        end
        
        # @private
        class QueryRepresentation < Google::Apis::Core::JsonRepresentation
          property :dimensions, as: 'dimensions'
          property :end_date, as: 'end-date'
          property :filters, as: 'filters'
          property :ids, as: 'ids'
          property :max_results, as: 'max-results'
          collection :metrics, as: 'metrics'
          
          property :sampling_level, as: 'samplingLevel'
          property :segment, as: 'segment'
          collection :sort, as: 'sort'
          
          property :start_date, as: 'start-date'
          property :start_index, as: 'start-index'
        end
        
        # @private
        class RowRepresentation < Google::Apis::Core::JsonRepresentation
          class ConversionPathValueRepresentation < Google::Apis::Core::JsonRepresentation; end
          collection :conversion_path_value, as: 'conversionPathValue', class: Google::Apis::AnalyticsV3::McfData::Row::ConversionPathValue, decorator: Google::Apis::AnalyticsV3::McfDataRepresentation::RowRepresentation::ConversionPathValueRepresentation
          
          
          property :primitive_value, as: 'primitiveValue'
          
          # @private
          class ConversionPathValueRepresentation < Google::Apis::Core::JsonRepresentation
            property :interaction_type, as: 'interactionType'
            property :node_value, as: 'nodeValue'
          end
        end
      end

      # @private
      class ProfileRepresentation < Google::Apis::Core::JsonRepresentation
        class ChildLinkRepresentation < Google::Apis::Core::JsonRepresentation; end
        class ParentLinkRepresentation < Google::Apis::Core::JsonRepresentation; end
        class PermissionsRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :account_id, as: 'accountId'
        property :child_link, as: 'childLink', class: Google::Apis::AnalyticsV3::Profile::ChildLink, decorator: Google::Apis::AnalyticsV3::ProfileRepresentation::ChildLinkRepresentation
        
        property :created, as: 'created', type: DateTime
        property :currency, as: 'currency'
        property :default_page, as: 'defaultPage'
        property :e_commerce_tracking, as: 'eCommerceTracking'
        property :enhanced_e_commerce_tracking, as: 'enhancedECommerceTracking'
        property :exclude_query_parameters, as: 'excludeQueryParameters'
        property :id, as: 'id'
        property :internal_web_property_id, as: 'internalWebPropertyId'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :parent_link, as: 'parentLink', class: Google::Apis::AnalyticsV3::Profile::ParentLink, decorator: Google::Apis::AnalyticsV3::ProfileRepresentation::ParentLinkRepresentation
        
        property :permissions, as: 'permissions', class: Google::Apis::AnalyticsV3::Profile::Permissions, decorator: Google::Apis::AnalyticsV3::ProfileRepresentation::PermissionsRepresentation
        
        property :self_link, as: 'selfLink'
        property :site_search_category_parameters, as: 'siteSearchCategoryParameters'
        property :site_search_query_parameters, as: 'siteSearchQueryParameters'
        property :strip_site_search_category_parameters, as: 'stripSiteSearchCategoryParameters'
        property :strip_site_search_query_parameters, as: 'stripSiteSearchQueryParameters'
        property :timezone, as: 'timezone'
        property :type, as: 'type'
        property :updated, as: 'updated', type: DateTime
        property :web_property_id, as: 'webPropertyId'
        property :website_url, as: 'websiteUrl'
        
        # @private
        class ChildLinkRepresentation < Google::Apis::Core::JsonRepresentation
          property :href, as: 'href'
          property :type, as: 'type'
        end
        
        # @private
        class ParentLinkRepresentation < Google::Apis::Core::JsonRepresentation
          property :href, as: 'href'
          property :type, as: 'type'
        end
        
        # @private
        class PermissionsRepresentation < Google::Apis::Core::JsonRepresentation
          collection :effective, as: 'effective'
        end
      end

      # @private
      class ProfileFilterLinkRepresentation < Google::Apis::Core::JsonRepresentation
        property :filter_ref, as: 'filterRef', class: Google::Apis::AnalyticsV3::FilterRef, decorator: Google::Apis::AnalyticsV3::FilterRefRepresentation
        
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :profile_ref, as: 'profileRef', class: Google::Apis::AnalyticsV3::ProfileRef, decorator: Google::Apis::AnalyticsV3::ProfileRefRepresentation
        
        property :rank, as: 'rank'
        property :self_link, as: 'selfLink'
      end

      # @private
      class ProfileFilterLinksRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::AnalyticsV3::ProfileFilterLink, decorator: Google::Apis::AnalyticsV3::ProfileFilterLinkRepresentation
        
        
        property :items_per_page, as: 'itemsPerPage'
        property :kind, as: 'kind'
        property :next_link, as: 'nextLink'
        property :previous_link, as: 'previousLink'
        property :start_index, as: 'startIndex'
        property :total_results, as: 'totalResults'
        property :username, as: 'username'
      end

      # @private
      class ProfileRefRepresentation < Google::Apis::Core::JsonRepresentation
        property :account_id, as: 'accountId'
        property :href, as: 'href'
        property :id, as: 'id'
        property :internal_web_property_id, as: 'internalWebPropertyId'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :web_property_id, as: 'webPropertyId'
      end

      # @private
      class ProfileSummaryRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :type, as: 'type'
      end

      # @private
      class ProfilesRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::AnalyticsV3::Profile, decorator: Google::Apis::AnalyticsV3::ProfileRepresentation
        
        
        property :items_per_page, as: 'itemsPerPage'
        property :kind, as: 'kind'
        property :next_link, as: 'nextLink'
        property :previous_link, as: 'previousLink'
        property :start_index, as: 'startIndex'
        property :total_results, as: 'totalResults'
        property :username, as: 'username'
      end

      # @private
      class RealtimeDataRepresentation < Google::Apis::Core::JsonRepresentation
        class ColumnHeaderRepresentation < Google::Apis::Core::JsonRepresentation; end
        class ProfileInfoRepresentation < Google::Apis::Core::JsonRepresentation; end
        class QueryRepresentation < Google::Apis::Core::JsonRepresentation; end
        collection :column_headers, as: 'columnHeaders', class: Google::Apis::AnalyticsV3::RealtimeData::ColumnHeader, decorator: Google::Apis::AnalyticsV3::RealtimeDataRepresentation::ColumnHeaderRepresentation
        
        
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :profile_info, as: 'profileInfo', class: Google::Apis::AnalyticsV3::RealtimeData::ProfileInfo, decorator: Google::Apis::AnalyticsV3::RealtimeDataRepresentation::ProfileInfoRepresentation
        
        property :query, as: 'query', class: Google::Apis::AnalyticsV3::RealtimeData::Query, decorator: Google::Apis::AnalyticsV3::RealtimeDataRepresentation::QueryRepresentation
        
        collection :rows, as: 'rows', :class => Array do
          include Representable::JSON::Collection
          items
        end
        
        
        property :self_link, as: 'selfLink'
        property :total_results, as: 'totalResults'
        hash :totals_for_all_results, as: 'totalsForAllResults'
        
        
        # @private
        class ColumnHeaderRepresentation < Google::Apis::Core::JsonRepresentation
          property :column_type, as: 'columnType'
          property :data_type, as: 'dataType'
          property :name, as: 'name'
        end
        
        # @private
        class ProfileInfoRepresentation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :internal_web_property_id, as: 'internalWebPropertyId'
          property :profile_id, as: 'profileId'
          property :profile_name, as: 'profileName'
          property :table_id, as: 'tableId'
          property :web_property_id, as: 'webPropertyId'
        end
        
        # @private
        class QueryRepresentation < Google::Apis::Core::JsonRepresentation
          property :dimensions, as: 'dimensions'
          property :filters, as: 'filters'
          property :ids, as: 'ids'
          property :max_results, as: 'max-results'
          collection :metrics, as: 'metrics'
          
          collection :sort, as: 'sort'
        end
      end

      # @private
      class SegmentRepresentation < Google::Apis::Core::JsonRepresentation
        property :created, as: 'created', type: DateTime
        property :definition, as: 'definition'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :segment_id, as: 'segmentId'
        property :self_link, as: 'selfLink'
        property :type, as: 'type'
        property :updated, as: 'updated', type: DateTime
      end

      # @private
      class SegmentsRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::AnalyticsV3::Segment, decorator: Google::Apis::AnalyticsV3::SegmentRepresentation
        
        
        property :items_per_page, as: 'itemsPerPage'
        property :kind, as: 'kind'
        property :next_link, as: 'nextLink'
        property :previous_link, as: 'previousLink'
        property :start_index, as: 'startIndex'
        property :total_results, as: 'totalResults'
        property :username, as: 'username'
      end

      # @private
      class UnsampledReportRepresentation < Google::Apis::Core::JsonRepresentation
        class CloudStorageDownloadDetailsRepresentation < Google::Apis::Core::JsonRepresentation; end
        class DriveDownloadDetailsRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :account_id, as: 'accountId'
        property :cloud_storage_download_details, as: 'cloudStorageDownloadDetails', class: Google::Apis::AnalyticsV3::UnsampledReport::CloudStorageDownloadDetails, decorator: Google::Apis::AnalyticsV3::UnsampledReportRepresentation::CloudStorageDownloadDetailsRepresentation
        
        property :created, as: 'created', type: DateTime
        property :dimensions, as: 'dimensions'
        property :download_type, as: 'downloadType'
        property :drive_download_details, as: 'driveDownloadDetails', class: Google::Apis::AnalyticsV3::UnsampledReport::DriveDownloadDetails, decorator: Google::Apis::AnalyticsV3::UnsampledReportRepresentation::DriveDownloadDetailsRepresentation
        
        property :end_date, as: 'end-date'
        property :filters, as: 'filters'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :metrics, as: 'metrics'
        property :profile_id, as: 'profileId'
        property :segment, as: 'segment'
        property :self_link, as: 'selfLink'
        property :start_date, as: 'start-date'
        property :status, as: 'status'
        property :title, as: 'title'
        property :updated, as: 'updated', type: DateTime
        property :web_property_id, as: 'webPropertyId'
        
        # @private
        class CloudStorageDownloadDetailsRepresentation < Google::Apis::Core::JsonRepresentation
          property :bucket_id, as: 'bucketId'
          property :object_id_prop, as: 'objectId'
        end
        
        # @private
        class DriveDownloadDetailsRepresentation < Google::Apis::Core::JsonRepresentation
          property :document_id, as: 'documentId'
        end
      end

      # @private
      class UnsampledReportsRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::AnalyticsV3::UnsampledReport, decorator: Google::Apis::AnalyticsV3::UnsampledReportRepresentation
        
        
        property :items_per_page, as: 'itemsPerPage'
        property :kind, as: 'kind'
        property :next_link, as: 'nextLink'
        property :previous_link, as: 'previousLink'
        property :start_index, as: 'startIndex'
        property :total_results, as: 'totalResults'
        property :username, as: 'username'
      end

      # @private
      class UploadRepresentation < Google::Apis::Core::JsonRepresentation
        property :account_id, as: 'accountId'
        property :custom_data_source_id, as: 'customDataSourceId'
        collection :errors, as: 'errors'
        
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :status, as: 'status'
      end

      # @private
      class UploadsRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::AnalyticsV3::Upload, decorator: Google::Apis::AnalyticsV3::UploadRepresentation
        
        
        property :items_per_page, as: 'itemsPerPage'
        property :kind, as: 'kind'
        property :next_link, as: 'nextLink'
        property :previous_link, as: 'previousLink'
        property :start_index, as: 'startIndex'
        property :total_results, as: 'totalResults'
      end

      # @private
      class UserRefRepresentation < Google::Apis::Core::JsonRepresentation
        property :email, as: 'email'
        property :id, as: 'id'
        property :kind, as: 'kind'
      end

      # @private
      class WebPropertyRefRepresentation < Google::Apis::Core::JsonRepresentation
        property :account_id, as: 'accountId'
        property :href, as: 'href'
        property :id, as: 'id'
        property :internal_web_property_id, as: 'internalWebPropertyId'
        property :kind, as: 'kind'
        property :name, as: 'name'
      end

      # @private
      class WebPropertySummaryRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :internal_web_property_id, as: 'internalWebPropertyId'
        property :kind, as: 'kind'
        property :level, as: 'level'
        property :name, as: 'name'
        collection :profiles, as: 'profiles', class: Google::Apis::AnalyticsV3::ProfileSummary, decorator: Google::Apis::AnalyticsV3::ProfileSummaryRepresentation
        
        
        property :website_url, as: 'websiteUrl'
      end

      # @private
      class WebpropertiesRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::AnalyticsV3::Webproperty, decorator: Google::Apis::AnalyticsV3::WebpropertyRepresentation
        
        
        property :items_per_page, as: 'itemsPerPage'
        property :kind, as: 'kind'
        property :next_link, as: 'nextLink'
        property :previous_link, as: 'previousLink'
        property :start_index, as: 'startIndex'
        property :total_results, as: 'totalResults'
        property :username, as: 'username'
      end

      # @private
      class WebpropertyRepresentation < Google::Apis::Core::JsonRepresentation
        class ChildLinkRepresentation < Google::Apis::Core::JsonRepresentation; end
        class ParentLinkRepresentation < Google::Apis::Core::JsonRepresentation; end
        class PermissionsRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :account_id, as: 'accountId'
        property :child_link, as: 'childLink', class: Google::Apis::AnalyticsV3::Webproperty::ChildLink, decorator: Google::Apis::AnalyticsV3::WebpropertyRepresentation::ChildLinkRepresentation
        
        property :created, as: 'created', type: DateTime
        property :default_profile_id, as: 'defaultProfileId'
        property :id, as: 'id'
        property :industry_vertical, as: 'industryVertical'
        property :internal_web_property_id, as: 'internalWebPropertyId'
        property :kind, as: 'kind'
        property :level, as: 'level'
        property :name, as: 'name'
        property :parent_link, as: 'parentLink', class: Google::Apis::AnalyticsV3::Webproperty::ParentLink, decorator: Google::Apis::AnalyticsV3::WebpropertyRepresentation::ParentLinkRepresentation
        
        property :permissions, as: 'permissions', class: Google::Apis::AnalyticsV3::Webproperty::Permissions, decorator: Google::Apis::AnalyticsV3::WebpropertyRepresentation::PermissionsRepresentation
        
        property :profile_count, as: 'profileCount'
        property :self_link, as: 'selfLink'
        property :updated, as: 'updated', type: DateTime
        property :website_url, as: 'websiteUrl'
        
        # @private
        class ChildLinkRepresentation < Google::Apis::Core::JsonRepresentation
          property :href, as: 'href'
          property :type, as: 'type'
        end
        
        # @private
        class ParentLinkRepresentation < Google::Apis::Core::JsonRepresentation
          property :href, as: 'href'
          property :type, as: 'type'
        end
        
        # @private
        class PermissionsRepresentation < Google::Apis::Core::JsonRepresentation
          collection :effective, as: 'effective'
        end
      end
    end
  end
end
