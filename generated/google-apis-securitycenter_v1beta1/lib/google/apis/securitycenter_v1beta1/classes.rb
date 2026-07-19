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
    module SecuritycenterV1beta1
      
      # 
      class Access
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `callerIp`
        # @return [String]
        attr_accessor :caller_ip
      
        # 
        # Corresponds to the JSON property `callerIpGeo`
        # @return [Google::Apis::SecuritycenterV1beta1::Geolocation]
        attr_accessor :caller_ip_geo
      
        # 
        # Corresponds to the JSON property `methodName`
        # @return [String]
        attr_accessor :method_name
      
        # 
        # Corresponds to the JSON property `principalEmail`
        # @return [String]
        attr_accessor :principal_email
      
        # 
        # Corresponds to the JSON property `principalSubject`
        # @return [String]
        attr_accessor :principal_subject
      
        # 
        # Corresponds to the JSON property `serviceAccountDelegationInfo`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::ServiceAccountDelegationInfo>]
        attr_accessor :service_account_delegation_info
      
        # 
        # Corresponds to the JSON property `serviceAccountKeyName`
        # @return [String]
        attr_accessor :service_account_key_name
      
        # 
        # Corresponds to the JSON property `serviceName`
        # @return [String]
        attr_accessor :service_name
      
        # 
        # Corresponds to the JSON property `userAgent`
        # @return [String]
        attr_accessor :user_agent
      
        # 
        # Corresponds to the JSON property `userAgentFamily`
        # @return [String]
        attr_accessor :user_agent_family
      
        # 
        # Corresponds to the JSON property `userName`
        # @return [String]
        attr_accessor :user_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @caller_ip = args[:caller_ip] if args.key?(:caller_ip)
          @caller_ip_geo = args[:caller_ip_geo] if args.key?(:caller_ip_geo)
          @method_name = args[:method_name] if args.key?(:method_name)
          @principal_email = args[:principal_email] if args.key?(:principal_email)
          @principal_subject = args[:principal_subject] if args.key?(:principal_subject)
          @service_account_delegation_info = args[:service_account_delegation_info] if args.key?(:service_account_delegation_info)
          @service_account_key_name = args[:service_account_key_name] if args.key?(:service_account_key_name)
          @service_name = args[:service_name] if args.key?(:service_name)
          @user_agent = args[:user_agent] if args.key?(:user_agent)
          @user_agent_family = args[:user_agent_family] if args.key?(:user_agent_family)
          @user_name = args[:user_name] if args.key?(:user_name)
        end
      end
      
      # 
      class AccessReview
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `group`
        # @return [String]
        attr_accessor :group
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `ns`
        # @return [String]
        attr_accessor :ns
      
        # 
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # 
        # Corresponds to the JSON property `subresource`
        # @return [String]
        attr_accessor :subresource
      
        # 
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        # 
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group = args[:group] if args.key?(:group)
          @name = args[:name] if args.key?(:name)
          @ns = args[:ns] if args.key?(:ns)
          @resource = args[:resource] if args.key?(:resource)
          @subresource = args[:subresource] if args.key?(:subresource)
          @verb = args[:verb] if args.key?(:verb)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # 
      class AdaptiveProtection
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
        end
      end
      
      # 
      class AdcApplication
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `attributes`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1ResourceApplicationAttributes]
        attr_accessor :attributes
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class AdcApplicationTemplateRevision
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class AdcSharedTemplateRevision
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class AffectedResources
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
        end
      end
      
      # 
      class Agent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # 
      class AgentAnomaly
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `confidenceScore`
        # @return [Float]
        attr_accessor :confidence_score
      
        # 
        # Corresponds to the JSON property `detectorReferences`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::DetectorReference>]
        attr_accessor :detector_references
      
        # 
        # Corresponds to the JSON property `invocationReferences`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::InvocationReference>]
        attr_accessor :invocation_references
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence_score = args[:confidence_score] if args.key?(:confidence_score)
          @detector_references = args[:detector_references] if args.key?(:detector_references)
          @invocation_references = args[:invocation_references] if args.key?(:invocation_references)
        end
      end
      
      # 
      class AgentDataAccessEvent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `eventId`
        # @return [String]
        attr_accessor :event_id
      
        # 
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # 
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        # 
        # Corresponds to the JSON property `principalSubject`
        # @return [String]
        attr_accessor :principal_subject
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_id = args[:event_id] if args.key?(:event_id)
          @event_time = args[:event_time] if args.key?(:event_time)
          @operation = args[:operation] if args.key?(:operation)
          @principal_subject = args[:principal_subject] if args.key?(:principal_subject)
        end
      end
      
      # 
      class AgentSession
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `sessionId`
        # @return [String]
        attr_accessor :session_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @session_id = args[:session_id] if args.key?(:session_id)
        end
      end
      
      # 
      class AiModel
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `deploymentPlatform`
        # @return [String]
        attr_accessor :deployment_platform
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # 
        # Corresponds to the JSON property `library`
        # @return [String]
        attr_accessor :library
      
        # 
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `publisher`
        # @return [String]
        attr_accessor :publisher
      
        # 
        # Corresponds to the JSON property `usageCategory`
        # @return [String]
        attr_accessor :usage_category
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deployment_platform = args[:deployment_platform] if args.key?(:deployment_platform)
          @display_name = args[:display_name] if args.key?(:display_name)
          @domain = args[:domain] if args.key?(:domain)
          @library = args[:library] if args.key?(:library)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @publisher = args[:publisher] if args.key?(:publisher)
          @usage_category = args[:usage_category] if args.key?(:usage_category)
        end
      end
      
      # 
      class Allowed
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `ipRules`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::IpRule>]
        attr_accessor :ip_rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_rules = args[:ip_rules] if args.key?(:ip_rules)
        end
      end
      
      # 
      class Application
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `baseUri`
        # @return [String]
        attr_accessor :base_uri
      
        # 
        # Corresponds to the JSON property `fullUri`
        # @return [String]
        attr_accessor :full_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_uri = args[:base_uri] if args.key?(:base_uri)
          @full_uri = args[:full_uri] if args.key?(:full_uri)
        end
      end
      
      # 
      class ArtifactGuardPolicies
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `failingPolicies`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::ArtifactGuardPolicy>]
        attr_accessor :failing_policies
      
        # 
        # Corresponds to the JSON property `resourceId`
        # @return [String]
        attr_accessor :resource_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failing_policies = args[:failing_policies] if args.key?(:failing_policies)
          @resource_id = args[:resource_id] if args.key?(:resource_id)
        end
      end
      
      # 
      class ArtifactGuardPolicy
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `failureReason`
        # @return [String]
        attr_accessor :failure_reason
      
        # 
        # Corresponds to the JSON property `policyId`
        # @return [String]
        attr_accessor :policy_id
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failure_reason = args[:failure_reason] if args.key?(:failure_reason)
          @policy_id = args[:policy_id] if args.key?(:policy_id)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class Asset
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `resourceProperties`
        # @return [Hash<String,Object>]
        attr_accessor :resource_properties
      
        # 
        # Corresponds to the JSON property `securityCenterProperties`
        # @return [Google::Apis::SecuritycenterV1beta1::SecurityCenterProperties]
        attr_accessor :security_center_properties
      
        # 
        # Corresponds to the JSON property `securityMarks`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1beta1SecurityMarks]
        attr_accessor :security_marks
      
        # 
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @resource_properties = args[:resource_properties] if args.key?(:resource_properties)
          @security_center_properties = args[:security_center_properties] if args.key?(:security_center_properties)
          @security_marks = args[:security_marks] if args.key?(:security_marks)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # 
      class AssetDiscoveryConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `inclusionMode`
        # @return [String]
        attr_accessor :inclusion_mode
      
        # 
        # Corresponds to the JSON property `projectIds`
        # @return [Array<String>]
        attr_accessor :project_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inclusion_mode = args[:inclusion_mode] if args.key?(:inclusion_mode)
          @project_ids = args[:project_ids] if args.key?(:project_ids)
        end
      end
      
      # 
      class Attack
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `classification`
        # @return [String]
        attr_accessor :classification
      
        # 
        # Corresponds to the JSON property `volumeBps`
        # @return [Fixnum]
        attr_accessor :volume_bps
      
        # 
        # Corresponds to the JSON property `volumeBpsLong`
        # @return [Fixnum]
        attr_accessor :volume_bps_long
      
        # 
        # Corresponds to the JSON property `volumePps`
        # @return [Fixnum]
        attr_accessor :volume_pps
      
        # 
        # Corresponds to the JSON property `volumePpsLong`
        # @return [Fixnum]
        attr_accessor :volume_pps_long
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @classification = args[:classification] if args.key?(:classification)
          @volume_bps = args[:volume_bps] if args.key?(:volume_bps)
          @volume_bps_long = args[:volume_bps_long] if args.key?(:volume_bps_long)
          @volume_pps = args[:volume_pps] if args.key?(:volume_pps)
          @volume_pps_long = args[:volume_pps_long] if args.key?(:volume_pps_long)
        end
      end
      
      # 
      class AttackExposure
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `attackExposureResult`
        # @return [String]
        attr_accessor :attack_exposure_result
      
        # 
        # Corresponds to the JSON property `exposedHighValueResourcesCount`
        # @return [Fixnum]
        attr_accessor :exposed_high_value_resources_count
      
        # 
        # Corresponds to the JSON property `exposedLowValueResourcesCount`
        # @return [Fixnum]
        attr_accessor :exposed_low_value_resources_count
      
        # 
        # Corresponds to the JSON property `exposedMediumValueResourcesCount`
        # @return [Fixnum]
        attr_accessor :exposed_medium_value_resources_count
      
        # 
        # Corresponds to the JSON property `latestCalculationTime`
        # @return [String]
        attr_accessor :latest_calculation_time
      
        # 
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attack_exposure_result = args[:attack_exposure_result] if args.key?(:attack_exposure_result)
          @exposed_high_value_resources_count = args[:exposed_high_value_resources_count] if args.key?(:exposed_high_value_resources_count)
          @exposed_low_value_resources_count = args[:exposed_low_value_resources_count] if args.key?(:exposed_low_value_resources_count)
          @exposed_medium_value_resources_count = args[:exposed_medium_value_resources_count] if args.key?(:exposed_medium_value_resources_count)
          @latest_calculation_time = args[:latest_calculation_time] if args.key?(:latest_calculation_time)
          @score = args[:score] if args.key?(:score)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # 
      class AuditConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::AuditLogConfig>]
        attr_accessor :audit_log_configs
      
        # 
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_log_configs = args[:audit_log_configs] if args.key?(:audit_log_configs)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # 
      class AuditLogConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `exemptedMembers`
        # @return [Array<String>]
        attr_accessor :exempted_members
      
        # 
        # Corresponds to the JSON property `logType`
        # @return [String]
        attr_accessor :log_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exempted_members = args[:exempted_members] if args.key?(:exempted_members)
          @log_type = args[:log_type] if args.key?(:log_type)
        end
      end
      
      # 
      class AwsAccount
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class AwsMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `account`
        # @return [Google::Apis::SecuritycenterV1beta1::AwsAccount]
        attr_accessor :account
      
        # 
        # Corresponds to the JSON property `organization`
        # @return [Google::Apis::SecuritycenterV1beta1::AwsOrganization]
        attr_accessor :organization
      
        # 
        # Corresponds to the JSON property `organizationalUnits`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::AwsOrganizationalUnit>]
        attr_accessor :organizational_units
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] if args.key?(:account)
          @organization = args[:organization] if args.key?(:organization)
          @organizational_units = args[:organizational_units] if args.key?(:organizational_units)
        end
      end
      
      # 
      class AwsOrganization
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # 
      class AwsOrganizationalUnit
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class AzureManagementGroup
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # 
      class AzureMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `managementGroups`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::AzureManagementGroup>]
        attr_accessor :management_groups
      
        # 
        # Corresponds to the JSON property `resourceGroup`
        # @return [Google::Apis::SecuritycenterV1beta1::AzureResourceGroup]
        attr_accessor :resource_group
      
        # 
        # Corresponds to the JSON property `subscription`
        # @return [Google::Apis::SecuritycenterV1beta1::AzureSubscription]
        attr_accessor :subscription
      
        # 
        # Corresponds to the JSON property `tenant`
        # @return [Google::Apis::SecuritycenterV1beta1::AzureTenant]
        attr_accessor :tenant
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @management_groups = args[:management_groups] if args.key?(:management_groups)
          @resource_group = args[:resource_group] if args.key?(:resource_group)
          @subscription = args[:subscription] if args.key?(:subscription)
          @tenant = args[:tenant] if args.key?(:tenant)
        end
      end
      
      # 
      class AzureResourceGroup
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class AzureSubscription
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # 
      class AzureTenant
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # 
      class BackupDisasterRecovery
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `appliance`
        # @return [String]
        attr_accessor :appliance
      
        # 
        # Corresponds to the JSON property `applications`
        # @return [Array<String>]
        attr_accessor :applications
      
        # 
        # Corresponds to the JSON property `backupCreateTime`
        # @return [String]
        attr_accessor :backup_create_time
      
        # 
        # Corresponds to the JSON property `backupTemplate`
        # @return [String]
        attr_accessor :backup_template
      
        # 
        # Corresponds to the JSON property `backupType`
        # @return [String]
        attr_accessor :backup_type
      
        # 
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # 
        # Corresponds to the JSON property `policies`
        # @return [Array<String>]
        attr_accessor :policies
      
        # 
        # Corresponds to the JSON property `policyOptions`
        # @return [Array<String>]
        attr_accessor :policy_options
      
        # 
        # Corresponds to the JSON property `profile`
        # @return [String]
        attr_accessor :profile
      
        # 
        # Corresponds to the JSON property `storagePool`
        # @return [String]
        attr_accessor :storage_pool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @appliance = args[:appliance] if args.key?(:appliance)
          @applications = args[:applications] if args.key?(:applications)
          @backup_create_time = args[:backup_create_time] if args.key?(:backup_create_time)
          @backup_template = args[:backup_template] if args.key?(:backup_template)
          @backup_type = args[:backup_type] if args.key?(:backup_type)
          @host = args[:host] if args.key?(:host)
          @policies = args[:policies] if args.key?(:policies)
          @policy_options = args[:policy_options] if args.key?(:policy_options)
          @profile = args[:profile] if args.key?(:profile)
          @storage_pool = args[:storage_pool] if args.key?(:storage_pool)
        end
      end
      
      # 
      class BigQueryDestination
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset = args[:dataset] if args.key?(:dataset)
        end
      end
      
      # 
      class Binding
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::SecuritycenterV1beta1::Expr]
        attr_accessor :condition
      
        # 
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # 
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @members = args[:members] if args.key?(:members)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # 
      class CancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class Chokepoint
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `relatedFindings`
        # @return [Array<String>]
        attr_accessor :related_findings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @related_findings = args[:related_findings] if args.key?(:related_findings)
        end
      end
      
      # 
      class CloudArmor
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `adaptiveProtection`
        # @return [Google::Apis::SecuritycenterV1beta1::AdaptiveProtection]
        attr_accessor :adaptive_protection
      
        # 
        # Corresponds to the JSON property `attack`
        # @return [Google::Apis::SecuritycenterV1beta1::Attack]
        attr_accessor :attack
      
        # 
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # 
        # Corresponds to the JSON property `requests`
        # @return [Google::Apis::SecuritycenterV1beta1::Requests]
        attr_accessor :requests
      
        # 
        # Corresponds to the JSON property `securityPolicy`
        # @return [Google::Apis::SecuritycenterV1beta1::SecurityPolicy]
        attr_accessor :security_policy
      
        # 
        # Corresponds to the JSON property `threatVector`
        # @return [String]
        attr_accessor :threat_vector
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adaptive_protection = args[:adaptive_protection] if args.key?(:adaptive_protection)
          @attack = args[:attack] if args.key?(:attack)
          @duration = args[:duration] if args.key?(:duration)
          @requests = args[:requests] if args.key?(:requests)
          @security_policy = args[:security_policy] if args.key?(:security_policy)
          @threat_vector = args[:threat_vector] if args.key?(:threat_vector)
        end
      end
      
      # 
      class CloudControl
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `cloudControlName`
        # @return [String]
        attr_accessor :cloud_control_name
      
        # 
        # Corresponds to the JSON property `policyType`
        # @return [String]
        attr_accessor :policy_type
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # 
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_control_name = args[:cloud_control_name] if args.key?(:cloud_control_name)
          @policy_type = args[:policy_type] if args.key?(:policy_type)
          @type = args[:type] if args.key?(:type)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # 
      class CloudDlpDataProfile
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dataProfile`
        # @return [String]
        attr_accessor :data_profile
      
        # 
        # Corresponds to the JSON property `infoTypes`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::InfoType>]
        attr_accessor :info_types
      
        # 
        # Corresponds to the JSON property `parentType`
        # @return [String]
        attr_accessor :parent_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_profile = args[:data_profile] if args.key?(:data_profile)
          @info_types = args[:info_types] if args.key?(:info_types)
          @parent_type = args[:parent_type] if args.key?(:parent_type)
        end
      end
      
      # 
      class CloudDlpInspection
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `fullScan`
        # @return [Boolean]
        attr_accessor :full_scan
        alias_method :full_scan?, :full_scan
      
        # 
        # Corresponds to the JSON property `infoType`
        # @return [String]
        attr_accessor :info_type
      
        # 
        # Corresponds to the JSON property `infoTypeCount`
        # @return [Fixnum]
        attr_accessor :info_type_count
      
        # 
        # Corresponds to the JSON property `inspectJob`
        # @return [String]
        attr_accessor :inspect_job
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @full_scan = args[:full_scan] if args.key?(:full_scan)
          @info_type = args[:info_type] if args.key?(:info_type)
          @info_type_count = args[:info_type_count] if args.key?(:info_type_count)
          @inspect_job = args[:inspect_job] if args.key?(:inspect_job)
        end
      end
      
      # 
      class CloudLoggingEntry
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `insertId`
        # @return [String]
        attr_accessor :insert_id
      
        # 
        # Corresponds to the JSON property `logId`
        # @return [String]
        attr_accessor :log_id
      
        # 
        # Corresponds to the JSON property `resourceContainer`
        # @return [String]
        attr_accessor :resource_container
      
        # 
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @insert_id = args[:insert_id] if args.key?(:insert_id)
          @log_id = args[:log_id] if args.key?(:log_id)
          @resource_container = args[:resource_container] if args.key?(:resource_container)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
        end
      end
      
      # 
      class Compliance
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `ids`
        # @return [Array<String>]
        attr_accessor :ids
      
        # 
        # Corresponds to the JSON property `standard`
        # @return [String]
        attr_accessor :standard
      
        # 
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ids = args[:ids] if args.key?(:ids)
          @standard = args[:standard] if args.key?(:standard)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # 
      class ComplianceDetails
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `cloudControl`
        # @return [Google::Apis::SecuritycenterV1beta1::CloudControl]
        attr_accessor :cloud_control
      
        # 
        # Corresponds to the JSON property `cloudControlDeploymentNames`
        # @return [Array<String>]
        attr_accessor :cloud_control_deployment_names
      
        # 
        # Corresponds to the JSON property `frameworks`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Framework>]
        attr_accessor :frameworks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_control = args[:cloud_control] if args.key?(:cloud_control)
          @cloud_control_deployment_names = args[:cloud_control_deployment_names] if args.key?(:cloud_control_deployment_names)
          @frameworks = args[:frameworks] if args.key?(:frameworks)
        end
      end
      
      # 
      class Connection
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `destinationIp`
        # @return [String]
        attr_accessor :destination_ip
      
        # 
        # Corresponds to the JSON property `destinationPort`
        # @return [Fixnum]
        attr_accessor :destination_port
      
        # 
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        # 
        # Corresponds to the JSON property `sourceIp`
        # @return [String]
        attr_accessor :source_ip
      
        # 
        # Corresponds to the JSON property `sourcePort`
        # @return [Fixnum]
        attr_accessor :source_port
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_ip = args[:destination_ip] if args.key?(:destination_ip)
          @destination_port = args[:destination_port] if args.key?(:destination_port)
          @protocol = args[:protocol] if args.key?(:protocol)
          @source_ip = args[:source_ip] if args.key?(:source_ip)
          @source_port = args[:source_port] if args.key?(:source_port)
        end
      end
      
      # 
      class Contact
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
        end
      end
      
      # 
      class ContactDetails
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contacts`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Contact>]
        attr_accessor :contacts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contacts = args[:contacts] if args.key?(:contacts)
        end
      end
      
      # 
      class Container
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `imageId`
        # @return [String]
        attr_accessor :image_id
      
        # 
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Label>]
        attr_accessor :labels
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @image_id = args[:image_id] if args.key?(:image_id)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # 
      class Control
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `controlName`
        # @return [String]
        attr_accessor :control_name
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @control_name = args[:control_name] if args.key?(:control_name)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # 
      class Cve
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `cvssv3`
        # @return [Google::Apis::SecuritycenterV1beta1::Cvssv3]
        attr_accessor :cvssv3
      
        # 
        # Corresponds to the JSON property `exploitReleaseDate`
        # @return [String]
        attr_accessor :exploit_release_date
      
        # 
        # Corresponds to the JSON property `exploitationActivity`
        # @return [String]
        attr_accessor :exploitation_activity
      
        # 
        # Corresponds to the JSON property `firstExploitationDate`
        # @return [String]
        attr_accessor :first_exploitation_date
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `impact`
        # @return [String]
        attr_accessor :impact
      
        # 
        # Corresponds to the JSON property `observedInTheWild`
        # @return [Boolean]
        attr_accessor :observed_in_the_wild
        alias_method :observed_in_the_wild?, :observed_in_the_wild
      
        # 
        # Corresponds to the JSON property `references`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Reference>]
        attr_accessor :references
      
        # 
        # Corresponds to the JSON property `upstreamFixAvailable`
        # @return [Boolean]
        attr_accessor :upstream_fix_available
        alias_method :upstream_fix_available?, :upstream_fix_available
      
        # 
        # Corresponds to the JSON property `zeroDay`
        # @return [Boolean]
        attr_accessor :zero_day
        alias_method :zero_day?, :zero_day
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cvssv3 = args[:cvssv3] if args.key?(:cvssv3)
          @exploit_release_date = args[:exploit_release_date] if args.key?(:exploit_release_date)
          @exploitation_activity = args[:exploitation_activity] if args.key?(:exploitation_activity)
          @first_exploitation_date = args[:first_exploitation_date] if args.key?(:first_exploitation_date)
          @id = args[:id] if args.key?(:id)
          @impact = args[:impact] if args.key?(:impact)
          @observed_in_the_wild = args[:observed_in_the_wild] if args.key?(:observed_in_the_wild)
          @references = args[:references] if args.key?(:references)
          @upstream_fix_available = args[:upstream_fix_available] if args.key?(:upstream_fix_available)
          @zero_day = args[:zero_day] if args.key?(:zero_day)
        end
      end
      
      # 
      class Cvssv3
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `attackComplexity`
        # @return [String]
        attr_accessor :attack_complexity
      
        # 
        # Corresponds to the JSON property `attackVector`
        # @return [String]
        attr_accessor :attack_vector
      
        # 
        # Corresponds to the JSON property `availabilityImpact`
        # @return [String]
        attr_accessor :availability_impact
      
        # 
        # Corresponds to the JSON property `baseScore`
        # @return [Float]
        attr_accessor :base_score
      
        # 
        # Corresponds to the JSON property `confidentialityImpact`
        # @return [String]
        attr_accessor :confidentiality_impact
      
        # 
        # Corresponds to the JSON property `integrityImpact`
        # @return [String]
        attr_accessor :integrity_impact
      
        # 
        # Corresponds to the JSON property `privilegesRequired`
        # @return [String]
        attr_accessor :privileges_required
      
        # 
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # 
        # Corresponds to the JSON property `userInteraction`
        # @return [String]
        attr_accessor :user_interaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attack_complexity = args[:attack_complexity] if args.key?(:attack_complexity)
          @attack_vector = args[:attack_vector] if args.key?(:attack_vector)
          @availability_impact = args[:availability_impact] if args.key?(:availability_impact)
          @base_score = args[:base_score] if args.key?(:base_score)
          @confidentiality_impact = args[:confidentiality_impact] if args.key?(:confidentiality_impact)
          @integrity_impact = args[:integrity_impact] if args.key?(:integrity_impact)
          @privileges_required = args[:privileges_required] if args.key?(:privileges_required)
          @scope = args[:scope] if args.key?(:scope)
          @user_interaction = args[:user_interaction] if args.key?(:user_interaction)
        end
      end
      
      # 
      class Cwe
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `references`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Reference>]
        attr_accessor :references
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @references = args[:references] if args.key?(:references)
        end
      end
      
      # 
      class DataAccessEvent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `eventId`
        # @return [String]
        attr_accessor :event_id
      
        # 
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # 
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        # 
        # Corresponds to the JSON property `principalEmail`
        # @return [String]
        attr_accessor :principal_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_id = args[:event_id] if args.key?(:event_id)
          @event_time = args[:event_time] if args.key?(:event_time)
          @operation = args[:operation] if args.key?(:operation)
          @principal_email = args[:principal_email] if args.key?(:principal_email)
        end
      end
      
      # 
      class DataFlowEvent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `eventId`
        # @return [String]
        attr_accessor :event_id
      
        # 
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # 
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        # 
        # Corresponds to the JSON property `principalEmail`
        # @return [String]
        attr_accessor :principal_email
      
        # 
        # Corresponds to the JSON property `violatedLocation`
        # @return [String]
        attr_accessor :violated_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_id = args[:event_id] if args.key?(:event_id)
          @event_time = args[:event_time] if args.key?(:event_time)
          @operation = args[:operation] if args.key?(:operation)
          @principal_email = args[:principal_email] if args.key?(:principal_email)
          @violated_location = args[:violated_location] if args.key?(:violated_location)
        end
      end
      
      # 
      class DataRetentionDeletionEvent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dataObjectCount`
        # @return [Fixnum]
        attr_accessor :data_object_count
      
        # 
        # Corresponds to the JSON property `eventDetectionTime`
        # @return [String]
        attr_accessor :event_detection_time
      
        # 
        # Corresponds to the JSON property `eventType`
        # @return [String]
        attr_accessor :event_type
      
        # 
        # Corresponds to the JSON property `maxRetentionAllowed`
        # @return [String]
        attr_accessor :max_retention_allowed
      
        # 
        # Corresponds to the JSON property `minRetentionAllowed`
        # @return [String]
        attr_accessor :min_retention_allowed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_object_count = args[:data_object_count] if args.key?(:data_object_count)
          @event_detection_time = args[:event_detection_time] if args.key?(:event_detection_time)
          @event_type = args[:event_type] if args.key?(:event_type)
          @max_retention_allowed = args[:max_retention_allowed] if args.key?(:max_retention_allowed)
          @min_retention_allowed = args[:min_retention_allowed] if args.key?(:min_retention_allowed)
        end
      end
      
      # 
      class Database
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `grantees`
        # @return [Array<String>]
        attr_accessor :grantees
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # 
        # Corresponds to the JSON property `userName`
        # @return [String]
        attr_accessor :user_name
      
        # 
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @grantees = args[:grantees] if args.key?(:grantees)
          @name = args[:name] if args.key?(:name)
          @query = args[:query] if args.key?(:query)
          @user_name = args[:user_name] if args.key?(:user_name)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # 
      class Dataset
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # 
      class Denied
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `ipRules`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::IpRule>]
        attr_accessor :ip_rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_rules = args[:ip_rules] if args.key?(:ip_rules)
        end
      end
      
      # 
      class Detection
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `binary`
        # @return [String]
        attr_accessor :binary
      
        # 
        # Corresponds to the JSON property `percentPagesMatched`
        # @return [Float]
        attr_accessor :percent_pages_matched
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @binary = args[:binary] if args.key?(:binary)
          @percent_pages_matched = args[:percent_pages_matched] if args.key?(:percent_pages_matched)
        end
      end
      
      # 
      class DetectorReference
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `detectorId`
        # @return [String]
        attr_accessor :detector_id
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `explanation`
        # @return [String]
        attr_accessor :explanation
      
        # 
        # Corresponds to the JSON property `recommendation`
        # @return [String]
        attr_accessor :recommendation
      
        # 
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detector_id = args[:detector_id] if args.key?(:detector_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @explanation = args[:explanation] if args.key?(:explanation)
          @recommendation = args[:recommendation] if args.key?(:recommendation)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # 
      class DiscoveredWorkload
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `confidence`
        # @return [String]
        attr_accessor :confidence
      
        # 
        # Corresponds to the JSON property `detectedRelevantHardware`
        # @return [Boolean]
        attr_accessor :detected_relevant_hardware
        alias_method :detected_relevant_hardware?, :detected_relevant_hardware
      
        # 
        # Corresponds to the JSON property `detectedRelevantKeywords`
        # @return [Boolean]
        attr_accessor :detected_relevant_keywords
        alias_method :detected_relevant_keywords?, :detected_relevant_keywords
      
        # 
        # Corresponds to the JSON property `detectedRelevantPackages`
        # @return [Boolean]
        attr_accessor :detected_relevant_packages
        alias_method :detected_relevant_packages?, :detected_relevant_packages
      
        # 
        # Corresponds to the JSON property `workloadType`
        # @return [String]
        attr_accessor :workload_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @detected_relevant_hardware = args[:detected_relevant_hardware] if args.key?(:detected_relevant_hardware)
          @detected_relevant_keywords = args[:detected_relevant_keywords] if args.key?(:detected_relevant_keywords)
          @detected_relevant_packages = args[:detected_relevant_packages] if args.key?(:detected_relevant_packages)
          @workload_type = args[:workload_type] if args.key?(:workload_type)
        end
      end
      
      # 
      class Disk
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class DiskPath
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `partitionUuid`
        # @return [String]
        attr_accessor :partition_uuid
      
        # 
        # Corresponds to the JSON property `relativePath`
        # @return [String]
        attr_accessor :relative_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @partition_uuid = args[:partition_uuid] if args.key?(:partition_uuid)
          @relative_path = args[:relative_path] if args.key?(:relative_path)
        end
      end
      
      # 
      class DynamicMuteRecord
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `matchTime`
        # @return [String]
        attr_accessor :match_time
      
        # 
        # Corresponds to the JSON property `muteConfig`
        # @return [String]
        attr_accessor :mute_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @match_time = args[:match_time] if args.key?(:match_time)
          @mute_config = args[:mute_config] if args.key?(:mute_config)
        end
      end
      
      # 
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class EnvironmentVariable
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `val`
        # @return [String]
        attr_accessor :val
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @val = args[:val] if args.key?(:val)
        end
      end
      
      # 
      class ExfilResource
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `components`
        # @return [Array<String>]
        attr_accessor :components
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @components = args[:components] if args.key?(:components)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class Exfiltration
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `sources`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::ExfilResource>]
        attr_accessor :sources
      
        # 
        # Corresponds to the JSON property `targets`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::ExfilResource>]
        attr_accessor :targets
      
        # 
        # Corresponds to the JSON property `totalExfiltratedBytes`
        # @return [Fixnum]
        attr_accessor :total_exfiltrated_bytes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sources = args[:sources] if args.key?(:sources)
          @targets = args[:targets] if args.key?(:targets)
          @total_exfiltrated_bytes = args[:total_exfiltrated_bytes] if args.key?(:total_exfiltrated_bytes)
        end
      end
      
      # 
      class ExportFindingsMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `bigQueryDestination`
        # @return [Google::Apis::SecuritycenterV1beta1::BigQueryDestination]
        attr_accessor :big_query_destination
      
        # 
        # Corresponds to the JSON property `exportStartTime`
        # @return [String]
        attr_accessor :export_start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @big_query_destination = args[:big_query_destination] if args.key?(:big_query_destination)
          @export_start_time = args[:export_start_time] if args.key?(:export_start_time)
        end
      end
      
      # 
      class ExportFindingsResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class Expr
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        # 
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # 
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @expression = args[:expression] if args.key?(:expression)
          @location = args[:location] if args.key?(:location)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class ExternalExposure
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `backendBucket`
        # @return [String]
        attr_accessor :backend_bucket
      
        # 
        # Corresponds to the JSON property `backendService`
        # @return [String]
        attr_accessor :backend_service
      
        # 
        # Corresponds to the JSON property `exposedApplication`
        # @return [String]
        attr_accessor :exposed_application
      
        # 
        # Corresponds to the JSON property `exposedEndpoint`
        # @return [String]
        attr_accessor :exposed_endpoint
      
        # 
        # Corresponds to the JSON property `exposedService`
        # @return [String]
        attr_accessor :exposed_service
      
        # 
        # Corresponds to the JSON property `forwardingRule`
        # @return [String]
        attr_accessor :forwarding_rule
      
        # 
        # Corresponds to the JSON property `hostnameUri`
        # @return [String]
        attr_accessor :hostname_uri
      
        # 
        # Corresponds to the JSON property `httpResponse`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::HttpResponse>]
        attr_accessor :http_response
      
        # 
        # Corresponds to the JSON property `instanceGroup`
        # @return [String]
        attr_accessor :instance_group
      
        # 
        # Corresponds to the JSON property `internalBackendService`
        # @return [String]
        attr_accessor :internal_backend_service
      
        # 
        # Corresponds to the JSON property `loadBalancerFirewallPolicy`
        # @return [String]
        attr_accessor :load_balancer_firewall_policy
      
        # 
        # Corresponds to the JSON property `networkEndpointGroup`
        # @return [String]
        attr_accessor :network_endpoint_group
      
        # 
        # Corresponds to the JSON property `networkIngressFirewallPolicy`
        # @return [String]
        attr_accessor :network_ingress_firewall_policy
      
        # 
        # Corresponds to the JSON property `networkPathInsightsGenerationTime`
        # @return [String]
        attr_accessor :network_path_insights_generation_time
      
        # 
        # Corresponds to the JSON property `privateIpAddress`
        # @return [String]
        attr_accessor :private_ip_address
      
        # 
        # Corresponds to the JSON property `privatePort`
        # @return [String]
        attr_accessor :private_port
      
        # 
        # Corresponds to the JSON property `pscNetworkAttachment`
        # @return [String]
        attr_accessor :psc_network_attachment
      
        # 
        # Corresponds to the JSON property `pscServiceAttachment`
        # @return [String]
        attr_accessor :psc_service_attachment
      
        # 
        # Corresponds to the JSON property `publicIpAddress`
        # @return [String]
        attr_accessor :public_ip_address
      
        # 
        # Corresponds to the JSON property `publicPort`
        # @return [String]
        attr_accessor :public_port
      
        # 
        # Corresponds to the JSON property `serviceFirewallPolicy`
        # @return [String]
        attr_accessor :service_firewall_policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backend_bucket = args[:backend_bucket] if args.key?(:backend_bucket)
          @backend_service = args[:backend_service] if args.key?(:backend_service)
          @exposed_application = args[:exposed_application] if args.key?(:exposed_application)
          @exposed_endpoint = args[:exposed_endpoint] if args.key?(:exposed_endpoint)
          @exposed_service = args[:exposed_service] if args.key?(:exposed_service)
          @forwarding_rule = args[:forwarding_rule] if args.key?(:forwarding_rule)
          @hostname_uri = args[:hostname_uri] if args.key?(:hostname_uri)
          @http_response = args[:http_response] if args.key?(:http_response)
          @instance_group = args[:instance_group] if args.key?(:instance_group)
          @internal_backend_service = args[:internal_backend_service] if args.key?(:internal_backend_service)
          @load_balancer_firewall_policy = args[:load_balancer_firewall_policy] if args.key?(:load_balancer_firewall_policy)
          @network_endpoint_group = args[:network_endpoint_group] if args.key?(:network_endpoint_group)
          @network_ingress_firewall_policy = args[:network_ingress_firewall_policy] if args.key?(:network_ingress_firewall_policy)
          @network_path_insights_generation_time = args[:network_path_insights_generation_time] if args.key?(:network_path_insights_generation_time)
          @private_ip_address = args[:private_ip_address] if args.key?(:private_ip_address)
          @private_port = args[:private_port] if args.key?(:private_port)
          @psc_network_attachment = args[:psc_network_attachment] if args.key?(:psc_network_attachment)
          @psc_service_attachment = args[:psc_service_attachment] if args.key?(:psc_service_attachment)
          @public_ip_address = args[:public_ip_address] if args.key?(:public_ip_address)
          @public_port = args[:public_port] if args.key?(:public_port)
          @service_firewall_policy = args[:service_firewall_policy] if args.key?(:service_firewall_policy)
        end
      end
      
      # 
      class File
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contents`
        # @return [String]
        attr_accessor :contents
      
        # 
        # Corresponds to the JSON property `diskPath`
        # @return [Google::Apis::SecuritycenterV1beta1::DiskPath]
        attr_accessor :disk_path
      
        # 
        # Corresponds to the JSON property `fileLoadState`
        # @return [String]
        attr_accessor :file_load_state
      
        # 
        # Corresponds to the JSON property `hashedSize`
        # @return [Fixnum]
        attr_accessor :hashed_size
      
        # 
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::FileOperation>]
        attr_accessor :operations
      
        # 
        # Corresponds to the JSON property `partiallyHashed`
        # @return [Boolean]
        attr_accessor :partially_hashed
        alias_method :partially_hashed?, :partially_hashed
      
        # 
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # 
        # Corresponds to the JSON property `sha256`
        # @return [String]
        attr_accessor :sha256
      
        # 
        # Corresponds to the JSON property `size`
        # @return [Fixnum]
        attr_accessor :size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contents = args[:contents] if args.key?(:contents)
          @disk_path = args[:disk_path] if args.key?(:disk_path)
          @file_load_state = args[:file_load_state] if args.key?(:file_load_state)
          @hashed_size = args[:hashed_size] if args.key?(:hashed_size)
          @operations = args[:operations] if args.key?(:operations)
          @partially_hashed = args[:partially_hashed] if args.key?(:partially_hashed)
          @path = args[:path] if args.key?(:path)
          @sha256 = args[:sha256] if args.key?(:sha256)
          @size = args[:size] if args.key?(:size)
        end
      end
      
      # 
      class FileOperation
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class Finding
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `access`
        # @return [Google::Apis::SecuritycenterV1beta1::Access]
        attr_accessor :access
      
        # 
        # Corresponds to the JSON property `affectedResources`
        # @return [Google::Apis::SecuritycenterV1beta1::AffectedResources]
        attr_accessor :affected_resources
      
        # 
        # Corresponds to the JSON property `agent`
        # @return [Google::Apis::SecuritycenterV1beta1::Agent]
        attr_accessor :agent
      
        # 
        # Corresponds to the JSON property `agentAnomaly`
        # @return [Google::Apis::SecuritycenterV1beta1::AgentAnomaly]
        attr_accessor :agent_anomaly
      
        # 
        # Corresponds to the JSON property `agentDataAccessEvents`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::AgentDataAccessEvent>]
        attr_accessor :agent_data_access_events
      
        # 
        # Corresponds to the JSON property `agentSessions`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::AgentSession>]
        attr_accessor :agent_sessions
      
        # 
        # Corresponds to the JSON property `aiModel`
        # @return [Google::Apis::SecuritycenterV1beta1::AiModel]
        attr_accessor :ai_model
      
        # 
        # Corresponds to the JSON property `application`
        # @return [Google::Apis::SecuritycenterV1beta1::Application]
        attr_accessor :application
      
        # 
        # Corresponds to the JSON property `artifactGuardPolicies`
        # @return [Google::Apis::SecuritycenterV1beta1::ArtifactGuardPolicies]
        attr_accessor :artifact_guard_policies
      
        # 
        # Corresponds to the JSON property `attackExposure`
        # @return [Google::Apis::SecuritycenterV1beta1::AttackExposure]
        attr_accessor :attack_exposure
      
        # 
        # Corresponds to the JSON property `backupDisasterRecovery`
        # @return [Google::Apis::SecuritycenterV1beta1::BackupDisasterRecovery]
        attr_accessor :backup_disaster_recovery
      
        # 
        # Corresponds to the JSON property `canonicalName`
        # @return [String]
        attr_accessor :canonical_name
      
        # 
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # 
        # Corresponds to the JSON property `chokepoint`
        # @return [Google::Apis::SecuritycenterV1beta1::Chokepoint]
        attr_accessor :chokepoint
      
        # 
        # Corresponds to the JSON property `cloudArmor`
        # @return [Google::Apis::SecuritycenterV1beta1::CloudArmor]
        attr_accessor :cloud_armor
      
        # 
        # Corresponds to the JSON property `cloudDlpDataProfile`
        # @return [Google::Apis::SecuritycenterV1beta1::CloudDlpDataProfile]
        attr_accessor :cloud_dlp_data_profile
      
        # 
        # Corresponds to the JSON property `cloudDlpInspection`
        # @return [Google::Apis::SecuritycenterV1beta1::CloudDlpInspection]
        attr_accessor :cloud_dlp_inspection
      
        # 
        # Corresponds to the JSON property `complianceDetails`
        # @return [Google::Apis::SecuritycenterV1beta1::ComplianceDetails]
        attr_accessor :compliance_details
      
        # 
        # Corresponds to the JSON property `compliances`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Compliance>]
        attr_accessor :compliances
      
        # 
        # Corresponds to the JSON property `connections`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Connection>]
        attr_accessor :connections
      
        # 
        # Corresponds to the JSON property `contacts`
        # @return [Hash<String,Google::Apis::SecuritycenterV1beta1::ContactDetails>]
        attr_accessor :contacts
      
        # 
        # Corresponds to the JSON property `containers`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Container>]
        attr_accessor :containers
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `dataAccessEvents`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::DataAccessEvent>]
        attr_accessor :data_access_events
      
        # 
        # Corresponds to the JSON property `dataFlowEvents`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::DataFlowEvent>]
        attr_accessor :data_flow_events
      
        # 
        # Corresponds to the JSON property `dataRetentionDeletionEvents`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::DataRetentionDeletionEvent>]
        attr_accessor :data_retention_deletion_events
      
        # 
        # Corresponds to the JSON property `database`
        # @return [Google::Apis::SecuritycenterV1beta1::Database]
        attr_accessor :database
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `discoveredWorkload`
        # @return [Google::Apis::SecuritycenterV1beta1::DiscoveredWorkload]
        attr_accessor :discovered_workload
      
        # 
        # Corresponds to the JSON property `disk`
        # @return [Google::Apis::SecuritycenterV1beta1::Disk]
        attr_accessor :disk
      
        # 
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # 
        # Corresponds to the JSON property `exfiltration`
        # @return [Google::Apis::SecuritycenterV1beta1::Exfiltration]
        attr_accessor :exfiltration
      
        # 
        # Corresponds to the JSON property `externalExposure`
        # @return [Google::Apis::SecuritycenterV1beta1::ExternalExposure]
        attr_accessor :external_exposure
      
        # 
        # Corresponds to the JSON property `externalSystems`
        # @return [Hash<String,Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1ExternalSystem>]
        attr_accessor :external_systems
      
        # 
        # Corresponds to the JSON property `externalUri`
        # @return [String]
        attr_accessor :external_uri
      
        # 
        # Corresponds to the JSON property `files`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::File>]
        attr_accessor :files
      
        # 
        # Corresponds to the JSON property `findingClass`
        # @return [String]
        attr_accessor :finding_class
      
        # 
        # Corresponds to the JSON property `groupMemberships`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GroupMembership>]
        attr_accessor :group_memberships
      
        # 
        # Corresponds to the JSON property `iamBindings`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::IamBinding>]
        attr_accessor :iam_bindings
      
        # 
        # Corresponds to the JSON property `iamDetails`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1IamDetails]
        attr_accessor :iam_details
      
        # 
        # Corresponds to the JSON property `indicator`
        # @return [Google::Apis::SecuritycenterV1beta1::Indicator]
        attr_accessor :indicator
      
        # 
        # Corresponds to the JSON property `ipRules`
        # @return [Google::Apis::SecuritycenterV1beta1::IpRules]
        attr_accessor :ip_rules
      
        # 
        # Corresponds to the JSON property `job`
        # @return [Google::Apis::SecuritycenterV1beta1::Job]
        attr_accessor :job
      
        # 
        # Corresponds to the JSON property `kernelRootkit`
        # @return [Google::Apis::SecuritycenterV1beta1::KernelRootkit]
        attr_accessor :kernel_rootkit
      
        # 
        # Corresponds to the JSON property `kubernetes`
        # @return [Google::Apis::SecuritycenterV1beta1::Kubernetes]
        attr_accessor :kubernetes
      
        # 
        # Corresponds to the JSON property `loadBalancers`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::LoadBalancer>]
        attr_accessor :load_balancers
      
        # 
        # Corresponds to the JSON property `logEntries`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::LogEntry>]
        attr_accessor :log_entries
      
        # 
        # Corresponds to the JSON property `mitreAttack`
        # @return [Google::Apis::SecuritycenterV1beta1::MitreAttack]
        attr_accessor :mitre_attack
      
        # 
        # Corresponds to the JSON property `moduleName`
        # @return [String]
        attr_accessor :module_name
      
        # 
        # Corresponds to the JSON property `mute`
        # @return [String]
        attr_accessor :mute
      
        # 
        # Corresponds to the JSON property `muteInfo`
        # @return [Google::Apis::SecuritycenterV1beta1::MuteInfo]
        attr_accessor :mute_info
      
        # 
        # Corresponds to the JSON property `muteInitiator`
        # @return [String]
        attr_accessor :mute_initiator
      
        # 
        # Corresponds to the JSON property `muteUpdateTime`
        # @return [String]
        attr_accessor :mute_update_time
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `networks`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Network>]
        attr_accessor :networks
      
        # 
        # Corresponds to the JSON property `nextSteps`
        # @return [String]
        attr_accessor :next_steps
      
        # 
        # Corresponds to the JSON property `notebook`
        # @return [Google::Apis::SecuritycenterV1beta1::Notebook]
        attr_accessor :notebook
      
        # 
        # Corresponds to the JSON property `orgPolicies`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::OrgPolicy>]
        attr_accessor :org_policies
      
        # 
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # 
        # Corresponds to the JSON property `parentDisplayName`
        # @return [String]
        attr_accessor :parent_display_name
      
        # 
        # Corresponds to the JSON property `policyViolationSummary`
        # @return [Google::Apis::SecuritycenterV1beta1::PolicyViolationSummary]
        attr_accessor :policy_violation_summary
      
        # 
        # Corresponds to the JSON property `processes`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Process>]
        attr_accessor :processes
      
        # 
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # 
        # Corresponds to the JSON property `secret`
        # @return [Google::Apis::SecuritycenterV1beta1::Secret]
        attr_accessor :secret
      
        # 
        # Corresponds to the JSON property `securityMarks`
        # @return [Google::Apis::SecuritycenterV1beta1::SecurityMarks]
        attr_accessor :security_marks
      
        # 
        # Corresponds to the JSON property `securityPosture`
        # @return [Google::Apis::SecuritycenterV1beta1::SecurityPosture]
        attr_accessor :security_posture
      
        # 
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # 
        # Corresponds to the JSON property `sourceProperties`
        # @return [Hash<String,Object>]
        attr_accessor :source_properties
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # 
        # Corresponds to the JSON property `toxicCombination`
        # @return [Google::Apis::SecuritycenterV1beta1::ToxicCombination]
        attr_accessor :toxic_combination
      
        # 
        # Corresponds to the JSON property `vertexAi`
        # @return [Google::Apis::SecuritycenterV1beta1::VertexAi]
        attr_accessor :vertex_ai
      
        # 
        # Corresponds to the JSON property `vulnerability`
        # @return [Google::Apis::SecuritycenterV1beta1::Vulnerability]
        attr_accessor :vulnerability
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access = args[:access] if args.key?(:access)
          @affected_resources = args[:affected_resources] if args.key?(:affected_resources)
          @agent = args[:agent] if args.key?(:agent)
          @agent_anomaly = args[:agent_anomaly] if args.key?(:agent_anomaly)
          @agent_data_access_events = args[:agent_data_access_events] if args.key?(:agent_data_access_events)
          @agent_sessions = args[:agent_sessions] if args.key?(:agent_sessions)
          @ai_model = args[:ai_model] if args.key?(:ai_model)
          @application = args[:application] if args.key?(:application)
          @artifact_guard_policies = args[:artifact_guard_policies] if args.key?(:artifact_guard_policies)
          @attack_exposure = args[:attack_exposure] if args.key?(:attack_exposure)
          @backup_disaster_recovery = args[:backup_disaster_recovery] if args.key?(:backup_disaster_recovery)
          @canonical_name = args[:canonical_name] if args.key?(:canonical_name)
          @category = args[:category] if args.key?(:category)
          @chokepoint = args[:chokepoint] if args.key?(:chokepoint)
          @cloud_armor = args[:cloud_armor] if args.key?(:cloud_armor)
          @cloud_dlp_data_profile = args[:cloud_dlp_data_profile] if args.key?(:cloud_dlp_data_profile)
          @cloud_dlp_inspection = args[:cloud_dlp_inspection] if args.key?(:cloud_dlp_inspection)
          @compliance_details = args[:compliance_details] if args.key?(:compliance_details)
          @compliances = args[:compliances] if args.key?(:compliances)
          @connections = args[:connections] if args.key?(:connections)
          @contacts = args[:contacts] if args.key?(:contacts)
          @containers = args[:containers] if args.key?(:containers)
          @create_time = args[:create_time] if args.key?(:create_time)
          @data_access_events = args[:data_access_events] if args.key?(:data_access_events)
          @data_flow_events = args[:data_flow_events] if args.key?(:data_flow_events)
          @data_retention_deletion_events = args[:data_retention_deletion_events] if args.key?(:data_retention_deletion_events)
          @database = args[:database] if args.key?(:database)
          @description = args[:description] if args.key?(:description)
          @discovered_workload = args[:discovered_workload] if args.key?(:discovered_workload)
          @disk = args[:disk] if args.key?(:disk)
          @event_time = args[:event_time] if args.key?(:event_time)
          @exfiltration = args[:exfiltration] if args.key?(:exfiltration)
          @external_exposure = args[:external_exposure] if args.key?(:external_exposure)
          @external_systems = args[:external_systems] if args.key?(:external_systems)
          @external_uri = args[:external_uri] if args.key?(:external_uri)
          @files = args[:files] if args.key?(:files)
          @finding_class = args[:finding_class] if args.key?(:finding_class)
          @group_memberships = args[:group_memberships] if args.key?(:group_memberships)
          @iam_bindings = args[:iam_bindings] if args.key?(:iam_bindings)
          @iam_details = args[:iam_details] if args.key?(:iam_details)
          @indicator = args[:indicator] if args.key?(:indicator)
          @ip_rules = args[:ip_rules] if args.key?(:ip_rules)
          @job = args[:job] if args.key?(:job)
          @kernel_rootkit = args[:kernel_rootkit] if args.key?(:kernel_rootkit)
          @kubernetes = args[:kubernetes] if args.key?(:kubernetes)
          @load_balancers = args[:load_balancers] if args.key?(:load_balancers)
          @log_entries = args[:log_entries] if args.key?(:log_entries)
          @mitre_attack = args[:mitre_attack] if args.key?(:mitre_attack)
          @module_name = args[:module_name] if args.key?(:module_name)
          @mute = args[:mute] if args.key?(:mute)
          @mute_info = args[:mute_info] if args.key?(:mute_info)
          @mute_initiator = args[:mute_initiator] if args.key?(:mute_initiator)
          @mute_update_time = args[:mute_update_time] if args.key?(:mute_update_time)
          @name = args[:name] if args.key?(:name)
          @networks = args[:networks] if args.key?(:networks)
          @next_steps = args[:next_steps] if args.key?(:next_steps)
          @notebook = args[:notebook] if args.key?(:notebook)
          @org_policies = args[:org_policies] if args.key?(:org_policies)
          @parent = args[:parent] if args.key?(:parent)
          @parent_display_name = args[:parent_display_name] if args.key?(:parent_display_name)
          @policy_violation_summary = args[:policy_violation_summary] if args.key?(:policy_violation_summary)
          @processes = args[:processes] if args.key?(:processes)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @secret = args[:secret] if args.key?(:secret)
          @security_marks = args[:security_marks] if args.key?(:security_marks)
          @security_posture = args[:security_posture] if args.key?(:security_posture)
          @severity = args[:severity] if args.key?(:severity)
          @source_properties = args[:source_properties] if args.key?(:source_properties)
          @state = args[:state] if args.key?(:state)
          @toxic_combination = args[:toxic_combination] if args.key?(:toxic_combination)
          @vertex_ai = args[:vertex_ai] if args.key?(:vertex_ai)
          @vulnerability = args[:vulnerability] if args.key?(:vulnerability)
        end
      end
      
      # 
      class Folder
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `resourceFolder`
        # @return [String]
        attr_accessor :resource_folder
      
        # 
        # Corresponds to the JSON property `resourceFolderDisplayName`
        # @return [String]
        attr_accessor :resource_folder_display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_folder = args[:resource_folder] if args.key?(:resource_folder)
          @resource_folder_display_name = args[:resource_folder_display_name] if args.key?(:resource_folder_display_name)
        end
      end
      
      # 
      class Framework
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `category`
        # @return [Array<String>]
        attr_accessor :category
      
        # 
        # Corresponds to the JSON property `controls`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Control>]
        attr_accessor :controls
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
          @controls = args[:controls] if args.key?(:controls)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class GcpMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `folders`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Folder>]
        attr_accessor :folders
      
        # 
        # Corresponds to the JSON property `organization`
        # @return [String]
        attr_accessor :organization
      
        # 
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # 
        # Corresponds to the JSON property `parentDisplayName`
        # @return [String]
        attr_accessor :parent_display_name
      
        # 
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        # 
        # Corresponds to the JSON property `projectDisplayName`
        # @return [String]
        attr_accessor :project_display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @folders = args[:folders] if args.key?(:folders)
          @organization = args[:organization] if args.key?(:organization)
          @parent = args[:parent] if args.key?(:parent)
          @parent_display_name = args[:parent_display_name] if args.key?(:parent_display_name)
          @project = args[:project] if args.key?(:project)
          @project_display_name = args[:project_display_name] if args.key?(:project_display_name)
        end
      end
      
      # 
      class Geolocation
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # 
      class GetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::SecuritycenterV1beta1::GetPolicyOptions]
        attr_accessor :options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @options = args[:options] if args.key?(:options)
        end
      end
      
      # 
      class GetPolicyOptions
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `requestedPolicyVersion`
        # @return [Fixnum]
        attr_accessor :requested_policy_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requested_policy_version = args[:requested_policy_version] if args.key?(:requested_policy_version)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV1BigQueryExport
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # 
        # Corresponds to the JSON property `mostRecentEditor`
        # @return [String]
        attr_accessor :most_recent_editor
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `principal`
        # @return [String]
        attr_accessor :principal
      
        # 
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @dataset = args[:dataset] if args.key?(:dataset)
          @description = args[:description] if args.key?(:description)
          @filter = args[:filter] if args.key?(:filter)
          @most_recent_editor = args[:most_recent_editor] if args.key?(:most_recent_editor)
          @name = args[:name] if args.key?(:name)
          @principal = args[:principal] if args.key?(:principal)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV1Binding
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `ns`
        # @return [String]
        attr_accessor :ns
      
        # 
        # Corresponds to the JSON property `role`
        # @return [Google::Apis::SecuritycenterV1beta1::Role]
        attr_accessor :role
      
        # 
        # Corresponds to the JSON property `subjects`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Subject>]
        attr_accessor :subjects
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @ns = args[:ns] if args.key?(:ns)
          @role = args[:role] if args.key?(:role)
          @subjects = args[:subjects] if args.key?(:subjects)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV1BulkMuteFindingsResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV1CustomConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `customOutput`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1CustomOutputSpec]
        attr_accessor :custom_output
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `predicate`
        # @return [Google::Apis::SecuritycenterV1beta1::Expr]
        attr_accessor :predicate
      
        # 
        # Corresponds to the JSON property `recommendation`
        # @return [String]
        attr_accessor :recommendation
      
        # 
        # Corresponds to the JSON property `resourceSelector`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1ResourceSelector]
        attr_accessor :resource_selector
      
        # 
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_output = args[:custom_output] if args.key?(:custom_output)
          @description = args[:description] if args.key?(:description)
          @predicate = args[:predicate] if args.key?(:predicate)
          @recommendation = args[:recommendation] if args.key?(:recommendation)
          @resource_selector = args[:resource_selector] if args.key?(:resource_selector)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV1CustomOutputSpec
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `properties`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1Property>]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `cloudProvider`
        # @return [String]
        attr_accessor :cloud_provider
      
        # 
        # Corresponds to the JSON property `customConfig`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1CustomConfig]
        attr_accessor :custom_config
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `enablementState`
        # @return [String]
        attr_accessor :enablement_state
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_provider = args[:cloud_provider] if args.key?(:cloud_provider)
          @custom_config = args[:custom_config] if args.key?(:custom_config)
          @display_name = args[:display_name] if args.key?(:display_name)
          @enablement_state = args[:enablement_state] if args.key?(:enablement_state)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV1ExternalSystem
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `assignees`
        # @return [Array<String>]
        attr_accessor :assignees
      
        # 
        # Corresponds to the JSON property `caseCloseTime`
        # @return [String]
        attr_accessor :case_close_time
      
        # 
        # Corresponds to the JSON property `caseCreateTime`
        # @return [String]
        attr_accessor :case_create_time
      
        # 
        # Corresponds to the JSON property `casePriority`
        # @return [String]
        attr_accessor :case_priority
      
        # 
        # Corresponds to the JSON property `caseSla`
        # @return [String]
        attr_accessor :case_sla
      
        # 
        # Corresponds to the JSON property `caseUri`
        # @return [String]
        attr_accessor :case_uri
      
        # 
        # Corresponds to the JSON property `externalSystemUpdateTime`
        # @return [String]
        attr_accessor :external_system_update_time
      
        # 
        # Corresponds to the JSON property `externalUid`
        # @return [String]
        attr_accessor :external_uid
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # 
        # Corresponds to the JSON property `ticketInfo`
        # @return [Google::Apis::SecuritycenterV1beta1::TicketInfo]
        attr_accessor :ticket_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assignees = args[:assignees] if args.key?(:assignees)
          @case_close_time = args[:case_close_time] if args.key?(:case_close_time)
          @case_create_time = args[:case_create_time] if args.key?(:case_create_time)
          @case_priority = args[:case_priority] if args.key?(:case_priority)
          @case_sla = args[:case_sla] if args.key?(:case_sla)
          @case_uri = args[:case_uri] if args.key?(:case_uri)
          @external_system_update_time = args[:external_system_update_time] if args.key?(:external_system_update_time)
          @external_uid = args[:external_uid] if args.key?(:external_uid)
          @name = args[:name] if args.key?(:name)
          @status = args[:status] if args.key?(:status)
          @ticket_info = args[:ticket_info] if args.key?(:ticket_info)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV1IamDetails
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `iamRolePermissions`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1IamRolePermission>]
        attr_accessor :iam_role_permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @iam_role_permissions = args[:iam_role_permissions] if args.key?(:iam_role_permissions)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV1IamRolePermission
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV1MuteConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `expiryTime`
        # @return [String]
        attr_accessor :expiry_time
      
        # 
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # 
        # Corresponds to the JSON property `mostRecentEditor`
        # @return [String]
        attr_accessor :most_recent_editor
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # 
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @expiry_time = args[:expiry_time] if args.key?(:expiry_time)
          @filter = args[:filter] if args.key?(:filter)
          @most_recent_editor = args[:most_recent_editor] if args.key?(:most_recent_editor)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV1NotificationMessage
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `finding`
        # @return [Google::Apis::SecuritycenterV1beta1::Finding]
        attr_accessor :finding
      
        # 
        # Corresponds to the JSON property `notificationConfigName`
        # @return [String]
        attr_accessor :notification_config_name
      
        # 
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1Resource]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @finding = args[:finding] if args.key?(:finding)
          @notification_config_name = args[:notification_config_name] if args.key?(:notification_config_name)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV1Property
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `valueExpression`
        # @return [Google::Apis::SecuritycenterV1beta1::Expr]
        attr_accessor :value_expression
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @value_expression = args[:value_expression] if args.key?(:value_expression)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV1Resource
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `adcApplication`
        # @return [Google::Apis::SecuritycenterV1beta1::AdcApplication]
        attr_accessor :adc_application
      
        # 
        # Corresponds to the JSON property `adcApplicationTemplate`
        # @return [Google::Apis::SecuritycenterV1beta1::AdcApplicationTemplateRevision]
        attr_accessor :adc_application_template
      
        # 
        # Corresponds to the JSON property `adcSharedTemplate`
        # @return [Google::Apis::SecuritycenterV1beta1::AdcSharedTemplateRevision]
        attr_accessor :adc_shared_template
      
        # 
        # Corresponds to the JSON property `application`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1ResourceApplication]
        attr_accessor :application
      
        # 
        # Corresponds to the JSON property `awsMetadata`
        # @return [Google::Apis::SecuritycenterV1beta1::AwsMetadata]
        attr_accessor :aws_metadata
      
        # 
        # Corresponds to the JSON property `azureMetadata`
        # @return [Google::Apis::SecuritycenterV1beta1::AzureMetadata]
        attr_accessor :azure_metadata
      
        # 
        # Corresponds to the JSON property `cloudProvider`
        # @return [String]
        attr_accessor :cloud_provider
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `folders`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Folder>]
        attr_accessor :folders
      
        # 
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `organization`
        # @return [String]
        attr_accessor :organization
      
        # 
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # 
        # Corresponds to the JSON property `parentDisplayName`
        # @return [String]
        attr_accessor :parent_display_name
      
        # 
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        # 
        # Corresponds to the JSON property `projectDisplayName`
        # @return [String]
        attr_accessor :project_display_name
      
        # 
        # Corresponds to the JSON property `resourcePath`
        # @return [Google::Apis::SecuritycenterV1beta1::ResourcePath]
        attr_accessor :resource_path
      
        # 
        # Corresponds to the JSON property `resourcePathString`
        # @return [String]
        attr_accessor :resource_path_string
      
        # 
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adc_application = args[:adc_application] if args.key?(:adc_application)
          @adc_application_template = args[:adc_application_template] if args.key?(:adc_application_template)
          @adc_shared_template = args[:adc_shared_template] if args.key?(:adc_shared_template)
          @application = args[:application] if args.key?(:application)
          @aws_metadata = args[:aws_metadata] if args.key?(:aws_metadata)
          @azure_metadata = args[:azure_metadata] if args.key?(:azure_metadata)
          @cloud_provider = args[:cloud_provider] if args.key?(:cloud_provider)
          @display_name = args[:display_name] if args.key?(:display_name)
          @folders = args[:folders] if args.key?(:folders)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @organization = args[:organization] if args.key?(:organization)
          @parent = args[:parent] if args.key?(:parent)
          @parent_display_name = args[:parent_display_name] if args.key?(:parent_display_name)
          @project = args[:project] if args.key?(:project)
          @project_display_name = args[:project_display_name] if args.key?(:project_display_name)
          @resource_path = args[:resource_path] if args.key?(:resource_path)
          @resource_path_string = args[:resource_path_string] if args.key?(:resource_path_string)
          @service = args[:service] if args.key?(:service)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV1ResourceApplication
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `attributes`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1ResourceApplicationAttributes]
        attr_accessor :attributes
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV1ResourceApplicationAttributes
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `businessOwners`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1ResourceApplicationAttributesContactInfo>]
        attr_accessor :business_owners
      
        # 
        # Corresponds to the JSON property `criticality`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1ResourceApplicationAttributesCriticality]
        attr_accessor :criticality
      
        # 
        # Corresponds to the JSON property `developerOwners`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1ResourceApplicationAttributesContactInfo>]
        attr_accessor :developer_owners
      
        # 
        # Corresponds to the JSON property `environment`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1ResourceApplicationAttributesEnvironment]
        attr_accessor :environment
      
        # 
        # Corresponds to the JSON property `operatorOwners`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1ResourceApplicationAttributesContactInfo>]
        attr_accessor :operator_owners
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @business_owners = args[:business_owners] if args.key?(:business_owners)
          @criticality = args[:criticality] if args.key?(:criticality)
          @developer_owners = args[:developer_owners] if args.key?(:developer_owners)
          @environment = args[:environment] if args.key?(:environment)
          @operator_owners = args[:operator_owners] if args.key?(:operator_owners)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV1ResourceApplicationAttributesContactInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV1ResourceApplicationAttributesCriticality
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV1ResourceApplicationAttributesEnvironment
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV1ResourceSelector
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `resourceTypes`
        # @return [Array<String>]
        attr_accessor :resource_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_types = args[:resource_types] if args.key?(:resource_types)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV1ResourceValueConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `cloudProvider`
        # @return [String]
        attr_accessor :cloud_provider
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `resourceLabelsSelector`
        # @return [Hash<String,String>]
        attr_accessor :resource_labels_selector
      
        # 
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        # 
        # Corresponds to the JSON property `resourceValue`
        # @return [String]
        attr_accessor :resource_value
      
        # 
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # 
        # Corresponds to the JSON property `sensitiveDataProtectionMapping`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1SensitiveDataProtectionMapping]
        attr_accessor :sensitive_data_protection_mapping
      
        # 
        # Corresponds to the JSON property `tagValues`
        # @return [Array<String>]
        attr_accessor :tag_values
      
        # 
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_provider = args[:cloud_provider] if args.key?(:cloud_provider)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @resource_labels_selector = args[:resource_labels_selector] if args.key?(:resource_labels_selector)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
          @resource_value = args[:resource_value] if args.key?(:resource_value)
          @scope = args[:scope] if args.key?(:scope)
          @sensitive_data_protection_mapping = args[:sensitive_data_protection_mapping] if args.key?(:sensitive_data_protection_mapping)
          @tag_values = args[:tag_values] if args.key?(:tag_values)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration = args[:duration] if args.key?(:duration)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `ancestorModule`
        # @return [String]
        attr_accessor :ancestor_module
      
        # 
        # Corresponds to the JSON property `cloudProvider`
        # @return [String]
        attr_accessor :cloud_provider
      
        # 
        # Corresponds to the JSON property `customConfig`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1CustomConfig]
        attr_accessor :custom_config
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `enablementState`
        # @return [String]
        attr_accessor :enablement_state
      
        # 
        # Corresponds to the JSON property `lastEditor`
        # @return [String]
        attr_accessor :last_editor
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ancestor_module = args[:ancestor_module] if args.key?(:ancestor_module)
          @cloud_provider = args[:cloud_provider] if args.key?(:cloud_provider)
          @custom_config = args[:custom_config] if args.key?(:custom_config)
          @display_name = args[:display_name] if args.key?(:display_name)
          @enablement_state = args[:enablement_state] if args.key?(:enablement_state)
          @last_editor = args[:last_editor] if args.key?(:last_editor)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV1SensitiveDataProtectionMapping
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `highSensitivityMapping`
        # @return [String]
        attr_accessor :high_sensitivity_mapping
      
        # 
        # Corresponds to the JSON property `mediumSensitivityMapping`
        # @return [String]
        attr_accessor :medium_sensitivity_mapping
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @high_sensitivity_mapping = args[:high_sensitivity_mapping] if args.key?(:high_sensitivity_mapping)
          @medium_sensitivity_mapping = args[:medium_sensitivity_mapping] if args.key?(:medium_sensitivity_mapping)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV1beta1Finding
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # 
        # Corresponds to the JSON property `externalUri`
        # @return [String]
        attr_accessor :external_uri
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # 
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # 
        # Corresponds to the JSON property `securityMarks`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1beta1SecurityMarks]
        attr_accessor :security_marks
      
        # 
        # Corresponds to the JSON property `sourceProperties`
        # @return [Hash<String,Object>]
        attr_accessor :source_properties
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
          @create_time = args[:create_time] if args.key?(:create_time)
          @event_time = args[:event_time] if args.key?(:event_time)
          @external_uri = args[:external_uri] if args.key?(:external_uri)
          @name = args[:name] if args.key?(:name)
          @parent = args[:parent] if args.key?(:parent)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @security_marks = args[:security_marks] if args.key?(:security_marks)
          @source_properties = args[:source_properties] if args.key?(:source_properties)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration = args[:duration] if args.key?(:duration)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV1beta1SecurityMarks
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `marks`
        # @return [Hash<String,String>]
        attr_accessor :marks
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @marks = args[:marks] if args.key?(:marks)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV1p1beta1Finding
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `canonicalName`
        # @return [String]
        attr_accessor :canonical_name
      
        # 
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # 
        # Corresponds to the JSON property `externalUri`
        # @return [String]
        attr_accessor :external_uri
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # 
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # 
        # Corresponds to the JSON property `securityMarks`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1p1beta1SecurityMarks]
        attr_accessor :security_marks
      
        # 
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # 
        # Corresponds to the JSON property `sourceProperties`
        # @return [Hash<String,Object>]
        attr_accessor :source_properties
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @canonical_name = args[:canonical_name] if args.key?(:canonical_name)
          @category = args[:category] if args.key?(:category)
          @create_time = args[:create_time] if args.key?(:create_time)
          @event_time = args[:event_time] if args.key?(:event_time)
          @external_uri = args[:external_uri] if args.key?(:external_uri)
          @name = args[:name] if args.key?(:name)
          @parent = args[:parent] if args.key?(:parent)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @security_marks = args[:security_marks] if args.key?(:security_marks)
          @severity = args[:severity] if args.key?(:severity)
          @source_properties = args[:source_properties] if args.key?(:source_properties)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV1p1beta1Folder
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `resourceFolder`
        # @return [String]
        attr_accessor :resource_folder
      
        # 
        # Corresponds to the JSON property `resourceFolderDisplayName`
        # @return [String]
        attr_accessor :resource_folder_display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_folder = args[:resource_folder] if args.key?(:resource_folder)
          @resource_folder_display_name = args[:resource_folder_display_name] if args.key?(:resource_folder_display_name)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV1p1beta1NotificationMessage
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `finding`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1p1beta1Finding]
        attr_accessor :finding
      
        # 
        # Corresponds to the JSON property `notificationConfigName`
        # @return [String]
        attr_accessor :notification_config_name
      
        # 
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1p1beta1Resource]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @finding = args[:finding] if args.key?(:finding)
          @notification_config_name = args[:notification_config_name] if args.key?(:notification_config_name)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV1p1beta1Resource
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `folders`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1p1beta1Folder>]
        attr_accessor :folders
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # 
        # Corresponds to the JSON property `parentDisplayName`
        # @return [String]
        attr_accessor :parent_display_name
      
        # 
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        # 
        # Corresponds to the JSON property `projectDisplayName`
        # @return [String]
        attr_accessor :project_display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @folders = args[:folders] if args.key?(:folders)
          @name = args[:name] if args.key?(:name)
          @parent = args[:parent] if args.key?(:parent)
          @parent_display_name = args[:parent_display_name] if args.key?(:parent_display_name)
          @project = args[:project] if args.key?(:project)
          @project_display_name = args[:project_display_name] if args.key?(:project_display_name)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration = args[:duration] if args.key?(:duration)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV1p1beta1SecurityMarks
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `canonicalName`
        # @return [String]
        attr_accessor :canonical_name
      
        # 
        # Corresponds to the JSON property `marks`
        # @return [Hash<String,String>]
        attr_accessor :marks
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @canonical_name = args[:canonical_name] if args.key?(:canonical_name)
          @marks = args[:marks] if args.key?(:marks)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Access
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `callerIp`
        # @return [String]
        attr_accessor :caller_ip
      
        # 
        # Corresponds to the JSON property `callerIpGeo`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Geolocation]
        attr_accessor :caller_ip_geo
      
        # 
        # Corresponds to the JSON property `methodName`
        # @return [String]
        attr_accessor :method_name
      
        # 
        # Corresponds to the JSON property `principalEmail`
        # @return [String]
        attr_accessor :principal_email
      
        # 
        # Corresponds to the JSON property `principalSubject`
        # @return [String]
        attr_accessor :principal_subject
      
        # 
        # Corresponds to the JSON property `serviceAccountDelegationInfo`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2ServiceAccountDelegationInfo>]
        attr_accessor :service_account_delegation_info
      
        # 
        # Corresponds to the JSON property `serviceAccountKeyName`
        # @return [String]
        attr_accessor :service_account_key_name
      
        # 
        # Corresponds to the JSON property `serviceName`
        # @return [String]
        attr_accessor :service_name
      
        # 
        # Corresponds to the JSON property `userAgent`
        # @return [String]
        attr_accessor :user_agent
      
        # 
        # Corresponds to the JSON property `userAgentFamily`
        # @return [String]
        attr_accessor :user_agent_family
      
        # 
        # Corresponds to the JSON property `userName`
        # @return [String]
        attr_accessor :user_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @caller_ip = args[:caller_ip] if args.key?(:caller_ip)
          @caller_ip_geo = args[:caller_ip_geo] if args.key?(:caller_ip_geo)
          @method_name = args[:method_name] if args.key?(:method_name)
          @principal_email = args[:principal_email] if args.key?(:principal_email)
          @principal_subject = args[:principal_subject] if args.key?(:principal_subject)
          @service_account_delegation_info = args[:service_account_delegation_info] if args.key?(:service_account_delegation_info)
          @service_account_key_name = args[:service_account_key_name] if args.key?(:service_account_key_name)
          @service_name = args[:service_name] if args.key?(:service_name)
          @user_agent = args[:user_agent] if args.key?(:user_agent)
          @user_agent_family = args[:user_agent_family] if args.key?(:user_agent_family)
          @user_name = args[:user_name] if args.key?(:user_name)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2AccessReview
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `group`
        # @return [String]
        attr_accessor :group
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `ns`
        # @return [String]
        attr_accessor :ns
      
        # 
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # 
        # Corresponds to the JSON property `subresource`
        # @return [String]
        attr_accessor :subresource
      
        # 
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        # 
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group = args[:group] if args.key?(:group)
          @name = args[:name] if args.key?(:name)
          @ns = args[:ns] if args.key?(:ns)
          @resource = args[:resource] if args.key?(:resource)
          @subresource = args[:subresource] if args.key?(:subresource)
          @verb = args[:verb] if args.key?(:verb)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2AdaptiveProtection
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2AdcApplication
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `attributes`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2ResourceApplicationAttributes]
        attr_accessor :attributes
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2AdcApplicationTemplateRevision
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2AdcSharedTemplateRevision
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2AffectedResources
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Agent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2AgentAnomaly
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `confidenceScore`
        # @return [Float]
        attr_accessor :confidence_score
      
        # 
        # Corresponds to the JSON property `detectorReferences`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2DetectorReference>]
        attr_accessor :detector_references
      
        # 
        # Corresponds to the JSON property `invocationReferences`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2InvocationReference>]
        attr_accessor :invocation_references
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence_score = args[:confidence_score] if args.key?(:confidence_score)
          @detector_references = args[:detector_references] if args.key?(:detector_references)
          @invocation_references = args[:invocation_references] if args.key?(:invocation_references)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2AgentDataAccessEvent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `eventId`
        # @return [String]
        attr_accessor :event_id
      
        # 
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # 
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        # 
        # Corresponds to the JSON property `principalSubject`
        # @return [String]
        attr_accessor :principal_subject
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_id = args[:event_id] if args.key?(:event_id)
          @event_time = args[:event_time] if args.key?(:event_time)
          @operation = args[:operation] if args.key?(:operation)
          @principal_subject = args[:principal_subject] if args.key?(:principal_subject)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2AgentSession
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `sessionId`
        # @return [String]
        attr_accessor :session_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @session_id = args[:session_id] if args.key?(:session_id)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2AiModel
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `deploymentPlatform`
        # @return [String]
        attr_accessor :deployment_platform
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # 
        # Corresponds to the JSON property `library`
        # @return [String]
        attr_accessor :library
      
        # 
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `publisher`
        # @return [String]
        attr_accessor :publisher
      
        # 
        # Corresponds to the JSON property `usageCategory`
        # @return [String]
        attr_accessor :usage_category
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deployment_platform = args[:deployment_platform] if args.key?(:deployment_platform)
          @display_name = args[:display_name] if args.key?(:display_name)
          @domain = args[:domain] if args.key?(:domain)
          @library = args[:library] if args.key?(:library)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @publisher = args[:publisher] if args.key?(:publisher)
          @usage_category = args[:usage_category] if args.key?(:usage_category)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Allowed
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `ipRules`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2IpRule>]
        attr_accessor :ip_rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_rules = args[:ip_rules] if args.key?(:ip_rules)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Application
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `baseUri`
        # @return [String]
        attr_accessor :base_uri
      
        # 
        # Corresponds to the JSON property `fullUri`
        # @return [String]
        attr_accessor :full_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_uri = args[:base_uri] if args.key?(:base_uri)
          @full_uri = args[:full_uri] if args.key?(:full_uri)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2ArtifactGuardPolicies
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `failingPolicies`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2ArtifactGuardPolicy>]
        attr_accessor :failing_policies
      
        # 
        # Corresponds to the JSON property `resourceId`
        # @return [String]
        attr_accessor :resource_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failing_policies = args[:failing_policies] if args.key?(:failing_policies)
          @resource_id = args[:resource_id] if args.key?(:resource_id)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2ArtifactGuardPolicy
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `failureReason`
        # @return [String]
        attr_accessor :failure_reason
      
        # 
        # Corresponds to the JSON property `policyId`
        # @return [String]
        attr_accessor :policy_id
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failure_reason = args[:failure_reason] if args.key?(:failure_reason)
          @policy_id = args[:policy_id] if args.key?(:policy_id)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Attack
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `classification`
        # @return [String]
        attr_accessor :classification
      
        # 
        # Corresponds to the JSON property `volumeBps`
        # @return [Fixnum]
        attr_accessor :volume_bps
      
        # 
        # Corresponds to the JSON property `volumeBpsLong`
        # @return [Fixnum]
        attr_accessor :volume_bps_long
      
        # 
        # Corresponds to the JSON property `volumePps`
        # @return [Fixnum]
        attr_accessor :volume_pps
      
        # 
        # Corresponds to the JSON property `volumePpsLong`
        # @return [Fixnum]
        attr_accessor :volume_pps_long
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @classification = args[:classification] if args.key?(:classification)
          @volume_bps = args[:volume_bps] if args.key?(:volume_bps)
          @volume_bps_long = args[:volume_bps_long] if args.key?(:volume_bps_long)
          @volume_pps = args[:volume_pps] if args.key?(:volume_pps)
          @volume_pps_long = args[:volume_pps_long] if args.key?(:volume_pps_long)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2AttackExposure
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `attackExposureResult`
        # @return [String]
        attr_accessor :attack_exposure_result
      
        # 
        # Corresponds to the JSON property `exposedHighValueResourcesCount`
        # @return [Fixnum]
        attr_accessor :exposed_high_value_resources_count
      
        # 
        # Corresponds to the JSON property `exposedLowValueResourcesCount`
        # @return [Fixnum]
        attr_accessor :exposed_low_value_resources_count
      
        # 
        # Corresponds to the JSON property `exposedMediumValueResourcesCount`
        # @return [Fixnum]
        attr_accessor :exposed_medium_value_resources_count
      
        # 
        # Corresponds to the JSON property `latestCalculationTime`
        # @return [String]
        attr_accessor :latest_calculation_time
      
        # 
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attack_exposure_result = args[:attack_exposure_result] if args.key?(:attack_exposure_result)
          @exposed_high_value_resources_count = args[:exposed_high_value_resources_count] if args.key?(:exposed_high_value_resources_count)
          @exposed_low_value_resources_count = args[:exposed_low_value_resources_count] if args.key?(:exposed_low_value_resources_count)
          @exposed_medium_value_resources_count = args[:exposed_medium_value_resources_count] if args.key?(:exposed_medium_value_resources_count)
          @latest_calculation_time = args[:latest_calculation_time] if args.key?(:latest_calculation_time)
          @score = args[:score] if args.key?(:score)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2AwsAccount
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2AwsMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `account`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2AwsAccount]
        attr_accessor :account
      
        # 
        # Corresponds to the JSON property `organization`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2AwsOrganization]
        attr_accessor :organization
      
        # 
        # Corresponds to the JSON property `organizationalUnits`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2AwsOrganizationalUnit>]
        attr_accessor :organizational_units
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] if args.key?(:account)
          @organization = args[:organization] if args.key?(:organization)
          @organizational_units = args[:organizational_units] if args.key?(:organizational_units)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2AwsOrganization
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2AwsOrganizationalUnit
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2AzureManagementGroup
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2AzureMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `managementGroups`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2AzureManagementGroup>]
        attr_accessor :management_groups
      
        # 
        # Corresponds to the JSON property `resourceGroup`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2AzureResourceGroup]
        attr_accessor :resource_group
      
        # 
        # Corresponds to the JSON property `subscription`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2AzureSubscription]
        attr_accessor :subscription
      
        # 
        # Corresponds to the JSON property `tenant`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2AzureTenant]
        attr_accessor :tenant
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @management_groups = args[:management_groups] if args.key?(:management_groups)
          @resource_group = args[:resource_group] if args.key?(:resource_group)
          @subscription = args[:subscription] if args.key?(:subscription)
          @tenant = args[:tenant] if args.key?(:tenant)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2AzureResourceGroup
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2AzureSubscription
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2AzureTenant
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2BackupDisasterRecovery
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `appliance`
        # @return [String]
        attr_accessor :appliance
      
        # 
        # Corresponds to the JSON property `applications`
        # @return [Array<String>]
        attr_accessor :applications
      
        # 
        # Corresponds to the JSON property `backupCreateTime`
        # @return [String]
        attr_accessor :backup_create_time
      
        # 
        # Corresponds to the JSON property `backupTemplate`
        # @return [String]
        attr_accessor :backup_template
      
        # 
        # Corresponds to the JSON property `backupType`
        # @return [String]
        attr_accessor :backup_type
      
        # 
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # 
        # Corresponds to the JSON property `policies`
        # @return [Array<String>]
        attr_accessor :policies
      
        # 
        # Corresponds to the JSON property `policyOptions`
        # @return [Array<String>]
        attr_accessor :policy_options
      
        # 
        # Corresponds to the JSON property `profile`
        # @return [String]
        attr_accessor :profile
      
        # 
        # Corresponds to the JSON property `storagePool`
        # @return [String]
        attr_accessor :storage_pool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @appliance = args[:appliance] if args.key?(:appliance)
          @applications = args[:applications] if args.key?(:applications)
          @backup_create_time = args[:backup_create_time] if args.key?(:backup_create_time)
          @backup_template = args[:backup_template] if args.key?(:backup_template)
          @backup_type = args[:backup_type] if args.key?(:backup_type)
          @host = args[:host] if args.key?(:host)
          @policies = args[:policies] if args.key?(:policies)
          @policy_options = args[:policy_options] if args.key?(:policy_options)
          @profile = args[:profile] if args.key?(:profile)
          @storage_pool = args[:storage_pool] if args.key?(:storage_pool)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2BigQueryExport
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `cryptoKeyName`
        # @return [String]
        attr_accessor :crypto_key_name
      
        # 
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # 
        # Corresponds to the JSON property `mostRecentEditor`
        # @return [String]
        attr_accessor :most_recent_editor
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `principal`
        # @return [String]
        attr_accessor :principal
      
        # 
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @crypto_key_name = args[:crypto_key_name] if args.key?(:crypto_key_name)
          @dataset = args[:dataset] if args.key?(:dataset)
          @description = args[:description] if args.key?(:description)
          @filter = args[:filter] if args.key?(:filter)
          @most_recent_editor = args[:most_recent_editor] if args.key?(:most_recent_editor)
          @name = args[:name] if args.key?(:name)
          @principal = args[:principal] if args.key?(:principal)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Binding
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `ns`
        # @return [String]
        attr_accessor :ns
      
        # 
        # Corresponds to the JSON property `role`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Role]
        attr_accessor :role
      
        # 
        # Corresponds to the JSON property `subjects`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Subject>]
        attr_accessor :subjects
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @ns = args[:ns] if args.key?(:ns)
          @role = args[:role] if args.key?(:role)
          @subjects = args[:subjects] if args.key?(:subjects)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2BulkMuteFindingsResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Chokepoint
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `relatedFindings`
        # @return [Array<String>]
        attr_accessor :related_findings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @related_findings = args[:related_findings] if args.key?(:related_findings)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2CloudArmor
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `adaptiveProtection`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2AdaptiveProtection]
        attr_accessor :adaptive_protection
      
        # 
        # Corresponds to the JSON property `attack`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Attack]
        attr_accessor :attack
      
        # 
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # 
        # Corresponds to the JSON property `requests`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Requests]
        attr_accessor :requests
      
        # 
        # Corresponds to the JSON property `securityPolicy`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2SecurityPolicy]
        attr_accessor :security_policy
      
        # 
        # Corresponds to the JSON property `threatVector`
        # @return [String]
        attr_accessor :threat_vector
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adaptive_protection = args[:adaptive_protection] if args.key?(:adaptive_protection)
          @attack = args[:attack] if args.key?(:attack)
          @duration = args[:duration] if args.key?(:duration)
          @requests = args[:requests] if args.key?(:requests)
          @security_policy = args[:security_policy] if args.key?(:security_policy)
          @threat_vector = args[:threat_vector] if args.key?(:threat_vector)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2CloudControl
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `cloudControlName`
        # @return [String]
        attr_accessor :cloud_control_name
      
        # 
        # Corresponds to the JSON property `policyType`
        # @return [String]
        attr_accessor :policy_type
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # 
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_control_name = args[:cloud_control_name] if args.key?(:cloud_control_name)
          @policy_type = args[:policy_type] if args.key?(:policy_type)
          @type = args[:type] if args.key?(:type)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2CloudDlpDataProfile
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dataProfile`
        # @return [String]
        attr_accessor :data_profile
      
        # 
        # Corresponds to the JSON property `infoTypes`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2InfoType>]
        attr_accessor :info_types
      
        # 
        # Corresponds to the JSON property `parentType`
        # @return [String]
        attr_accessor :parent_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_profile = args[:data_profile] if args.key?(:data_profile)
          @info_types = args[:info_types] if args.key?(:info_types)
          @parent_type = args[:parent_type] if args.key?(:parent_type)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2CloudDlpInspection
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `fullScan`
        # @return [Boolean]
        attr_accessor :full_scan
        alias_method :full_scan?, :full_scan
      
        # 
        # Corresponds to the JSON property `infoType`
        # @return [String]
        attr_accessor :info_type
      
        # 
        # Corresponds to the JSON property `infoTypeCount`
        # @return [Fixnum]
        attr_accessor :info_type_count
      
        # 
        # Corresponds to the JSON property `inspectJob`
        # @return [String]
        attr_accessor :inspect_job
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @full_scan = args[:full_scan] if args.key?(:full_scan)
          @info_type = args[:info_type] if args.key?(:info_type)
          @info_type_count = args[:info_type_count] if args.key?(:info_type_count)
          @inspect_job = args[:inspect_job] if args.key?(:inspect_job)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2CloudLoggingEntry
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `insertId`
        # @return [String]
        attr_accessor :insert_id
      
        # 
        # Corresponds to the JSON property `logId`
        # @return [String]
        attr_accessor :log_id
      
        # 
        # Corresponds to the JSON property `resourceContainer`
        # @return [String]
        attr_accessor :resource_container
      
        # 
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @insert_id = args[:insert_id] if args.key?(:insert_id)
          @log_id = args[:log_id] if args.key?(:log_id)
          @resource_container = args[:resource_container] if args.key?(:resource_container)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Compliance
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `ids`
        # @return [Array<String>]
        attr_accessor :ids
      
        # 
        # Corresponds to the JSON property `standard`
        # @return [String]
        attr_accessor :standard
      
        # 
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ids = args[:ids] if args.key?(:ids)
          @standard = args[:standard] if args.key?(:standard)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2ComplianceDetails
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `cloudControl`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2CloudControl]
        attr_accessor :cloud_control
      
        # 
        # Corresponds to the JSON property `cloudControlDeploymentNames`
        # @return [Array<String>]
        attr_accessor :cloud_control_deployment_names
      
        # 
        # Corresponds to the JSON property `frameworks`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Framework>]
        attr_accessor :frameworks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_control = args[:cloud_control] if args.key?(:cloud_control)
          @cloud_control_deployment_names = args[:cloud_control_deployment_names] if args.key?(:cloud_control_deployment_names)
          @frameworks = args[:frameworks] if args.key?(:frameworks)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Connection
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `destinationIp`
        # @return [String]
        attr_accessor :destination_ip
      
        # 
        # Corresponds to the JSON property `destinationPort`
        # @return [Fixnum]
        attr_accessor :destination_port
      
        # 
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        # 
        # Corresponds to the JSON property `sourceIp`
        # @return [String]
        attr_accessor :source_ip
      
        # 
        # Corresponds to the JSON property `sourcePort`
        # @return [Fixnum]
        attr_accessor :source_port
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_ip = args[:destination_ip] if args.key?(:destination_ip)
          @destination_port = args[:destination_port] if args.key?(:destination_port)
          @protocol = args[:protocol] if args.key?(:protocol)
          @source_ip = args[:source_ip] if args.key?(:source_ip)
          @source_port = args[:source_port] if args.key?(:source_port)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Contact
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2ContactDetails
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contacts`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Contact>]
        attr_accessor :contacts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contacts = args[:contacts] if args.key?(:contacts)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Container
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `imageId`
        # @return [String]
        attr_accessor :image_id
      
        # 
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Label>]
        attr_accessor :labels
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @image_id = args[:image_id] if args.key?(:image_id)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Control
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `controlName`
        # @return [String]
        attr_accessor :control_name
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @control_name = args[:control_name] if args.key?(:control_name)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Cve
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `cvssv3`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Cvssv3]
        attr_accessor :cvssv3
      
        # 
        # Corresponds to the JSON property `exploitReleaseDate`
        # @return [String]
        attr_accessor :exploit_release_date
      
        # 
        # Corresponds to the JSON property `exploitationActivity`
        # @return [String]
        attr_accessor :exploitation_activity
      
        # 
        # Corresponds to the JSON property `firstExploitationDate`
        # @return [String]
        attr_accessor :first_exploitation_date
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `impact`
        # @return [String]
        attr_accessor :impact
      
        # 
        # Corresponds to the JSON property `observedInTheWild`
        # @return [Boolean]
        attr_accessor :observed_in_the_wild
        alias_method :observed_in_the_wild?, :observed_in_the_wild
      
        # 
        # Corresponds to the JSON property `references`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Reference>]
        attr_accessor :references
      
        # 
        # Corresponds to the JSON property `upstreamFixAvailable`
        # @return [Boolean]
        attr_accessor :upstream_fix_available
        alias_method :upstream_fix_available?, :upstream_fix_available
      
        # 
        # Corresponds to the JSON property `zeroDay`
        # @return [Boolean]
        attr_accessor :zero_day
        alias_method :zero_day?, :zero_day
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cvssv3 = args[:cvssv3] if args.key?(:cvssv3)
          @exploit_release_date = args[:exploit_release_date] if args.key?(:exploit_release_date)
          @exploitation_activity = args[:exploitation_activity] if args.key?(:exploitation_activity)
          @first_exploitation_date = args[:first_exploitation_date] if args.key?(:first_exploitation_date)
          @id = args[:id] if args.key?(:id)
          @impact = args[:impact] if args.key?(:impact)
          @observed_in_the_wild = args[:observed_in_the_wild] if args.key?(:observed_in_the_wild)
          @references = args[:references] if args.key?(:references)
          @upstream_fix_available = args[:upstream_fix_available] if args.key?(:upstream_fix_available)
          @zero_day = args[:zero_day] if args.key?(:zero_day)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Cvssv3
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `attackComplexity`
        # @return [String]
        attr_accessor :attack_complexity
      
        # 
        # Corresponds to the JSON property `attackVector`
        # @return [String]
        attr_accessor :attack_vector
      
        # 
        # Corresponds to the JSON property `availabilityImpact`
        # @return [String]
        attr_accessor :availability_impact
      
        # 
        # Corresponds to the JSON property `baseScore`
        # @return [Float]
        attr_accessor :base_score
      
        # 
        # Corresponds to the JSON property `confidentialityImpact`
        # @return [String]
        attr_accessor :confidentiality_impact
      
        # 
        # Corresponds to the JSON property `integrityImpact`
        # @return [String]
        attr_accessor :integrity_impact
      
        # 
        # Corresponds to the JSON property `privilegesRequired`
        # @return [String]
        attr_accessor :privileges_required
      
        # 
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # 
        # Corresponds to the JSON property `userInteraction`
        # @return [String]
        attr_accessor :user_interaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attack_complexity = args[:attack_complexity] if args.key?(:attack_complexity)
          @attack_vector = args[:attack_vector] if args.key?(:attack_vector)
          @availability_impact = args[:availability_impact] if args.key?(:availability_impact)
          @base_score = args[:base_score] if args.key?(:base_score)
          @confidentiality_impact = args[:confidentiality_impact] if args.key?(:confidentiality_impact)
          @integrity_impact = args[:integrity_impact] if args.key?(:integrity_impact)
          @privileges_required = args[:privileges_required] if args.key?(:privileges_required)
          @scope = args[:scope] if args.key?(:scope)
          @user_interaction = args[:user_interaction] if args.key?(:user_interaction)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Cwe
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `references`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Reference>]
        attr_accessor :references
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @references = args[:references] if args.key?(:references)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2DataAccessEvent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `eventId`
        # @return [String]
        attr_accessor :event_id
      
        # 
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # 
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        # 
        # Corresponds to the JSON property `principalEmail`
        # @return [String]
        attr_accessor :principal_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_id = args[:event_id] if args.key?(:event_id)
          @event_time = args[:event_time] if args.key?(:event_time)
          @operation = args[:operation] if args.key?(:operation)
          @principal_email = args[:principal_email] if args.key?(:principal_email)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2DataFlowEvent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `eventId`
        # @return [String]
        attr_accessor :event_id
      
        # 
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # 
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        # 
        # Corresponds to the JSON property `principalEmail`
        # @return [String]
        attr_accessor :principal_email
      
        # 
        # Corresponds to the JSON property `violatedLocation`
        # @return [String]
        attr_accessor :violated_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_id = args[:event_id] if args.key?(:event_id)
          @event_time = args[:event_time] if args.key?(:event_time)
          @operation = args[:operation] if args.key?(:operation)
          @principal_email = args[:principal_email] if args.key?(:principal_email)
          @violated_location = args[:violated_location] if args.key?(:violated_location)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2DataRetentionDeletionEvent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dataObjectCount`
        # @return [Fixnum]
        attr_accessor :data_object_count
      
        # 
        # Corresponds to the JSON property `eventDetectionTime`
        # @return [String]
        attr_accessor :event_detection_time
      
        # 
        # Corresponds to the JSON property `eventType`
        # @return [String]
        attr_accessor :event_type
      
        # 
        # Corresponds to the JSON property `maxRetentionAllowed`
        # @return [String]
        attr_accessor :max_retention_allowed
      
        # 
        # Corresponds to the JSON property `minRetentionAllowed`
        # @return [String]
        attr_accessor :min_retention_allowed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_object_count = args[:data_object_count] if args.key?(:data_object_count)
          @event_detection_time = args[:event_detection_time] if args.key?(:event_detection_time)
          @event_type = args[:event_type] if args.key?(:event_type)
          @max_retention_allowed = args[:max_retention_allowed] if args.key?(:max_retention_allowed)
          @min_retention_allowed = args[:min_retention_allowed] if args.key?(:min_retention_allowed)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Database
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `grantees`
        # @return [Array<String>]
        attr_accessor :grantees
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # 
        # Corresponds to the JSON property `userName`
        # @return [String]
        attr_accessor :user_name
      
        # 
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @grantees = args[:grantees] if args.key?(:grantees)
          @name = args[:name] if args.key?(:name)
          @query = args[:query] if args.key?(:query)
          @user_name = args[:user_name] if args.key?(:user_name)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Dataset
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Denied
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `ipRules`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2IpRule>]
        attr_accessor :ip_rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_rules = args[:ip_rules] if args.key?(:ip_rules)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Detection
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `binary`
        # @return [String]
        attr_accessor :binary
      
        # 
        # Corresponds to the JSON property `percentPagesMatched`
        # @return [Float]
        attr_accessor :percent_pages_matched
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @binary = args[:binary] if args.key?(:binary)
          @percent_pages_matched = args[:percent_pages_matched] if args.key?(:percent_pages_matched)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2DetectorReference
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `detectorId`
        # @return [String]
        attr_accessor :detector_id
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `explanation`
        # @return [String]
        attr_accessor :explanation
      
        # 
        # Corresponds to the JSON property `recommendation`
        # @return [String]
        attr_accessor :recommendation
      
        # 
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detector_id = args[:detector_id] if args.key?(:detector_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @explanation = args[:explanation] if args.key?(:explanation)
          @recommendation = args[:recommendation] if args.key?(:recommendation)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2DiscoveredWorkload
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `confidence`
        # @return [String]
        attr_accessor :confidence
      
        # 
        # Corresponds to the JSON property `detectedRelevantHardware`
        # @return [Boolean]
        attr_accessor :detected_relevant_hardware
        alias_method :detected_relevant_hardware?, :detected_relevant_hardware
      
        # 
        # Corresponds to the JSON property `detectedRelevantKeywords`
        # @return [Boolean]
        attr_accessor :detected_relevant_keywords
        alias_method :detected_relevant_keywords?, :detected_relevant_keywords
      
        # 
        # Corresponds to the JSON property `detectedRelevantPackages`
        # @return [Boolean]
        attr_accessor :detected_relevant_packages
        alias_method :detected_relevant_packages?, :detected_relevant_packages
      
        # 
        # Corresponds to the JSON property `workloadType`
        # @return [String]
        attr_accessor :workload_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @detected_relevant_hardware = args[:detected_relevant_hardware] if args.key?(:detected_relevant_hardware)
          @detected_relevant_keywords = args[:detected_relevant_keywords] if args.key?(:detected_relevant_keywords)
          @detected_relevant_packages = args[:detected_relevant_packages] if args.key?(:detected_relevant_packages)
          @workload_type = args[:workload_type] if args.key?(:workload_type)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Disk
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2DiskPath
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `partitionUuid`
        # @return [String]
        attr_accessor :partition_uuid
      
        # 
        # Corresponds to the JSON property `relativePath`
        # @return [String]
        attr_accessor :relative_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @partition_uuid = args[:partition_uuid] if args.key?(:partition_uuid)
          @relative_path = args[:relative_path] if args.key?(:relative_path)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2DynamicMuteRecord
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `matchTime`
        # @return [String]
        attr_accessor :match_time
      
        # 
        # Corresponds to the JSON property `muteConfig`
        # @return [String]
        attr_accessor :mute_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @match_time = args[:match_time] if args.key?(:match_time)
          @mute_config = args[:mute_config] if args.key?(:mute_config)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2EnvironmentVariable
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `val`
        # @return [String]
        attr_accessor :val
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @val = args[:val] if args.key?(:val)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2ExfilResource
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `components`
        # @return [Array<String>]
        attr_accessor :components
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @components = args[:components] if args.key?(:components)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Exfiltration
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `sources`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2ExfilResource>]
        attr_accessor :sources
      
        # 
        # Corresponds to the JSON property `targets`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2ExfilResource>]
        attr_accessor :targets
      
        # 
        # Corresponds to the JSON property `totalExfiltratedBytes`
        # @return [Fixnum]
        attr_accessor :total_exfiltrated_bytes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sources = args[:sources] if args.key?(:sources)
          @targets = args[:targets] if args.key?(:targets)
          @total_exfiltrated_bytes = args[:total_exfiltrated_bytes] if args.key?(:total_exfiltrated_bytes)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2ExternalExposure
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `backendBucket`
        # @return [String]
        attr_accessor :backend_bucket
      
        # 
        # Corresponds to the JSON property `backendService`
        # @return [String]
        attr_accessor :backend_service
      
        # 
        # Corresponds to the JSON property `exposedApplication`
        # @return [String]
        attr_accessor :exposed_application
      
        # 
        # Corresponds to the JSON property `exposedEndpoint`
        # @return [String]
        attr_accessor :exposed_endpoint
      
        # 
        # Corresponds to the JSON property `exposedService`
        # @return [String]
        attr_accessor :exposed_service
      
        # 
        # Corresponds to the JSON property `forwardingRule`
        # @return [String]
        attr_accessor :forwarding_rule
      
        # 
        # Corresponds to the JSON property `hostnameUri`
        # @return [String]
        attr_accessor :hostname_uri
      
        # 
        # Corresponds to the JSON property `httpResponse`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2HttpResponse>]
        attr_accessor :http_response
      
        # 
        # Corresponds to the JSON property `instanceGroup`
        # @return [String]
        attr_accessor :instance_group
      
        # 
        # Corresponds to the JSON property `internalBackendService`
        # @return [String]
        attr_accessor :internal_backend_service
      
        # 
        # Corresponds to the JSON property `loadBalancerFirewallPolicy`
        # @return [String]
        attr_accessor :load_balancer_firewall_policy
      
        # 
        # Corresponds to the JSON property `networkEndpointGroup`
        # @return [String]
        attr_accessor :network_endpoint_group
      
        # 
        # Corresponds to the JSON property `networkIngressFirewallPolicy`
        # @return [String]
        attr_accessor :network_ingress_firewall_policy
      
        # 
        # Corresponds to the JSON property `networkPathInsightsGenerationTime`
        # @return [String]
        attr_accessor :network_path_insights_generation_time
      
        # 
        # Corresponds to the JSON property `privateIpAddress`
        # @return [String]
        attr_accessor :private_ip_address
      
        # 
        # Corresponds to the JSON property `privatePort`
        # @return [String]
        attr_accessor :private_port
      
        # 
        # Corresponds to the JSON property `pscNetworkAttachment`
        # @return [String]
        attr_accessor :psc_network_attachment
      
        # 
        # Corresponds to the JSON property `pscServiceAttachment`
        # @return [String]
        attr_accessor :psc_service_attachment
      
        # 
        # Corresponds to the JSON property `publicIpAddress`
        # @return [String]
        attr_accessor :public_ip_address
      
        # 
        # Corresponds to the JSON property `publicPort`
        # @return [String]
        attr_accessor :public_port
      
        # 
        # Corresponds to the JSON property `serviceFirewallPolicy`
        # @return [String]
        attr_accessor :service_firewall_policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backend_bucket = args[:backend_bucket] if args.key?(:backend_bucket)
          @backend_service = args[:backend_service] if args.key?(:backend_service)
          @exposed_application = args[:exposed_application] if args.key?(:exposed_application)
          @exposed_endpoint = args[:exposed_endpoint] if args.key?(:exposed_endpoint)
          @exposed_service = args[:exposed_service] if args.key?(:exposed_service)
          @forwarding_rule = args[:forwarding_rule] if args.key?(:forwarding_rule)
          @hostname_uri = args[:hostname_uri] if args.key?(:hostname_uri)
          @http_response = args[:http_response] if args.key?(:http_response)
          @instance_group = args[:instance_group] if args.key?(:instance_group)
          @internal_backend_service = args[:internal_backend_service] if args.key?(:internal_backend_service)
          @load_balancer_firewall_policy = args[:load_balancer_firewall_policy] if args.key?(:load_balancer_firewall_policy)
          @network_endpoint_group = args[:network_endpoint_group] if args.key?(:network_endpoint_group)
          @network_ingress_firewall_policy = args[:network_ingress_firewall_policy] if args.key?(:network_ingress_firewall_policy)
          @network_path_insights_generation_time = args[:network_path_insights_generation_time] if args.key?(:network_path_insights_generation_time)
          @private_ip_address = args[:private_ip_address] if args.key?(:private_ip_address)
          @private_port = args[:private_port] if args.key?(:private_port)
          @psc_network_attachment = args[:psc_network_attachment] if args.key?(:psc_network_attachment)
          @psc_service_attachment = args[:psc_service_attachment] if args.key?(:psc_service_attachment)
          @public_ip_address = args[:public_ip_address] if args.key?(:public_ip_address)
          @public_port = args[:public_port] if args.key?(:public_port)
          @service_firewall_policy = args[:service_firewall_policy] if args.key?(:service_firewall_policy)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2ExternalSystem
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `assignees`
        # @return [Array<String>]
        attr_accessor :assignees
      
        # 
        # Corresponds to the JSON property `caseCloseTime`
        # @return [String]
        attr_accessor :case_close_time
      
        # 
        # Corresponds to the JSON property `caseCreateTime`
        # @return [String]
        attr_accessor :case_create_time
      
        # 
        # Corresponds to the JSON property `casePriority`
        # @return [String]
        attr_accessor :case_priority
      
        # 
        # Corresponds to the JSON property `caseSla`
        # @return [String]
        attr_accessor :case_sla
      
        # 
        # Corresponds to the JSON property `caseUri`
        # @return [String]
        attr_accessor :case_uri
      
        # 
        # Corresponds to the JSON property `externalSystemUpdateTime`
        # @return [String]
        attr_accessor :external_system_update_time
      
        # 
        # Corresponds to the JSON property `externalUid`
        # @return [String]
        attr_accessor :external_uid
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # 
        # Corresponds to the JSON property `ticketInfo`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2TicketInfo]
        attr_accessor :ticket_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assignees = args[:assignees] if args.key?(:assignees)
          @case_close_time = args[:case_close_time] if args.key?(:case_close_time)
          @case_create_time = args[:case_create_time] if args.key?(:case_create_time)
          @case_priority = args[:case_priority] if args.key?(:case_priority)
          @case_sla = args[:case_sla] if args.key?(:case_sla)
          @case_uri = args[:case_uri] if args.key?(:case_uri)
          @external_system_update_time = args[:external_system_update_time] if args.key?(:external_system_update_time)
          @external_uid = args[:external_uid] if args.key?(:external_uid)
          @name = args[:name] if args.key?(:name)
          @status = args[:status] if args.key?(:status)
          @ticket_info = args[:ticket_info] if args.key?(:ticket_info)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2File
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contents`
        # @return [String]
        attr_accessor :contents
      
        # 
        # Corresponds to the JSON property `diskPath`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2DiskPath]
        attr_accessor :disk_path
      
        # 
        # Corresponds to the JSON property `fileLoadState`
        # @return [String]
        attr_accessor :file_load_state
      
        # 
        # Corresponds to the JSON property `hashedSize`
        # @return [Fixnum]
        attr_accessor :hashed_size
      
        # 
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2FileOperation>]
        attr_accessor :operations
      
        # 
        # Corresponds to the JSON property `partiallyHashed`
        # @return [Boolean]
        attr_accessor :partially_hashed
        alias_method :partially_hashed?, :partially_hashed
      
        # 
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # 
        # Corresponds to the JSON property `sha256`
        # @return [String]
        attr_accessor :sha256
      
        # 
        # Corresponds to the JSON property `size`
        # @return [Fixnum]
        attr_accessor :size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contents = args[:contents] if args.key?(:contents)
          @disk_path = args[:disk_path] if args.key?(:disk_path)
          @file_load_state = args[:file_load_state] if args.key?(:file_load_state)
          @hashed_size = args[:hashed_size] if args.key?(:hashed_size)
          @operations = args[:operations] if args.key?(:operations)
          @partially_hashed = args[:partially_hashed] if args.key?(:partially_hashed)
          @path = args[:path] if args.key?(:path)
          @sha256 = args[:sha256] if args.key?(:sha256)
          @size = args[:size] if args.key?(:size)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2FileOperation
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Finding
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `access`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Access]
        attr_accessor :access
      
        # 
        # Corresponds to the JSON property `affectedResources`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2AffectedResources]
        attr_accessor :affected_resources
      
        # 
        # Corresponds to the JSON property `agent`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Agent]
        attr_accessor :agent
      
        # 
        # Corresponds to the JSON property `agentAnomaly`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2AgentAnomaly]
        attr_accessor :agent_anomaly
      
        # 
        # Corresponds to the JSON property `agentDataAccessEvents`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2AgentDataAccessEvent>]
        attr_accessor :agent_data_access_events
      
        # 
        # Corresponds to the JSON property `agentSessions`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2AgentSession>]
        attr_accessor :agent_sessions
      
        # 
        # Corresponds to the JSON property `aiModel`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2AiModel]
        attr_accessor :ai_model
      
        # 
        # Corresponds to the JSON property `application`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Application]
        attr_accessor :application
      
        # 
        # Corresponds to the JSON property `artifactGuardPolicies`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2ArtifactGuardPolicies]
        attr_accessor :artifact_guard_policies
      
        # 
        # Corresponds to the JSON property `attackExposure`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2AttackExposure]
        attr_accessor :attack_exposure
      
        # 
        # Corresponds to the JSON property `backupDisasterRecovery`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2BackupDisasterRecovery]
        attr_accessor :backup_disaster_recovery
      
        # 
        # Corresponds to the JSON property `canonicalName`
        # @return [String]
        attr_accessor :canonical_name
      
        # 
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # 
        # Corresponds to the JSON property `chokepoint`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Chokepoint]
        attr_accessor :chokepoint
      
        # 
        # Corresponds to the JSON property `cloudArmor`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2CloudArmor]
        attr_accessor :cloud_armor
      
        # 
        # Corresponds to the JSON property `cloudDlpDataProfile`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2CloudDlpDataProfile]
        attr_accessor :cloud_dlp_data_profile
      
        # 
        # Corresponds to the JSON property `cloudDlpInspection`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2CloudDlpInspection]
        attr_accessor :cloud_dlp_inspection
      
        # 
        # Corresponds to the JSON property `complianceDetails`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2ComplianceDetails]
        attr_accessor :compliance_details
      
        # 
        # Corresponds to the JSON property `compliances`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Compliance>]
        attr_accessor :compliances
      
        # 
        # Corresponds to the JSON property `connections`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Connection>]
        attr_accessor :connections
      
        # 
        # Corresponds to the JSON property `contacts`
        # @return [Hash<String,Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2ContactDetails>]
        attr_accessor :contacts
      
        # 
        # Corresponds to the JSON property `containers`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Container>]
        attr_accessor :containers
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `cryptoKeyName`
        # @return [String]
        attr_accessor :crypto_key_name
      
        # 
        # Corresponds to the JSON property `dataAccessEvents`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2DataAccessEvent>]
        attr_accessor :data_access_events
      
        # 
        # Corresponds to the JSON property `dataFlowEvents`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2DataFlowEvent>]
        attr_accessor :data_flow_events
      
        # 
        # Corresponds to the JSON property `dataRetentionDeletionEvents`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2DataRetentionDeletionEvent>]
        attr_accessor :data_retention_deletion_events
      
        # 
        # Corresponds to the JSON property `database`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Database]
        attr_accessor :database
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `discoveredWorkload`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2DiscoveredWorkload]
        attr_accessor :discovered_workload
      
        # 
        # Corresponds to the JSON property `disk`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Disk]
        attr_accessor :disk
      
        # 
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # 
        # Corresponds to the JSON property `exfiltration`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Exfiltration]
        attr_accessor :exfiltration
      
        # 
        # Corresponds to the JSON property `externalExposure`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2ExternalExposure]
        attr_accessor :external_exposure
      
        # 
        # Corresponds to the JSON property `externalSystems`
        # @return [Hash<String,Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2ExternalSystem>]
        attr_accessor :external_systems
      
        # 
        # Corresponds to the JSON property `externalUri`
        # @return [String]
        attr_accessor :external_uri
      
        # 
        # Corresponds to the JSON property `files`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2File>]
        attr_accessor :files
      
        # 
        # Corresponds to the JSON property `findingClass`
        # @return [String]
        attr_accessor :finding_class
      
        # 
        # Corresponds to the JSON property `groupMemberships`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2GroupMembership>]
        attr_accessor :group_memberships
      
        # 
        # Corresponds to the JSON property `iamBindings`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2IamBinding>]
        attr_accessor :iam_bindings
      
        # 
        # Corresponds to the JSON property `iamDetails`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2IamDetails]
        attr_accessor :iam_details
      
        # 
        # Corresponds to the JSON property `indicator`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Indicator]
        attr_accessor :indicator
      
        # 
        # Corresponds to the JSON property `ipRules`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2IpRules]
        attr_accessor :ip_rules
      
        # 
        # Corresponds to the JSON property `job`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Job]
        attr_accessor :job
      
        # 
        # Corresponds to the JSON property `kernelRootkit`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2KernelRootkit]
        attr_accessor :kernel_rootkit
      
        # 
        # Corresponds to the JSON property `kubernetes`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Kubernetes]
        attr_accessor :kubernetes
      
        # 
        # Corresponds to the JSON property `loadBalancers`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2LoadBalancer>]
        attr_accessor :load_balancers
      
        # 
        # Corresponds to the JSON property `logEntries`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2LogEntry>]
        attr_accessor :log_entries
      
        # 
        # Corresponds to the JSON property `mitreAttack`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2MitreAttack]
        attr_accessor :mitre_attack
      
        # 
        # Corresponds to the JSON property `moduleName`
        # @return [String]
        attr_accessor :module_name
      
        # 
        # Corresponds to the JSON property `mute`
        # @return [String]
        attr_accessor :mute
      
        # 
        # Corresponds to the JSON property `muteInfo`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2MuteInfo]
        attr_accessor :mute_info
      
        # 
        # Corresponds to the JSON property `muteInitiator`
        # @return [String]
        attr_accessor :mute_initiator
      
        # 
        # Corresponds to the JSON property `muteUpdateTime`
        # @return [String]
        attr_accessor :mute_update_time
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `networks`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Network>]
        attr_accessor :networks
      
        # 
        # Corresponds to the JSON property `nextSteps`
        # @return [String]
        attr_accessor :next_steps
      
        # 
        # Corresponds to the JSON property `notebook`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Notebook]
        attr_accessor :notebook
      
        # 
        # Corresponds to the JSON property `orgPolicies`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2OrgPolicy>]
        attr_accessor :org_policies
      
        # 
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # 
        # Corresponds to the JSON property `parentDisplayName`
        # @return [String]
        attr_accessor :parent_display_name
      
        # 
        # Corresponds to the JSON property `policyViolationSummary`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2PolicyViolationSummary]
        attr_accessor :policy_violation_summary
      
        # 
        # Corresponds to the JSON property `processes`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Process>]
        attr_accessor :processes
      
        # 
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # 
        # Corresponds to the JSON property `secret`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Secret]
        attr_accessor :secret
      
        # 
        # Corresponds to the JSON property `securityMarks`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2SecurityMarks]
        attr_accessor :security_marks
      
        # 
        # Corresponds to the JSON property `securityPosture`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2SecurityPosture]
        attr_accessor :security_posture
      
        # 
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # 
        # Corresponds to the JSON property `sourceProperties`
        # @return [Hash<String,Object>]
        attr_accessor :source_properties
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # 
        # Corresponds to the JSON property `toxicCombination`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2ToxicCombination]
        attr_accessor :toxic_combination
      
        # 
        # Corresponds to the JSON property `vertexAi`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2VertexAi]
        attr_accessor :vertex_ai
      
        # 
        # Corresponds to the JSON property `vulnerability`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Vulnerability]
        attr_accessor :vulnerability
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access = args[:access] if args.key?(:access)
          @affected_resources = args[:affected_resources] if args.key?(:affected_resources)
          @agent = args[:agent] if args.key?(:agent)
          @agent_anomaly = args[:agent_anomaly] if args.key?(:agent_anomaly)
          @agent_data_access_events = args[:agent_data_access_events] if args.key?(:agent_data_access_events)
          @agent_sessions = args[:agent_sessions] if args.key?(:agent_sessions)
          @ai_model = args[:ai_model] if args.key?(:ai_model)
          @application = args[:application] if args.key?(:application)
          @artifact_guard_policies = args[:artifact_guard_policies] if args.key?(:artifact_guard_policies)
          @attack_exposure = args[:attack_exposure] if args.key?(:attack_exposure)
          @backup_disaster_recovery = args[:backup_disaster_recovery] if args.key?(:backup_disaster_recovery)
          @canonical_name = args[:canonical_name] if args.key?(:canonical_name)
          @category = args[:category] if args.key?(:category)
          @chokepoint = args[:chokepoint] if args.key?(:chokepoint)
          @cloud_armor = args[:cloud_armor] if args.key?(:cloud_armor)
          @cloud_dlp_data_profile = args[:cloud_dlp_data_profile] if args.key?(:cloud_dlp_data_profile)
          @cloud_dlp_inspection = args[:cloud_dlp_inspection] if args.key?(:cloud_dlp_inspection)
          @compliance_details = args[:compliance_details] if args.key?(:compliance_details)
          @compliances = args[:compliances] if args.key?(:compliances)
          @connections = args[:connections] if args.key?(:connections)
          @contacts = args[:contacts] if args.key?(:contacts)
          @containers = args[:containers] if args.key?(:containers)
          @create_time = args[:create_time] if args.key?(:create_time)
          @crypto_key_name = args[:crypto_key_name] if args.key?(:crypto_key_name)
          @data_access_events = args[:data_access_events] if args.key?(:data_access_events)
          @data_flow_events = args[:data_flow_events] if args.key?(:data_flow_events)
          @data_retention_deletion_events = args[:data_retention_deletion_events] if args.key?(:data_retention_deletion_events)
          @database = args[:database] if args.key?(:database)
          @description = args[:description] if args.key?(:description)
          @discovered_workload = args[:discovered_workload] if args.key?(:discovered_workload)
          @disk = args[:disk] if args.key?(:disk)
          @event_time = args[:event_time] if args.key?(:event_time)
          @exfiltration = args[:exfiltration] if args.key?(:exfiltration)
          @external_exposure = args[:external_exposure] if args.key?(:external_exposure)
          @external_systems = args[:external_systems] if args.key?(:external_systems)
          @external_uri = args[:external_uri] if args.key?(:external_uri)
          @files = args[:files] if args.key?(:files)
          @finding_class = args[:finding_class] if args.key?(:finding_class)
          @group_memberships = args[:group_memberships] if args.key?(:group_memberships)
          @iam_bindings = args[:iam_bindings] if args.key?(:iam_bindings)
          @iam_details = args[:iam_details] if args.key?(:iam_details)
          @indicator = args[:indicator] if args.key?(:indicator)
          @ip_rules = args[:ip_rules] if args.key?(:ip_rules)
          @job = args[:job] if args.key?(:job)
          @kernel_rootkit = args[:kernel_rootkit] if args.key?(:kernel_rootkit)
          @kubernetes = args[:kubernetes] if args.key?(:kubernetes)
          @load_balancers = args[:load_balancers] if args.key?(:load_balancers)
          @log_entries = args[:log_entries] if args.key?(:log_entries)
          @mitre_attack = args[:mitre_attack] if args.key?(:mitre_attack)
          @module_name = args[:module_name] if args.key?(:module_name)
          @mute = args[:mute] if args.key?(:mute)
          @mute_info = args[:mute_info] if args.key?(:mute_info)
          @mute_initiator = args[:mute_initiator] if args.key?(:mute_initiator)
          @mute_update_time = args[:mute_update_time] if args.key?(:mute_update_time)
          @name = args[:name] if args.key?(:name)
          @networks = args[:networks] if args.key?(:networks)
          @next_steps = args[:next_steps] if args.key?(:next_steps)
          @notebook = args[:notebook] if args.key?(:notebook)
          @org_policies = args[:org_policies] if args.key?(:org_policies)
          @parent = args[:parent] if args.key?(:parent)
          @parent_display_name = args[:parent_display_name] if args.key?(:parent_display_name)
          @policy_violation_summary = args[:policy_violation_summary] if args.key?(:policy_violation_summary)
          @processes = args[:processes] if args.key?(:processes)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @secret = args[:secret] if args.key?(:secret)
          @security_marks = args[:security_marks] if args.key?(:security_marks)
          @security_posture = args[:security_posture] if args.key?(:security_posture)
          @severity = args[:severity] if args.key?(:severity)
          @source_properties = args[:source_properties] if args.key?(:source_properties)
          @state = args[:state] if args.key?(:state)
          @toxic_combination = args[:toxic_combination] if args.key?(:toxic_combination)
          @vertex_ai = args[:vertex_ai] if args.key?(:vertex_ai)
          @vulnerability = args[:vulnerability] if args.key?(:vulnerability)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Folder
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `resourceFolder`
        # @return [String]
        attr_accessor :resource_folder
      
        # 
        # Corresponds to the JSON property `resourceFolderDisplayName`
        # @return [String]
        attr_accessor :resource_folder_display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_folder = args[:resource_folder] if args.key?(:resource_folder)
          @resource_folder_display_name = args[:resource_folder_display_name] if args.key?(:resource_folder_display_name)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Framework
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `category`
        # @return [Array<String>]
        attr_accessor :category
      
        # 
        # Corresponds to the JSON property `controls`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Control>]
        attr_accessor :controls
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
          @controls = args[:controls] if args.key?(:controls)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Geolocation
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2GroupMembership
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `groupId`
        # @return [String]
        attr_accessor :group_id
      
        # 
        # Corresponds to the JSON property `groupType`
        # @return [String]
        attr_accessor :group_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_id = args[:group_id] if args.key?(:group_id)
          @group_type = args[:group_type] if args.key?(:group_type)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2HttpResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # 
        # Corresponds to the JSON property `statusCode`
        # @return [String]
        attr_accessor :status_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @path = args[:path] if args.key?(:path)
          @status_code = args[:status_code] if args.key?(:status_code)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2IamBinding
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # 
        # Corresponds to the JSON property `member`
        # @return [String]
        attr_accessor :member
      
        # 
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @member = args[:member] if args.key?(:member)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2IamDetails
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `iamRolePermissions`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2IamRolePermission>]
        attr_accessor :iam_role_permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @iam_role_permissions = args[:iam_role_permissions] if args.key?(:iam_role_permissions)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2IamRolePermission
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Indicator
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `domains`
        # @return [Array<String>]
        attr_accessor :domains
      
        # 
        # Corresponds to the JSON property `ipAddresses`
        # @return [Array<String>]
        attr_accessor :ip_addresses
      
        # 
        # Corresponds to the JSON property `signatures`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2ProcessSignature>]
        attr_accessor :signatures
      
        # 
        # Corresponds to the JSON property `uris`
        # @return [Array<String>]
        attr_accessor :uris
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domains = args[:domains] if args.key?(:domains)
          @ip_addresses = args[:ip_addresses] if args.key?(:ip_addresses)
          @signatures = args[:signatures] if args.key?(:signatures)
          @uris = args[:uris] if args.key?(:uris)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2InfoType
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `sensitivityScore`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2SensitivityScore]
        attr_accessor :sensitivity_score
      
        # 
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @sensitivity_score = args[:sensitivity_score] if args.key?(:sensitivity_score)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2InvocationReference
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `invocationId`
        # @return [String]
        attr_accessor :invocation_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @invocation_id = args[:invocation_id] if args.key?(:invocation_id)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2IpRule
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `portRanges`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2PortRange>]
        attr_accessor :port_ranges
      
        # 
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @port_ranges = args[:port_ranges] if args.key?(:port_ranges)
          @protocol = args[:protocol] if args.key?(:protocol)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2IpRules
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `allowed`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Allowed]
        attr_accessor :allowed
      
        # 
        # Corresponds to the JSON property `denied`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Denied]
        attr_accessor :denied
      
        # 
        # Corresponds to the JSON property `destinationIpRanges`
        # @return [Array<String>]
        attr_accessor :destination_ip_ranges
      
        # 
        # Corresponds to the JSON property `direction`
        # @return [String]
        attr_accessor :direction
      
        # 
        # Corresponds to the JSON property `exposedServices`
        # @return [Array<String>]
        attr_accessor :exposed_services
      
        # 
        # Corresponds to the JSON property `sourceIpRanges`
        # @return [Array<String>]
        attr_accessor :source_ip_ranges
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed = args[:allowed] if args.key?(:allowed)
          @denied = args[:denied] if args.key?(:denied)
          @destination_ip_ranges = args[:destination_ip_ranges] if args.key?(:destination_ip_ranges)
          @direction = args[:direction] if args.key?(:direction)
          @exposed_services = args[:exposed_services] if args.key?(:exposed_services)
          @source_ip_ranges = args[:source_ip_ranges] if args.key?(:source_ip_ranges)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Issue
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `detection`
        # @return [String]
        attr_accessor :detection
      
        # 
        # Corresponds to the JSON property `domains`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2IssueDomain>]
        attr_accessor :domains
      
        # 
        # Corresponds to the JSON property `exposureScore`
        # @return [Float]
        attr_accessor :exposure_score
      
        # 
        # Corresponds to the JSON property `issueType`
        # @return [String]
        attr_accessor :issue_type
      
        # 
        # Corresponds to the JSON property `lastObservationTime`
        # @return [String]
        attr_accessor :last_observation_time
      
        # 
        # Corresponds to the JSON property `mute`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2IssueMute]
        attr_accessor :mute
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `primaryResource`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2IssueResource]
        attr_accessor :primary_resource
      
        # 
        # Corresponds to the JSON property `relatedFindings`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2IssueFinding>]
        attr_accessor :related_findings
      
        # 
        # Corresponds to the JSON property `remediations`
        # @return [Array<String>]
        attr_accessor :remediations
      
        # 
        # Corresponds to the JSON property `secondaryResources`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2IssueResource>]
        attr_accessor :secondary_resources
      
        # 
        # Corresponds to the JSON property `securityContexts`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2IssueSecurityContext>]
        attr_accessor :security_contexts
      
        # 
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # 
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @detection = args[:detection] if args.key?(:detection)
          @domains = args[:domains] if args.key?(:domains)
          @exposure_score = args[:exposure_score] if args.key?(:exposure_score)
          @issue_type = args[:issue_type] if args.key?(:issue_type)
          @last_observation_time = args[:last_observation_time] if args.key?(:last_observation_time)
          @mute = args[:mute] if args.key?(:mute)
          @name = args[:name] if args.key?(:name)
          @primary_resource = args[:primary_resource] if args.key?(:primary_resource)
          @related_findings = args[:related_findings] if args.key?(:related_findings)
          @remediations = args[:remediations] if args.key?(:remediations)
          @secondary_resources = args[:secondary_resources] if args.key?(:secondary_resources)
          @security_contexts = args[:security_contexts] if args.key?(:security_contexts)
          @severity = args[:severity] if args.key?(:severity)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2IssueDomain
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `domainCategory`
        # @return [String]
        attr_accessor :domain_category
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain_category = args[:domain_category] if args.key?(:domain_category)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2IssueFinding
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `cve`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2IssueFindingCve]
        attr_accessor :cve
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `securityBulletin`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2IssueFindingSecurityBulletin]
        attr_accessor :security_bulletin
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cve = args[:cve] if args.key?(:cve)
          @name = args[:name] if args.key?(:name)
          @security_bulletin = args[:security_bulletin] if args.key?(:security_bulletin)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2IssueFindingCve
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2IssueFindingSecurityBulletin
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2IssueMute
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `muteInitiator`
        # @return [String]
        attr_accessor :mute_initiator
      
        # 
        # Corresponds to the JSON property `muteReason`
        # @return [String]
        attr_accessor :mute_reason
      
        # 
        # Corresponds to the JSON property `muteState`
        # @return [String]
        attr_accessor :mute_state
      
        # 
        # Corresponds to the JSON property `muteUpdateTime`
        # @return [String]
        attr_accessor :mute_update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mute_initiator = args[:mute_initiator] if args.key?(:mute_initiator)
          @mute_reason = args[:mute_reason] if args.key?(:mute_reason)
          @mute_state = args[:mute_state] if args.key?(:mute_state)
          @mute_update_time = args[:mute_update_time] if args.key?(:mute_update_time)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2IssueResource
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `adcApplication`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2IssueResourceAdcApplication]
        attr_accessor :adc_application
      
        # 
        # Corresponds to the JSON property `adcApplicationTemplate`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2IssueResourceAdcApplicationTemplateRevision]
        attr_accessor :adc_application_template
      
        # 
        # Corresponds to the JSON property `adcSharedTemplate`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2IssueResourceAdcSharedTemplateRevision]
        attr_accessor :adc_shared_template
      
        # 
        # Corresponds to the JSON property `application`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2IssueResourceApplication]
        attr_accessor :application
      
        # 
        # Corresponds to the JSON property `awsMetadata`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2IssueResourceAwsMetadata]
        attr_accessor :aws_metadata
      
        # 
        # Corresponds to the JSON property `azureMetadata`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2IssueResourceAzureMetadata]
        attr_accessor :azure_metadata
      
        # 
        # Corresponds to the JSON property `cloudProvider`
        # @return [String]
        attr_accessor :cloud_provider
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `googleCloudMetadata`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2IssueResourceGoogleCloudMetadata]
        attr_accessor :google_cloud_metadata
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adc_application = args[:adc_application] if args.key?(:adc_application)
          @adc_application_template = args[:adc_application_template] if args.key?(:adc_application_template)
          @adc_shared_template = args[:adc_shared_template] if args.key?(:adc_shared_template)
          @application = args[:application] if args.key?(:application)
          @aws_metadata = args[:aws_metadata] if args.key?(:aws_metadata)
          @azure_metadata = args[:azure_metadata] if args.key?(:azure_metadata)
          @cloud_provider = args[:cloud_provider] if args.key?(:cloud_provider)
          @display_name = args[:display_name] if args.key?(:display_name)
          @google_cloud_metadata = args[:google_cloud_metadata] if args.key?(:google_cloud_metadata)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2IssueResourceAdcApplication
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `attributes`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2IssueResourceApplicationAttributes]
        attr_accessor :attributes
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2IssueResourceAdcApplicationTemplateRevision
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2IssueResourceAdcSharedTemplateRevision
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2IssueResourceApplication
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `attributes`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2IssueResourceApplicationAttributes]
        attr_accessor :attributes
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2IssueResourceApplicationAttributes
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `businessOwners`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2IssueResourceApplicationAttributesContactInfo>]
        attr_accessor :business_owners
      
        # 
        # Corresponds to the JSON property `criticality`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2IssueResourceApplicationAttributesCriticality]
        attr_accessor :criticality
      
        # 
        # Corresponds to the JSON property `developerOwners`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2IssueResourceApplicationAttributesContactInfo>]
        attr_accessor :developer_owners
      
        # 
        # Corresponds to the JSON property `environment`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2IssueResourceApplicationAttributesEnvironment]
        attr_accessor :environment
      
        # 
        # Corresponds to the JSON property `operatorOwners`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2IssueResourceApplicationAttributesContactInfo>]
        attr_accessor :operator_owners
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @business_owners = args[:business_owners] if args.key?(:business_owners)
          @criticality = args[:criticality] if args.key?(:criticality)
          @developer_owners = args[:developer_owners] if args.key?(:developer_owners)
          @environment = args[:environment] if args.key?(:environment)
          @operator_owners = args[:operator_owners] if args.key?(:operator_owners)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2IssueResourceApplicationAttributesContactInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2IssueResourceApplicationAttributesCriticality
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2IssueResourceApplicationAttributesEnvironment
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2IssueResourceAwsMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `account`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2IssueResourceAwsMetadataAwsAccount]
        attr_accessor :account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] if args.key?(:account)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2IssueResourceAwsMetadataAwsAccount
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2IssueResourceAzureMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `subscription`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2IssueResourceAzureMetadataAzureSubscription]
        attr_accessor :subscription
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @subscription = args[:subscription] if args.key?(:subscription)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2IssueResourceAzureMetadataAzureSubscription
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2IssueResourceGoogleCloudMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_id = args[:project_id] if args.key?(:project_id)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2IssueSecurityContext
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `aggregatedCount`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2IssueSecurityContextAggregatedCount]
        attr_accessor :aggregated_count
      
        # 
        # Corresponds to the JSON property `context`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2IssueSecurityContextContext]
        attr_accessor :context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregated_count = args[:aggregated_count] if args.key?(:aggregated_count)
          @context = args[:context] if args.key?(:context)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2IssueSecurityContextAggregatedCount
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # 
        # Corresponds to the JSON property `value`
        # @return [Fixnum]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2IssueSecurityContextContext
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # 
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Job
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `errorCode`
        # @return [Fixnum]
        attr_accessor :error_code
      
        # 
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_code = args[:error_code] if args.key?(:error_code)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2KernelRootkit
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `unexpectedCodeModification`
        # @return [Boolean]
        attr_accessor :unexpected_code_modification
        alias_method :unexpected_code_modification?, :unexpected_code_modification
      
        # 
        # Corresponds to the JSON property `unexpectedFtraceHandler`
        # @return [Boolean]
        attr_accessor :unexpected_ftrace_handler
        alias_method :unexpected_ftrace_handler?, :unexpected_ftrace_handler
      
        # 
        # Corresponds to the JSON property `unexpectedInterruptHandler`
        # @return [Boolean]
        attr_accessor :unexpected_interrupt_handler
        alias_method :unexpected_interrupt_handler?, :unexpected_interrupt_handler
      
        # 
        # Corresponds to the JSON property `unexpectedKernelCodePages`
        # @return [Boolean]
        attr_accessor :unexpected_kernel_code_pages
        alias_method :unexpected_kernel_code_pages?, :unexpected_kernel_code_pages
      
        # 
        # Corresponds to the JSON property `unexpectedKprobeHandler`
        # @return [Boolean]
        attr_accessor :unexpected_kprobe_handler
        alias_method :unexpected_kprobe_handler?, :unexpected_kprobe_handler
      
        # 
        # Corresponds to the JSON property `unexpectedProcessesInRunqueue`
        # @return [Boolean]
        attr_accessor :unexpected_processes_in_runqueue
        alias_method :unexpected_processes_in_runqueue?, :unexpected_processes_in_runqueue
      
        # 
        # Corresponds to the JSON property `unexpectedReadOnlyDataModification`
        # @return [Boolean]
        attr_accessor :unexpected_read_only_data_modification
        alias_method :unexpected_read_only_data_modification?, :unexpected_read_only_data_modification
      
        # 
        # Corresponds to the JSON property `unexpectedSystemCallHandler`
        # @return [Boolean]
        attr_accessor :unexpected_system_call_handler
        alias_method :unexpected_system_call_handler?, :unexpected_system_call_handler
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @unexpected_code_modification = args[:unexpected_code_modification] if args.key?(:unexpected_code_modification)
          @unexpected_ftrace_handler = args[:unexpected_ftrace_handler] if args.key?(:unexpected_ftrace_handler)
          @unexpected_interrupt_handler = args[:unexpected_interrupt_handler] if args.key?(:unexpected_interrupt_handler)
          @unexpected_kernel_code_pages = args[:unexpected_kernel_code_pages] if args.key?(:unexpected_kernel_code_pages)
          @unexpected_kprobe_handler = args[:unexpected_kprobe_handler] if args.key?(:unexpected_kprobe_handler)
          @unexpected_processes_in_runqueue = args[:unexpected_processes_in_runqueue] if args.key?(:unexpected_processes_in_runqueue)
          @unexpected_read_only_data_modification = args[:unexpected_read_only_data_modification] if args.key?(:unexpected_read_only_data_modification)
          @unexpected_system_call_handler = args[:unexpected_system_call_handler] if args.key?(:unexpected_system_call_handler)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Kubernetes
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `accessReviews`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2AccessReview>]
        attr_accessor :access_reviews
      
        # 
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Binding>]
        attr_accessor :bindings
      
        # 
        # Corresponds to the JSON property `nodePools`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2NodePool>]
        attr_accessor :node_pools
      
        # 
        # Corresponds to the JSON property `nodes`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Node>]
        attr_accessor :nodes
      
        # 
        # Corresponds to the JSON property `objects`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Object>]
        attr_accessor :objects
      
        # 
        # Corresponds to the JSON property `pods`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Pod>]
        attr_accessor :pods
      
        # 
        # Corresponds to the JSON property `roles`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Role>]
        attr_accessor :roles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_reviews = args[:access_reviews] if args.key?(:access_reviews)
          @bindings = args[:bindings] if args.key?(:bindings)
          @node_pools = args[:node_pools] if args.key?(:node_pools)
          @nodes = args[:nodes] if args.key?(:nodes)
          @objects = args[:objects] if args.key?(:objects)
          @pods = args[:pods] if args.key?(:pods)
          @roles = args[:roles] if args.key?(:roles)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Label
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2LoadBalancer
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2LogEntry
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `cloudLoggingEntry`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2CloudLoggingEntry]
        attr_accessor :cloud_logging_entry
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_logging_entry = args[:cloud_logging_entry] if args.key?(:cloud_logging_entry)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2MemoryHashSignature
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `binaryFamily`
        # @return [String]
        attr_accessor :binary_family
      
        # 
        # Corresponds to the JSON property `detections`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Detection>]
        attr_accessor :detections
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @binary_family = args[:binary_family] if args.key?(:binary_family)
          @detections = args[:detections] if args.key?(:detections)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2MitreAttack
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `additionalTactics`
        # @return [Array<String>]
        attr_accessor :additional_tactics
      
        # 
        # Corresponds to the JSON property `additionalTechniques`
        # @return [Array<String>]
        attr_accessor :additional_techniques
      
        # 
        # Corresponds to the JSON property `primaryTactic`
        # @return [String]
        attr_accessor :primary_tactic
      
        # 
        # Corresponds to the JSON property `primaryTechniques`
        # @return [Array<String>]
        attr_accessor :primary_techniques
      
        # 
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_tactics = args[:additional_tactics] if args.key?(:additional_tactics)
          @additional_techniques = args[:additional_techniques] if args.key?(:additional_techniques)
          @primary_tactic = args[:primary_tactic] if args.key?(:primary_tactic)
          @primary_techniques = args[:primary_techniques] if args.key?(:primary_techniques)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2MuteConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `cryptoKeyName`
        # @return [String]
        attr_accessor :crypto_key_name
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `expiryTime`
        # @return [String]
        attr_accessor :expiry_time
      
        # 
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # 
        # Corresponds to the JSON property `mostRecentEditor`
        # @return [String]
        attr_accessor :most_recent_editor
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # 
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @crypto_key_name = args[:crypto_key_name] if args.key?(:crypto_key_name)
          @description = args[:description] if args.key?(:description)
          @expiry_time = args[:expiry_time] if args.key?(:expiry_time)
          @filter = args[:filter] if args.key?(:filter)
          @most_recent_editor = args[:most_recent_editor] if args.key?(:most_recent_editor)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2MuteInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dynamicMuteRecords`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2DynamicMuteRecord>]
        attr_accessor :dynamic_mute_records
      
        # 
        # Corresponds to the JSON property `staticMute`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2StaticMute]
        attr_accessor :static_mute
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dynamic_mute_records = args[:dynamic_mute_records] if args.key?(:dynamic_mute_records)
          @static_mute = args[:static_mute] if args.key?(:static_mute)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Network
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Node
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2NodePool
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `nodes`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Node>]
        attr_accessor :nodes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @nodes = args[:nodes] if args.key?(:nodes)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Notebook
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `lastAuthor`
        # @return [String]
        attr_accessor :last_author
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `notebookUpdateTime`
        # @return [String]
        attr_accessor :notebook_update_time
      
        # 
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_author = args[:last_author] if args.key?(:last_author)
          @name = args[:name] if args.key?(:name)
          @notebook_update_time = args[:notebook_update_time] if args.key?(:notebook_update_time)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2NotificationMessage
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `finding`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Finding]
        attr_accessor :finding
      
        # 
        # Corresponds to the JSON property `notificationConfigName`
        # @return [String]
        attr_accessor :notification_config_name
      
        # 
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Resource]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @finding = args[:finding] if args.key?(:finding)
          @notification_config_name = args[:notification_config_name] if args.key?(:notification_config_name)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Object
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `containers`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Container>]
        attr_accessor :containers
      
        # 
        # Corresponds to the JSON property `group`
        # @return [String]
        attr_accessor :group
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `ns`
        # @return [String]
        attr_accessor :ns
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @containers = args[:containers] if args.key?(:containers)
          @group = args[:group] if args.key?(:group)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @ns = args[:ns] if args.key?(:ns)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2OrgPolicy
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Package
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `cpeUri`
        # @return [String]
        attr_accessor :cpe_uri
      
        # 
        # Corresponds to the JSON property `packageName`
        # @return [String]
        attr_accessor :package_name
      
        # 
        # Corresponds to the JSON property `packageType`
        # @return [String]
        attr_accessor :package_type
      
        # 
        # Corresponds to the JSON property `packageVersion`
        # @return [String]
        attr_accessor :package_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpe_uri = args[:cpe_uri] if args.key?(:cpe_uri)
          @package_name = args[:package_name] if args.key?(:package_name)
          @package_type = args[:package_type] if args.key?(:package_type)
          @package_version = args[:package_version] if args.key?(:package_version)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Pipeline
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Pod
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `containers`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Container>]
        attr_accessor :containers
      
        # 
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Label>]
        attr_accessor :labels
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `ns`
        # @return [String]
        attr_accessor :ns
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @containers = args[:containers] if args.key?(:containers)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @ns = args[:ns] if args.key?(:ns)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2PolicyDriftDetails
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `detectedValue`
        # @return [String]
        attr_accessor :detected_value
      
        # 
        # Corresponds to the JSON property `expectedValue`
        # @return [String]
        attr_accessor :expected_value
      
        # 
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_value = args[:detected_value] if args.key?(:detected_value)
          @expected_value = args[:expected_value] if args.key?(:expected_value)
          @field = args[:field] if args.key?(:field)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2PolicyViolationSummary
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conformantResourcesCount`
        # @return [Fixnum]
        attr_accessor :conformant_resources_count
      
        # 
        # Corresponds to the JSON property `evaluationErrorsCount`
        # @return [Fixnum]
        attr_accessor :evaluation_errors_count
      
        # 
        # Corresponds to the JSON property `outOfScopeResourcesCount`
        # @return [Fixnum]
        attr_accessor :out_of_scope_resources_count
      
        # 
        # Corresponds to the JSON property `policyViolationsCount`
        # @return [Fixnum]
        attr_accessor :policy_violations_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conformant_resources_count = args[:conformant_resources_count] if args.key?(:conformant_resources_count)
          @evaluation_errors_count = args[:evaluation_errors_count] if args.key?(:evaluation_errors_count)
          @out_of_scope_resources_count = args[:out_of_scope_resources_count] if args.key?(:out_of_scope_resources_count)
          @policy_violations_count = args[:policy_violations_count] if args.key?(:policy_violations_count)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2PortRange
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `max`
        # @return [Fixnum]
        attr_accessor :max
      
        # 
        # Corresponds to the JSON property `min`
        # @return [Fixnum]
        attr_accessor :min
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max = args[:max] if args.key?(:max)
          @min = args[:min] if args.key?(:min)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Process
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `args`
        # @return [Array<String>]
        attr_accessor :args
      
        # 
        # Corresponds to the JSON property `argumentsTruncated`
        # @return [Boolean]
        attr_accessor :arguments_truncated
        alias_method :arguments_truncated?, :arguments_truncated
      
        # 
        # Corresponds to the JSON property `binary`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2File]
        attr_accessor :binary
      
        # 
        # Corresponds to the JSON property `envVariables`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2EnvironmentVariable>]
        attr_accessor :env_variables
      
        # 
        # Corresponds to the JSON property `envVariablesTruncated`
        # @return [Boolean]
        attr_accessor :env_variables_truncated
        alias_method :env_variables_truncated?, :env_variables_truncated
      
        # 
        # Corresponds to the JSON property `libraries`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2File>]
        attr_accessor :libraries
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `parentPid`
        # @return [Fixnum]
        attr_accessor :parent_pid
      
        # 
        # Corresponds to the JSON property `pid`
        # @return [Fixnum]
        attr_accessor :pid
      
        # 
        # Corresponds to the JSON property `script`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2File]
        attr_accessor :script
      
        # 
        # Corresponds to the JSON property `userId`
        # @return [Fixnum]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @args = args[:args] if args.key?(:args)
          @arguments_truncated = args[:arguments_truncated] if args.key?(:arguments_truncated)
          @binary = args[:binary] if args.key?(:binary)
          @env_variables = args[:env_variables] if args.key?(:env_variables)
          @env_variables_truncated = args[:env_variables_truncated] if args.key?(:env_variables_truncated)
          @libraries = args[:libraries] if args.key?(:libraries)
          @name = args[:name] if args.key?(:name)
          @parent_pid = args[:parent_pid] if args.key?(:parent_pid)
          @pid = args[:pid] if args.key?(:pid)
          @script = args[:script] if args.key?(:script)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2ProcessSignature
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `memoryHashSignature`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2MemoryHashSignature]
        attr_accessor :memory_hash_signature
      
        # 
        # Corresponds to the JSON property `signatureType`
        # @return [String]
        attr_accessor :signature_type
      
        # 
        # Corresponds to the JSON property `yaraRuleSignature`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2YaraRuleSignature]
        attr_accessor :yara_rule_signature
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @memory_hash_signature = args[:memory_hash_signature] if args.key?(:memory_hash_signature)
          @signature_type = args[:signature_type] if args.key?(:signature_type)
          @yara_rule_signature = args[:yara_rule_signature] if args.key?(:yara_rule_signature)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Reference
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source = args[:source] if args.key?(:source)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Requests
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `longTermAllowed`
        # @return [Fixnum]
        attr_accessor :long_term_allowed
      
        # 
        # Corresponds to the JSON property `longTermDenied`
        # @return [Fixnum]
        attr_accessor :long_term_denied
      
        # 
        # Corresponds to the JSON property `ratio`
        # @return [Float]
        attr_accessor :ratio
      
        # 
        # Corresponds to the JSON property `shortTermAllowed`
        # @return [Fixnum]
        attr_accessor :short_term_allowed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @long_term_allowed = args[:long_term_allowed] if args.key?(:long_term_allowed)
          @long_term_denied = args[:long_term_denied] if args.key?(:long_term_denied)
          @ratio = args[:ratio] if args.key?(:ratio)
          @short_term_allowed = args[:short_term_allowed] if args.key?(:short_term_allowed)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Resource
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `adcApplication`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2AdcApplication]
        attr_accessor :adc_application
      
        # 
        # Corresponds to the JSON property `adcApplicationTemplate`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2AdcApplicationTemplateRevision]
        attr_accessor :adc_application_template
      
        # 
        # Corresponds to the JSON property `adcSharedTemplate`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2AdcSharedTemplateRevision]
        attr_accessor :adc_shared_template
      
        # 
        # Corresponds to the JSON property `application`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2ResourceApplication]
        attr_accessor :application
      
        # 
        # Corresponds to the JSON property `awsMetadata`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2AwsMetadata]
        attr_accessor :aws_metadata
      
        # 
        # Corresponds to the JSON property `azureMetadata`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2AzureMetadata]
        attr_accessor :azure_metadata
      
        # 
        # Corresponds to the JSON property `cloudProvider`
        # @return [String]
        attr_accessor :cloud_provider
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `gcpMetadata`
        # @return [Google::Apis::SecuritycenterV1beta1::GcpMetadata]
        attr_accessor :gcp_metadata
      
        # 
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `resourcePath`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2ResourcePath]
        attr_accessor :resource_path
      
        # 
        # Corresponds to the JSON property `resourcePathString`
        # @return [String]
        attr_accessor :resource_path_string
      
        # 
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adc_application = args[:adc_application] if args.key?(:adc_application)
          @adc_application_template = args[:adc_application_template] if args.key?(:adc_application_template)
          @adc_shared_template = args[:adc_shared_template] if args.key?(:adc_shared_template)
          @application = args[:application] if args.key?(:application)
          @aws_metadata = args[:aws_metadata] if args.key?(:aws_metadata)
          @azure_metadata = args[:azure_metadata] if args.key?(:azure_metadata)
          @cloud_provider = args[:cloud_provider] if args.key?(:cloud_provider)
          @display_name = args[:display_name] if args.key?(:display_name)
          @gcp_metadata = args[:gcp_metadata] if args.key?(:gcp_metadata)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @resource_path = args[:resource_path] if args.key?(:resource_path)
          @resource_path_string = args[:resource_path_string] if args.key?(:resource_path_string)
          @service = args[:service] if args.key?(:service)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2ResourceApplication
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `attributes`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2ResourceApplicationAttributes]
        attr_accessor :attributes
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2ResourceApplicationAttributes
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `businessOwners`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2ResourceApplicationAttributesContactInfo>]
        attr_accessor :business_owners
      
        # 
        # Corresponds to the JSON property `criticality`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2ResourceApplicationAttributesCriticality]
        attr_accessor :criticality
      
        # 
        # Corresponds to the JSON property `developerOwners`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2ResourceApplicationAttributesContactInfo>]
        attr_accessor :developer_owners
      
        # 
        # Corresponds to the JSON property `environment`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2ResourceApplicationAttributesEnvironment]
        attr_accessor :environment
      
        # 
        # Corresponds to the JSON property `operatorOwners`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2ResourceApplicationAttributesContactInfo>]
        attr_accessor :operator_owners
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @business_owners = args[:business_owners] if args.key?(:business_owners)
          @criticality = args[:criticality] if args.key?(:criticality)
          @developer_owners = args[:developer_owners] if args.key?(:developer_owners)
          @environment = args[:environment] if args.key?(:environment)
          @operator_owners = args[:operator_owners] if args.key?(:operator_owners)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2ResourceApplicationAttributesContactInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2ResourceApplicationAttributesCriticality
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2ResourceApplicationAttributesEnvironment
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2ResourcePath
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nodes`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2ResourcePathNode>]
        attr_accessor :nodes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @nodes = args[:nodes] if args.key?(:nodes)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2ResourcePathNode
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `nodeType`
        # @return [String]
        attr_accessor :node_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @id = args[:id] if args.key?(:id)
          @node_type = args[:node_type] if args.key?(:node_type)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2ResourceValueConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `cloudProvider`
        # @return [String]
        attr_accessor :cloud_provider
      
        # 
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `resourceLabelsSelector`
        # @return [Hash<String,String>]
        attr_accessor :resource_labels_selector
      
        # 
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        # 
        # Corresponds to the JSON property `resourceValue`
        # @return [String]
        attr_accessor :resource_value
      
        # 
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # 
        # Corresponds to the JSON property `sensitiveDataProtectionMapping`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2SensitiveDataProtectionMapping]
        attr_accessor :sensitive_data_protection_mapping
      
        # 
        # Corresponds to the JSON property `tagValues`
        # @return [Array<String>]
        attr_accessor :tag_values
      
        # 
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_provider = args[:cloud_provider] if args.key?(:cloud_provider)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @resource_labels_selector = args[:resource_labels_selector] if args.key?(:resource_labels_selector)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
          @resource_value = args[:resource_value] if args.key?(:resource_value)
          @scope = args[:scope] if args.key?(:scope)
          @sensitive_data_protection_mapping = args[:sensitive_data_protection_mapping] if args.key?(:sensitive_data_protection_mapping)
          @tag_values = args[:tag_values] if args.key?(:tag_values)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Role
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `ns`
        # @return [String]
        attr_accessor :ns
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @ns = args[:ns] if args.key?(:ns)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Secret
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `environmentVariable`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2SecretEnvironmentVariable]
        attr_accessor :environment_variable
      
        # 
        # Corresponds to the JSON property `filePath`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2SecretFilePath]
        attr_accessor :file_path
      
        # 
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2SecretStatus]
        attr_accessor :status
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @environment_variable = args[:environment_variable] if args.key?(:environment_variable)
          @file_path = args[:file_path] if args.key?(:file_path)
          @status = args[:status] if args.key?(:status)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2SecretEnvironmentVariable
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2SecretFilePath
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2SecretStatus
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `lastUpdatedTime`
        # @return [String]
        attr_accessor :last_updated_time
      
        # 
        # Corresponds to the JSON property `validity`
        # @return [String]
        attr_accessor :validity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_updated_time = args[:last_updated_time] if args.key?(:last_updated_time)
          @validity = args[:validity] if args.key?(:validity)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2SecurityBulletin
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `bulletinId`
        # @return [String]
        attr_accessor :bulletin_id
      
        # 
        # Corresponds to the JSON property `submissionTime`
        # @return [String]
        attr_accessor :submission_time
      
        # 
        # Corresponds to the JSON property `suggestedUpgradeVersion`
        # @return [String]
        attr_accessor :suggested_upgrade_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bulletin_id = args[:bulletin_id] if args.key?(:bulletin_id)
          @submission_time = args[:submission_time] if args.key?(:submission_time)
          @suggested_upgrade_version = args[:suggested_upgrade_version] if args.key?(:suggested_upgrade_version)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2SecurityMarks
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `canonicalName`
        # @return [String]
        attr_accessor :canonical_name
      
        # 
        # Corresponds to the JSON property `marks`
        # @return [Hash<String,String>]
        attr_accessor :marks
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @canonical_name = args[:canonical_name] if args.key?(:canonical_name)
          @marks = args[:marks] if args.key?(:marks)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2SecurityPolicy
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `preview`
        # @return [Boolean]
        attr_accessor :preview
        alias_method :preview?, :preview
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @preview = args[:preview] if args.key?(:preview)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2SecurityPosture
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `changedPolicy`
        # @return [String]
        attr_accessor :changed_policy
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `policy`
        # @return [String]
        attr_accessor :policy
      
        # 
        # Corresponds to the JSON property `policyDriftDetails`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2PolicyDriftDetails>]
        attr_accessor :policy_drift_details
      
        # 
        # Corresponds to the JSON property `policySet`
        # @return [String]
        attr_accessor :policy_set
      
        # 
        # Corresponds to the JSON property `postureDeployment`
        # @return [String]
        attr_accessor :posture_deployment
      
        # 
        # Corresponds to the JSON property `postureDeploymentResource`
        # @return [String]
        attr_accessor :posture_deployment_resource
      
        # 
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @changed_policy = args[:changed_policy] if args.key?(:changed_policy)
          @name = args[:name] if args.key?(:name)
          @policy = args[:policy] if args.key?(:policy)
          @policy_drift_details = args[:policy_drift_details] if args.key?(:policy_drift_details)
          @policy_set = args[:policy_set] if args.key?(:policy_set)
          @posture_deployment = args[:posture_deployment] if args.key?(:posture_deployment)
          @posture_deployment_resource = args[:posture_deployment_resource] if args.key?(:posture_deployment_resource)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2SensitiveDataProtectionMapping
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `highSensitivityMapping`
        # @return [String]
        attr_accessor :high_sensitivity_mapping
      
        # 
        # Corresponds to the JSON property `mediumSensitivityMapping`
        # @return [String]
        attr_accessor :medium_sensitivity_mapping
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @high_sensitivity_mapping = args[:high_sensitivity_mapping] if args.key?(:high_sensitivity_mapping)
          @medium_sensitivity_mapping = args[:medium_sensitivity_mapping] if args.key?(:medium_sensitivity_mapping)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2SensitivityScore
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `score`
        # @return [String]
        attr_accessor :score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @score = args[:score] if args.key?(:score)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2ServiceAccountDelegationInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `principalEmail`
        # @return [String]
        attr_accessor :principal_email
      
        # 
        # Corresponds to the JSON property `principalSubject`
        # @return [String]
        attr_accessor :principal_subject
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @principal_email = args[:principal_email] if args.key?(:principal_email)
          @principal_subject = args[:principal_subject] if args.key?(:principal_subject)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2StaticMute
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `applyTime`
        # @return [String]
        attr_accessor :apply_time
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apply_time = args[:apply_time] if args.key?(:apply_time)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Subject
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `ns`
        # @return [String]
        attr_accessor :ns
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @ns = args[:ns] if args.key?(:ns)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2TicketInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `assignee`
        # @return [String]
        attr_accessor :assignee
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # 
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assignee = args[:assignee] if args.key?(:assignee)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @status = args[:status] if args.key?(:status)
          @update_time = args[:update_time] if args.key?(:update_time)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2ToxicCombination
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `attackExposureScore`
        # @return [Float]
        attr_accessor :attack_exposure_score
      
        # 
        # Corresponds to the JSON property `relatedFindings`
        # @return [Array<String>]
        attr_accessor :related_findings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attack_exposure_score = args[:attack_exposure_score] if args.key?(:attack_exposure_score)
          @related_findings = args[:related_findings] if args.key?(:related_findings)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2VertexAi
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `datasets`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Dataset>]
        attr_accessor :datasets
      
        # 
        # Corresponds to the JSON property `pipelines`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Pipeline>]
        attr_accessor :pipelines
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @datasets = args[:datasets] if args.key?(:datasets)
          @pipelines = args[:pipelines] if args.key?(:pipelines)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2Vulnerability
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `cve`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Cve]
        attr_accessor :cve
      
        # 
        # Corresponds to the JSON property `cwes`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Cwe>]
        attr_accessor :cwes
      
        # 
        # Corresponds to the JSON property `fixedPackage`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Package]
        attr_accessor :fixed_package
      
        # 
        # Corresponds to the JSON property `offendingPackage`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2Package]
        attr_accessor :offending_package
      
        # 
        # Corresponds to the JSON property `providerRiskScore`
        # @return [Fixnum]
        attr_accessor :provider_risk_score
      
        # 
        # Corresponds to the JSON property `reachable`
        # @return [Boolean]
        attr_accessor :reachable
        alias_method :reachable?, :reachable
      
        # 
        # Corresponds to the JSON property `securityBulletin`
        # @return [Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV2SecurityBulletin]
        attr_accessor :security_bulletin
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cve = args[:cve] if args.key?(:cve)
          @cwes = args[:cwes] if args.key?(:cwes)
          @fixed_package = args[:fixed_package] if args.key?(:fixed_package)
          @offending_package = args[:offending_package] if args.key?(:offending_package)
          @provider_risk_score = args[:provider_risk_score] if args.key?(:provider_risk_score)
          @reachable = args[:reachable] if args.key?(:reachable)
          @security_bulletin = args[:security_bulletin] if args.key?(:security_bulletin)
        end
      end
      
      # 
      class GoogleCloudSecuritycenterV2YaraRuleSignature
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `yaraRule`
        # @return [String]
        attr_accessor :yara_rule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @yara_rule = args[:yara_rule] if args.key?(:yara_rule)
        end
      end
      
      # 
      class GroupAssetsRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `compareDuration`
        # @return [String]
        attr_accessor :compare_duration
      
        # 
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # 
        # Corresponds to the JSON property `groupBy`
        # @return [String]
        attr_accessor :group_by
      
        # 
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # 
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # 
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compare_duration = args[:compare_duration] if args.key?(:compare_duration)
          @filter = args[:filter] if args.key?(:filter)
          @group_by = args[:group_by] if args.key?(:group_by)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @read_time = args[:read_time] if args.key?(:read_time)
        end
      end
      
      # 
      class GroupAssetsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `groupByResults`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GroupResult>]
        attr_accessor :group_by_results
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_by_results = args[:group_by_results] if args.key?(:group_by_results)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @read_time = args[:read_time] if args.key?(:read_time)
        end
      end
      
      # 
      class GroupFindingsRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # 
        # Corresponds to the JSON property `groupBy`
        # @return [String]
        attr_accessor :group_by
      
        # 
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # 
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # 
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @group_by = args[:group_by] if args.key?(:group_by)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @read_time = args[:read_time] if args.key?(:read_time)
        end
      end
      
      # 
      class GroupFindingsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `groupByResults`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GroupResult>]
        attr_accessor :group_by_results
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_by_results = args[:group_by_results] if args.key?(:group_by_results)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @read_time = args[:read_time] if args.key?(:read_time)
        end
      end
      
      # 
      class GroupMembership
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `groupId`
        # @return [String]
        attr_accessor :group_id
      
        # 
        # Corresponds to the JSON property `groupType`
        # @return [String]
        attr_accessor :group_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_id = args[:group_id] if args.key?(:group_id)
          @group_type = args[:group_type] if args.key?(:group_type)
        end
      end
      
      # 
      class GroupResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # 
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,Object>]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # 
      class HttpResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # 
        # Corresponds to the JSON property `statusCode`
        # @return [String]
        attr_accessor :status_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @path = args[:path] if args.key?(:path)
          @status_code = args[:status_code] if args.key?(:status_code)
        end
      end
      
      # 
      class IamBinding
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # 
        # Corresponds to the JSON property `member`
        # @return [String]
        attr_accessor :member
      
        # 
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @member = args[:member] if args.key?(:member)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # 
      class Indicator
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `domains`
        # @return [Array<String>]
        attr_accessor :domains
      
        # 
        # Corresponds to the JSON property `ipAddresses`
        # @return [Array<String>]
        attr_accessor :ip_addresses
      
        # 
        # Corresponds to the JSON property `signatures`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::ProcessSignature>]
        attr_accessor :signatures
      
        # 
        # Corresponds to the JSON property `uris`
        # @return [Array<String>]
        attr_accessor :uris
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domains = args[:domains] if args.key?(:domains)
          @ip_addresses = args[:ip_addresses] if args.key?(:ip_addresses)
          @signatures = args[:signatures] if args.key?(:signatures)
          @uris = args[:uris] if args.key?(:uris)
        end
      end
      
      # 
      class InfoType
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `sensitivityScore`
        # @return [Google::Apis::SecuritycenterV1beta1::SensitivityScore]
        attr_accessor :sensitivity_score
      
        # 
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @sensitivity_score = args[:sensitivity_score] if args.key?(:sensitivity_score)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # 
      class InvocationReference
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `invocationId`
        # @return [String]
        attr_accessor :invocation_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @invocation_id = args[:invocation_id] if args.key?(:invocation_id)
        end
      end
      
      # 
      class IpRule
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `portRanges`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::PortRange>]
        attr_accessor :port_ranges
      
        # 
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @port_ranges = args[:port_ranges] if args.key?(:port_ranges)
          @protocol = args[:protocol] if args.key?(:protocol)
        end
      end
      
      # 
      class IpRules
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `allowed`
        # @return [Google::Apis::SecuritycenterV1beta1::Allowed]
        attr_accessor :allowed
      
        # 
        # Corresponds to the JSON property `denied`
        # @return [Google::Apis::SecuritycenterV1beta1::Denied]
        attr_accessor :denied
      
        # 
        # Corresponds to the JSON property `destinationIpRanges`
        # @return [Array<String>]
        attr_accessor :destination_ip_ranges
      
        # 
        # Corresponds to the JSON property `direction`
        # @return [String]
        attr_accessor :direction
      
        # 
        # Corresponds to the JSON property `exposedServices`
        # @return [Array<String>]
        attr_accessor :exposed_services
      
        # 
        # Corresponds to the JSON property `sourceIpRanges`
        # @return [Array<String>]
        attr_accessor :source_ip_ranges
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed = args[:allowed] if args.key?(:allowed)
          @denied = args[:denied] if args.key?(:denied)
          @destination_ip_ranges = args[:destination_ip_ranges] if args.key?(:destination_ip_ranges)
          @direction = args[:direction] if args.key?(:direction)
          @exposed_services = args[:exposed_services] if args.key?(:exposed_services)
          @source_ip_ranges = args[:source_ip_ranges] if args.key?(:source_ip_ranges)
        end
      end
      
      # 
      class Job
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `errorCode`
        # @return [Fixnum]
        attr_accessor :error_code
      
        # 
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_code = args[:error_code] if args.key?(:error_code)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # 
      class KernelRootkit
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `unexpectedCodeModification`
        # @return [Boolean]
        attr_accessor :unexpected_code_modification
        alias_method :unexpected_code_modification?, :unexpected_code_modification
      
        # 
        # Corresponds to the JSON property `unexpectedFtraceHandler`
        # @return [Boolean]
        attr_accessor :unexpected_ftrace_handler
        alias_method :unexpected_ftrace_handler?, :unexpected_ftrace_handler
      
        # 
        # Corresponds to the JSON property `unexpectedInterruptHandler`
        # @return [Boolean]
        attr_accessor :unexpected_interrupt_handler
        alias_method :unexpected_interrupt_handler?, :unexpected_interrupt_handler
      
        # 
        # Corresponds to the JSON property `unexpectedKernelCodePages`
        # @return [Boolean]
        attr_accessor :unexpected_kernel_code_pages
        alias_method :unexpected_kernel_code_pages?, :unexpected_kernel_code_pages
      
        # 
        # Corresponds to the JSON property `unexpectedKprobeHandler`
        # @return [Boolean]
        attr_accessor :unexpected_kprobe_handler
        alias_method :unexpected_kprobe_handler?, :unexpected_kprobe_handler
      
        # 
        # Corresponds to the JSON property `unexpectedProcessesInRunqueue`
        # @return [Boolean]
        attr_accessor :unexpected_processes_in_runqueue
        alias_method :unexpected_processes_in_runqueue?, :unexpected_processes_in_runqueue
      
        # 
        # Corresponds to the JSON property `unexpectedReadOnlyDataModification`
        # @return [Boolean]
        attr_accessor :unexpected_read_only_data_modification
        alias_method :unexpected_read_only_data_modification?, :unexpected_read_only_data_modification
      
        # 
        # Corresponds to the JSON property `unexpectedSystemCallHandler`
        # @return [Boolean]
        attr_accessor :unexpected_system_call_handler
        alias_method :unexpected_system_call_handler?, :unexpected_system_call_handler
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @unexpected_code_modification = args[:unexpected_code_modification] if args.key?(:unexpected_code_modification)
          @unexpected_ftrace_handler = args[:unexpected_ftrace_handler] if args.key?(:unexpected_ftrace_handler)
          @unexpected_interrupt_handler = args[:unexpected_interrupt_handler] if args.key?(:unexpected_interrupt_handler)
          @unexpected_kernel_code_pages = args[:unexpected_kernel_code_pages] if args.key?(:unexpected_kernel_code_pages)
          @unexpected_kprobe_handler = args[:unexpected_kprobe_handler] if args.key?(:unexpected_kprobe_handler)
          @unexpected_processes_in_runqueue = args[:unexpected_processes_in_runqueue] if args.key?(:unexpected_processes_in_runqueue)
          @unexpected_read_only_data_modification = args[:unexpected_read_only_data_modification] if args.key?(:unexpected_read_only_data_modification)
          @unexpected_system_call_handler = args[:unexpected_system_call_handler] if args.key?(:unexpected_system_call_handler)
        end
      end
      
      # 
      class Kubernetes
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `accessReviews`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::AccessReview>]
        attr_accessor :access_reviews
      
        # 
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1Binding>]
        attr_accessor :bindings
      
        # 
        # Corresponds to the JSON property `nodePools`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::NodePool>]
        attr_accessor :node_pools
      
        # 
        # Corresponds to the JSON property `nodes`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Node>]
        attr_accessor :nodes
      
        # 
        # Corresponds to the JSON property `objects`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Object>]
        attr_accessor :objects
      
        # 
        # Corresponds to the JSON property `pods`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Pod>]
        attr_accessor :pods
      
        # 
        # Corresponds to the JSON property `roles`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Role>]
        attr_accessor :roles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_reviews = args[:access_reviews] if args.key?(:access_reviews)
          @bindings = args[:bindings] if args.key?(:bindings)
          @node_pools = args[:node_pools] if args.key?(:node_pools)
          @nodes = args[:nodes] if args.key?(:nodes)
          @objects = args[:objects] if args.key?(:objects)
          @pods = args[:pods] if args.key?(:pods)
          @roles = args[:roles] if args.key?(:roles)
        end
      end
      
      # 
      class Label
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class ListAssetsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `listAssetsResults`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::ListAssetsResult>]
        attr_accessor :list_assets_results
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        # 
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @list_assets_results = args[:list_assets_results] if args.key?(:list_assets_results)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @read_time = args[:read_time] if args.key?(:read_time)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # 
      class ListAssetsResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `asset`
        # @return [Google::Apis::SecuritycenterV1beta1::Asset]
        attr_accessor :asset
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset = args[:asset] if args.key?(:asset)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # 
      class ListFindingsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `findings`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::GoogleCloudSecuritycenterV1beta1Finding>]
        attr_accessor :findings
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        # 
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @findings = args[:findings] if args.key?(:findings)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @read_time = args[:read_time] if args.key?(:read_time)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # 
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Operation>]
        attr_accessor :operations
      
        # 
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # 
      class ListSourcesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `sources`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Source>]
        attr_accessor :sources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @sources = args[:sources] if args.key?(:sources)
        end
      end
      
      # 
      class LoadBalancer
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class LogEntry
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `cloudLoggingEntry`
        # @return [Google::Apis::SecuritycenterV1beta1::CloudLoggingEntry]
        attr_accessor :cloud_logging_entry
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_logging_entry = args[:cloud_logging_entry] if args.key?(:cloud_logging_entry)
        end
      end
      
      # 
      class MemoryHashSignature
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `binaryFamily`
        # @return [String]
        attr_accessor :binary_family
      
        # 
        # Corresponds to the JSON property `detections`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Detection>]
        attr_accessor :detections
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @binary_family = args[:binary_family] if args.key?(:binary_family)
          @detections = args[:detections] if args.key?(:detections)
        end
      end
      
      # 
      class MitreAttack
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `additionalTactics`
        # @return [Array<String>]
        attr_accessor :additional_tactics
      
        # 
        # Corresponds to the JSON property `additionalTechniques`
        # @return [Array<String>]
        attr_accessor :additional_techniques
      
        # 
        # Corresponds to the JSON property `primaryTactic`
        # @return [String]
        attr_accessor :primary_tactic
      
        # 
        # Corresponds to the JSON property `primaryTechniques`
        # @return [Array<String>]
        attr_accessor :primary_techniques
      
        # 
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_tactics = args[:additional_tactics] if args.key?(:additional_tactics)
          @additional_techniques = args[:additional_techniques] if args.key?(:additional_techniques)
          @primary_tactic = args[:primary_tactic] if args.key?(:primary_tactic)
          @primary_techniques = args[:primary_techniques] if args.key?(:primary_techniques)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # 
      class MuteInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dynamicMuteRecords`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::DynamicMuteRecord>]
        attr_accessor :dynamic_mute_records
      
        # 
        # Corresponds to the JSON property `staticMute`
        # @return [Google::Apis::SecuritycenterV1beta1::StaticMute]
        attr_accessor :static_mute
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dynamic_mute_records = args[:dynamic_mute_records] if args.key?(:dynamic_mute_records)
          @static_mute = args[:static_mute] if args.key?(:static_mute)
        end
      end
      
      # 
      class Network
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class Node
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class NodePool
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `nodes`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Node>]
        attr_accessor :nodes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @nodes = args[:nodes] if args.key?(:nodes)
        end
      end
      
      # 
      class Notebook
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `lastAuthor`
        # @return [String]
        attr_accessor :last_author
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `notebookUpdateTime`
        # @return [String]
        attr_accessor :notebook_update_time
      
        # 
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_author = args[:last_author] if args.key?(:last_author)
          @name = args[:name] if args.key?(:name)
          @notebook_update_time = args[:notebook_update_time] if args.key?(:notebook_update_time)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # 
      class Object
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `containers`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Container>]
        attr_accessor :containers
      
        # 
        # Corresponds to the JSON property `group`
        # @return [String]
        attr_accessor :group
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `ns`
        # @return [String]
        attr_accessor :ns
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @containers = args[:containers] if args.key?(:containers)
          @group = args[:group] if args.key?(:group)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @ns = args[:ns] if args.key?(:ns)
        end
      end
      
      # 
      class Operation
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # 
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::SecuritycenterV1beta1::Status]
        attr_accessor :error
      
        # 
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
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
      class OrgPolicy
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class OrganizationSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `assetDiscoveryConfig`
        # @return [Google::Apis::SecuritycenterV1beta1::AssetDiscoveryConfig]
        attr_accessor :asset_discovery_config
      
        # 
        # Corresponds to the JSON property `enableAssetDiscovery`
        # @return [Boolean]
        attr_accessor :enable_asset_discovery
        alias_method :enable_asset_discovery?, :enable_asset_discovery
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset_discovery_config = args[:asset_discovery_config] if args.key?(:asset_discovery_config)
          @enable_asset_discovery = args[:enable_asset_discovery] if args.key?(:enable_asset_discovery)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class Package
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `cpeUri`
        # @return [String]
        attr_accessor :cpe_uri
      
        # 
        # Corresponds to the JSON property `packageName`
        # @return [String]
        attr_accessor :package_name
      
        # 
        # Corresponds to the JSON property `packageType`
        # @return [String]
        attr_accessor :package_type
      
        # 
        # Corresponds to the JSON property `packageVersion`
        # @return [String]
        attr_accessor :package_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpe_uri = args[:cpe_uri] if args.key?(:cpe_uri)
          @package_name = args[:package_name] if args.key?(:package_name)
          @package_type = args[:package_type] if args.key?(:package_type)
          @package_version = args[:package_version] if args.key?(:package_version)
        end
      end
      
      # 
      class Pipeline
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class Pod
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `containers`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Container>]
        attr_accessor :containers
      
        # 
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Label>]
        attr_accessor :labels
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `ns`
        # @return [String]
        attr_accessor :ns
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @containers = args[:containers] if args.key?(:containers)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @ns = args[:ns] if args.key?(:ns)
        end
      end
      
      # 
      class Policy
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::AuditConfig>]
        attr_accessor :audit_configs
      
        # 
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Binding>]
        attr_accessor :bindings
      
        # 
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # 
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_configs = args[:audit_configs] if args.key?(:audit_configs)
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # 
      class PolicyDriftDetails
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `detectedValue`
        # @return [String]
        attr_accessor :detected_value
      
        # 
        # Corresponds to the JSON property `expectedValue`
        # @return [String]
        attr_accessor :expected_value
      
        # 
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_value = args[:detected_value] if args.key?(:detected_value)
          @expected_value = args[:expected_value] if args.key?(:expected_value)
          @field = args[:field] if args.key?(:field)
        end
      end
      
      # 
      class PolicyViolationSummary
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conformantResourcesCount`
        # @return [Fixnum]
        attr_accessor :conformant_resources_count
      
        # 
        # Corresponds to the JSON property `evaluationErrorsCount`
        # @return [Fixnum]
        attr_accessor :evaluation_errors_count
      
        # 
        # Corresponds to the JSON property `outOfScopeResourcesCount`
        # @return [Fixnum]
        attr_accessor :out_of_scope_resources_count
      
        # 
        # Corresponds to the JSON property `policyViolationsCount`
        # @return [Fixnum]
        attr_accessor :policy_violations_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conformant_resources_count = args[:conformant_resources_count] if args.key?(:conformant_resources_count)
          @evaluation_errors_count = args[:evaluation_errors_count] if args.key?(:evaluation_errors_count)
          @out_of_scope_resources_count = args[:out_of_scope_resources_count] if args.key?(:out_of_scope_resources_count)
          @policy_violations_count = args[:policy_violations_count] if args.key?(:policy_violations_count)
        end
      end
      
      # 
      class PortRange
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `max`
        # @return [Fixnum]
        attr_accessor :max
      
        # 
        # Corresponds to the JSON property `min`
        # @return [Fixnum]
        attr_accessor :min
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max = args[:max] if args.key?(:max)
          @min = args[:min] if args.key?(:min)
        end
      end
      
      # 
      class Process
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `args`
        # @return [Array<String>]
        attr_accessor :args
      
        # 
        # Corresponds to the JSON property `argumentsTruncated`
        # @return [Boolean]
        attr_accessor :arguments_truncated
        alias_method :arguments_truncated?, :arguments_truncated
      
        # 
        # Corresponds to the JSON property `binary`
        # @return [Google::Apis::SecuritycenterV1beta1::File]
        attr_accessor :binary
      
        # 
        # Corresponds to the JSON property `envVariables`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::EnvironmentVariable>]
        attr_accessor :env_variables
      
        # 
        # Corresponds to the JSON property `envVariablesTruncated`
        # @return [Boolean]
        attr_accessor :env_variables_truncated
        alias_method :env_variables_truncated?, :env_variables_truncated
      
        # 
        # Corresponds to the JSON property `libraries`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::File>]
        attr_accessor :libraries
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `parentPid`
        # @return [Fixnum]
        attr_accessor :parent_pid
      
        # 
        # Corresponds to the JSON property `pid`
        # @return [Fixnum]
        attr_accessor :pid
      
        # 
        # Corresponds to the JSON property `script`
        # @return [Google::Apis::SecuritycenterV1beta1::File]
        attr_accessor :script
      
        # 
        # Corresponds to the JSON property `userId`
        # @return [Fixnum]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @args = args[:args] if args.key?(:args)
          @arguments_truncated = args[:arguments_truncated] if args.key?(:arguments_truncated)
          @binary = args[:binary] if args.key?(:binary)
          @env_variables = args[:env_variables] if args.key?(:env_variables)
          @env_variables_truncated = args[:env_variables_truncated] if args.key?(:env_variables_truncated)
          @libraries = args[:libraries] if args.key?(:libraries)
          @name = args[:name] if args.key?(:name)
          @parent_pid = args[:parent_pid] if args.key?(:parent_pid)
          @pid = args[:pid] if args.key?(:pid)
          @script = args[:script] if args.key?(:script)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
      
      # 
      class ProcessSignature
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `memoryHashSignature`
        # @return [Google::Apis::SecuritycenterV1beta1::MemoryHashSignature]
        attr_accessor :memory_hash_signature
      
        # 
        # Corresponds to the JSON property `signatureType`
        # @return [String]
        attr_accessor :signature_type
      
        # 
        # Corresponds to the JSON property `yaraRuleSignature`
        # @return [Google::Apis::SecuritycenterV1beta1::YaraRuleSignature]
        attr_accessor :yara_rule_signature
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @memory_hash_signature = args[:memory_hash_signature] if args.key?(:memory_hash_signature)
          @signature_type = args[:signature_type] if args.key?(:signature_type)
          @yara_rule_signature = args[:yara_rule_signature] if args.key?(:yara_rule_signature)
        end
      end
      
      # 
      class Reference
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source = args[:source] if args.key?(:source)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # 
      class Requests
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `longTermAllowed`
        # @return [Fixnum]
        attr_accessor :long_term_allowed
      
        # 
        # Corresponds to the JSON property `longTermDenied`
        # @return [Fixnum]
        attr_accessor :long_term_denied
      
        # 
        # Corresponds to the JSON property `ratio`
        # @return [Float]
        attr_accessor :ratio
      
        # 
        # Corresponds to the JSON property `shortTermAllowed`
        # @return [Fixnum]
        attr_accessor :short_term_allowed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @long_term_allowed = args[:long_term_allowed] if args.key?(:long_term_allowed)
          @long_term_denied = args[:long_term_denied] if args.key?(:long_term_denied)
          @ratio = args[:ratio] if args.key?(:ratio)
          @short_term_allowed = args[:short_term_allowed] if args.key?(:short_term_allowed)
        end
      end
      
      # 
      class ResourcePath
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nodes`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::ResourcePathNode>]
        attr_accessor :nodes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @nodes = args[:nodes] if args.key?(:nodes)
        end
      end
      
      # 
      class ResourcePathNode
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `nodeType`
        # @return [String]
        attr_accessor :node_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @id = args[:id] if args.key?(:id)
          @node_type = args[:node_type] if args.key?(:node_type)
        end
      end
      
      # 
      class Role
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `ns`
        # @return [String]
        attr_accessor :ns
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @ns = args[:ns] if args.key?(:ns)
        end
      end
      
      # 
      class RunAssetDiscoveryRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class Secret
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `environmentVariable`
        # @return [Google::Apis::SecuritycenterV1beta1::SecretEnvironmentVariable]
        attr_accessor :environment_variable
      
        # 
        # Corresponds to the JSON property `filePath`
        # @return [Google::Apis::SecuritycenterV1beta1::SecretFilePath]
        attr_accessor :file_path
      
        # 
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::SecuritycenterV1beta1::SecretStatus]
        attr_accessor :status
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @environment_variable = args[:environment_variable] if args.key?(:environment_variable)
          @file_path = args[:file_path] if args.key?(:file_path)
          @status = args[:status] if args.key?(:status)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class SecretEnvironmentVariable
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
        end
      end
      
      # 
      class SecretFilePath
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # 
      class SecretStatus
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `lastUpdatedTime`
        # @return [String]
        attr_accessor :last_updated_time
      
        # 
        # Corresponds to the JSON property `validity`
        # @return [String]
        attr_accessor :validity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_updated_time = args[:last_updated_time] if args.key?(:last_updated_time)
          @validity = args[:validity] if args.key?(:validity)
        end
      end
      
      # 
      class SecurityBulletin
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `bulletinId`
        # @return [String]
        attr_accessor :bulletin_id
      
        # 
        # Corresponds to the JSON property `submissionTime`
        # @return [String]
        attr_accessor :submission_time
      
        # 
        # Corresponds to the JSON property `suggestedUpgradeVersion`
        # @return [String]
        attr_accessor :suggested_upgrade_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bulletin_id = args[:bulletin_id] if args.key?(:bulletin_id)
          @submission_time = args[:submission_time] if args.key?(:submission_time)
          @suggested_upgrade_version = args[:suggested_upgrade_version] if args.key?(:suggested_upgrade_version)
        end
      end
      
      # 
      class SecurityCenterProperties
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # 
        # Corresponds to the JSON property `resourceOwners`
        # @return [Array<String>]
        attr_accessor :resource_owners
      
        # 
        # Corresponds to the JSON property `resourceParent`
        # @return [String]
        attr_accessor :resource_parent
      
        # 
        # Corresponds to the JSON property `resourceProject`
        # @return [String]
        attr_accessor :resource_project
      
        # 
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @resource_owners = args[:resource_owners] if args.key?(:resource_owners)
          @resource_parent = args[:resource_parent] if args.key?(:resource_parent)
          @resource_project = args[:resource_project] if args.key?(:resource_project)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
        end
      end
      
      # 
      class SecurityMarks
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `canonicalName`
        # @return [String]
        attr_accessor :canonical_name
      
        # 
        # Corresponds to the JSON property `marks`
        # @return [Hash<String,String>]
        attr_accessor :marks
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @canonical_name = args[:canonical_name] if args.key?(:canonical_name)
          @marks = args[:marks] if args.key?(:marks)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class SecurityPolicy
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `preview`
        # @return [Boolean]
        attr_accessor :preview
        alias_method :preview?, :preview
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @preview = args[:preview] if args.key?(:preview)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class SecurityPosture
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `changedPolicy`
        # @return [String]
        attr_accessor :changed_policy
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `policy`
        # @return [String]
        attr_accessor :policy
      
        # 
        # Corresponds to the JSON property `policyDriftDetails`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::PolicyDriftDetails>]
        attr_accessor :policy_drift_details
      
        # 
        # Corresponds to the JSON property `policySet`
        # @return [String]
        attr_accessor :policy_set
      
        # 
        # Corresponds to the JSON property `postureDeployment`
        # @return [String]
        attr_accessor :posture_deployment
      
        # 
        # Corresponds to the JSON property `postureDeploymentResource`
        # @return [String]
        attr_accessor :posture_deployment_resource
      
        # 
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @changed_policy = args[:changed_policy] if args.key?(:changed_policy)
          @name = args[:name] if args.key?(:name)
          @policy = args[:policy] if args.key?(:policy)
          @policy_drift_details = args[:policy_drift_details] if args.key?(:policy_drift_details)
          @policy_set = args[:policy_set] if args.key?(:policy_set)
          @posture_deployment = args[:posture_deployment] if args.key?(:posture_deployment)
          @posture_deployment_resource = args[:posture_deployment_resource] if args.key?(:posture_deployment_resource)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
        end
      end
      
      # 
      class SensitivityScore
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `score`
        # @return [String]
        attr_accessor :score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @score = args[:score] if args.key?(:score)
        end
      end
      
      # 
      class ServiceAccountDelegationInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `principalEmail`
        # @return [String]
        attr_accessor :principal_email
      
        # 
        # Corresponds to the JSON property `principalSubject`
        # @return [String]
        attr_accessor :principal_subject
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @principal_email = args[:principal_email] if args.key?(:principal_email)
          @principal_subject = args[:principal_subject] if args.key?(:principal_subject)
        end
      end
      
      # 
      class SetFindingStateRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # 
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::SecuritycenterV1beta1::Policy]
        attr_accessor :policy
      
        # 
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # 
      class Source
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class StaticMute
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `applyTime`
        # @return [String]
        attr_accessor :apply_time
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apply_time = args[:apply_time] if args.key?(:apply_time)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # 
      class Status
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # 
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # 
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
      
      # 
      class Subject
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `ns`
        # @return [String]
        attr_accessor :ns
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @ns = args[:ns] if args.key?(:ns)
        end
      end
      
      # 
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # 
      class TestIamPermissionsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # 
      class TicketInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `assignee`
        # @return [String]
        attr_accessor :assignee
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # 
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assignee = args[:assignee] if args.key?(:assignee)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @status = args[:status] if args.key?(:status)
          @update_time = args[:update_time] if args.key?(:update_time)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # 
      class ToxicCombination
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `attackExposureScore`
        # @return [Float]
        attr_accessor :attack_exposure_score
      
        # 
        # Corresponds to the JSON property `relatedFindings`
        # @return [Array<String>]
        attr_accessor :related_findings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attack_exposure_score = args[:attack_exposure_score] if args.key?(:attack_exposure_score)
          @related_findings = args[:related_findings] if args.key?(:related_findings)
        end
      end
      
      # 
      class VertexAi
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `datasets`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Dataset>]
        attr_accessor :datasets
      
        # 
        # Corresponds to the JSON property `pipelines`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Pipeline>]
        attr_accessor :pipelines
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @datasets = args[:datasets] if args.key?(:datasets)
          @pipelines = args[:pipelines] if args.key?(:pipelines)
        end
      end
      
      # 
      class Vulnerability
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `cve`
        # @return [Google::Apis::SecuritycenterV1beta1::Cve]
        attr_accessor :cve
      
        # 
        # Corresponds to the JSON property `cwes`
        # @return [Array<Google::Apis::SecuritycenterV1beta1::Cwe>]
        attr_accessor :cwes
      
        # 
        # Corresponds to the JSON property `fixedPackage`
        # @return [Google::Apis::SecuritycenterV1beta1::Package]
        attr_accessor :fixed_package
      
        # 
        # Corresponds to the JSON property `offendingPackage`
        # @return [Google::Apis::SecuritycenterV1beta1::Package]
        attr_accessor :offending_package
      
        # 
        # Corresponds to the JSON property `providerRiskScore`
        # @return [Fixnum]
        attr_accessor :provider_risk_score
      
        # 
        # Corresponds to the JSON property `reachable`
        # @return [Boolean]
        attr_accessor :reachable
        alias_method :reachable?, :reachable
      
        # 
        # Corresponds to the JSON property `securityBulletin`
        # @return [Google::Apis::SecuritycenterV1beta1::SecurityBulletin]
        attr_accessor :security_bulletin
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cve = args[:cve] if args.key?(:cve)
          @cwes = args[:cwes] if args.key?(:cwes)
          @fixed_package = args[:fixed_package] if args.key?(:fixed_package)
          @offending_package = args[:offending_package] if args.key?(:offending_package)
          @provider_risk_score = args[:provider_risk_score] if args.key?(:provider_risk_score)
          @reachable = args[:reachable] if args.key?(:reachable)
          @security_bulletin = args[:security_bulletin] if args.key?(:security_bulletin)
        end
      end
      
      # 
      class VulnerabilityCountBySeverity
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `severityToFindingCount`
        # @return [Hash<String,Fixnum>]
        attr_accessor :severity_to_finding_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @severity_to_finding_count = args[:severity_to_finding_count] if args.key?(:severity_to_finding_count)
        end
      end
      
      # 
      class VulnerabilitySnapshot
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `cloudProvider`
        # @return [String]
        attr_accessor :cloud_provider
      
        # 
        # Corresponds to the JSON property `findingCount`
        # @return [Google::Apis::SecuritycenterV1beta1::VulnerabilityCountBySeverity]
        attr_accessor :finding_count
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `snapshotTime`
        # @return [String]
        attr_accessor :snapshot_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_provider = args[:cloud_provider] if args.key?(:cloud_provider)
          @finding_count = args[:finding_count] if args.key?(:finding_count)
          @name = args[:name] if args.key?(:name)
          @snapshot_time = args[:snapshot_time] if args.key?(:snapshot_time)
        end
      end
      
      # 
      class YaraRuleSignature
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `yaraRule`
        # @return [String]
        attr_accessor :yara_rule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @yara_rule = args[:yara_rule] if args.key?(:yara_rule)
        end
      end
    end
  end
end
