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
    module CloudbillingV1beta
      
      class CacheFillRegions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudCdnEgressWorkload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudCdnWorkload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudInterconnectEgressWorkload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudInterconnectWorkload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudStorageEgressWorkload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudStorageWorkload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Commitment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommitmentCostEstimate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeVmWorkload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CostEstimate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CostEstimationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CostScenario
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreditEstimate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomMachineType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DualRegional
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EstimateCostScenarioForBillingAccountRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EstimateCostScenarioForBillingAccountResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EstimateCostScenarioWithListPriceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EstimateCostScenarioWithListPriceResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EstimationTimePoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuestAccelerator
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterRegionEgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntraRegionEgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MachineType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Money
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MultiRegional
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PersistentDisk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PredefinedMachineType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PremiumTierEgressWorkload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Price
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Rate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RateTier
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Regional
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScenarioConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SegmentCostEstimate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Sku
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SkuCostEstimate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StandardTierEgressWorkload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Usage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UsageRateTimeline
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UsageRateTimelineEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VlanAttachment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmResourceBasedCud
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmToVmEgressWorkload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Workload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkloadCostEstimate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CacheFillRegions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_region, as: 'destinationRegion'
          property :source_region, as: 'sourceRegion'
        end
      end
      
      class CloudCdnEgressWorkload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cache_egress_destination, as: 'cacheEgressDestination'
          property :cache_egress_rate, as: 'cacheEgressRate', class: Google::Apis::CloudbillingV1beta::Usage, decorator: Google::Apis::CloudbillingV1beta::Usage::Representation
      
        end
      end
      
      class CloudCdnWorkload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cache_fill_origin_service, as: 'cacheFillOriginService'
          property :cache_fill_rate, as: 'cacheFillRate', class: Google::Apis::CloudbillingV1beta::Usage, decorator: Google::Apis::CloudbillingV1beta::Usage::Representation
      
          property :cache_fill_regions, as: 'cacheFillRegions', class: Google::Apis::CloudbillingV1beta::CacheFillRegions, decorator: Google::Apis::CloudbillingV1beta::CacheFillRegions::Representation
      
          property :cache_look_up_rate, as: 'cacheLookUpRate', class: Google::Apis::CloudbillingV1beta::Usage, decorator: Google::Apis::CloudbillingV1beta::Usage::Representation
      
        end
      end
      
      class CloudInterconnectEgressWorkload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :egress_rate, as: 'egressRate', class: Google::Apis::CloudbillingV1beta::Usage, decorator: Google::Apis::CloudbillingV1beta::Usage::Representation
      
          property :interconnect_connection_location, as: 'interconnectConnectionLocation'
        end
      end
      
      class CloudInterconnectWorkload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :interconnect_attachments, as: 'interconnectAttachments', class: Google::Apis::CloudbillingV1beta::VlanAttachment, decorator: Google::Apis::CloudbillingV1beta::VlanAttachment::Representation
      
          property :interconnect_type, as: 'interconnectType'
          property :link_type, as: 'linkType'
          property :provisioned_link_count, as: 'provisionedLinkCount', class: Google::Apis::CloudbillingV1beta::Usage, decorator: Google::Apis::CloudbillingV1beta::Usage::Representation
      
        end
      end
      
      class CloudStorageEgressWorkload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_continent, as: 'destinationContinent'
          property :egress_rate, as: 'egressRate', class: Google::Apis::CloudbillingV1beta::Usage, decorator: Google::Apis::CloudbillingV1beta::Usage::Representation
      
          property :source_continent, as: 'sourceContinent'
        end
      end
      
      class CloudStorageWorkload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_retrieval, as: 'dataRetrieval', class: Google::Apis::CloudbillingV1beta::Usage, decorator: Google::Apis::CloudbillingV1beta::Usage::Representation
      
          property :data_stored, as: 'dataStored', class: Google::Apis::CloudbillingV1beta::Usage, decorator: Google::Apis::CloudbillingV1beta::Usage::Representation
      
          property :dual_region, as: 'dualRegion', class: Google::Apis::CloudbillingV1beta::DualRegional, decorator: Google::Apis::CloudbillingV1beta::DualRegional::Representation
      
          property :multi_region, as: 'multiRegion', class: Google::Apis::CloudbillingV1beta::MultiRegional, decorator: Google::Apis::CloudbillingV1beta::MultiRegional::Representation
      
          property :operation_a, as: 'operationA', class: Google::Apis::CloudbillingV1beta::Usage, decorator: Google::Apis::CloudbillingV1beta::Usage::Representation
      
          property :operation_b, as: 'operationB', class: Google::Apis::CloudbillingV1beta::Usage, decorator: Google::Apis::CloudbillingV1beta::Usage::Representation
      
          property :region, as: 'region', class: Google::Apis::CloudbillingV1beta::Regional, decorator: Google::Apis::CloudbillingV1beta::Regional::Representation
      
          property :storage_class, as: 'storageClass'
        end
      end
      
      class Commitment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :vm_resource_based_cud, as: 'vmResourceBasedCud', class: Google::Apis::CloudbillingV1beta::VmResourceBasedCud, decorator: Google::Apis::CloudbillingV1beta::VmResourceBasedCud::Representation
      
        end
      end
      
      class CommitmentCostEstimate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :commitment_total_cost_estimate, as: 'commitmentTotalCostEstimate', class: Google::Apis::CloudbillingV1beta::CostEstimate, decorator: Google::Apis::CloudbillingV1beta::CostEstimate::Representation
      
          property :name, as: 'name'
          collection :sku_cost_estimates, as: 'skuCostEstimates', class: Google::Apis::CloudbillingV1beta::SkuCostEstimate, decorator: Google::Apis::CloudbillingV1beta::SkuCostEstimate::Representation
      
        end
      end
      
      class ComputeVmWorkload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_confidential_compute, as: 'enableConfidentialCompute'
          property :guest_accelerator, as: 'guestAccelerator', class: Google::Apis::CloudbillingV1beta::GuestAccelerator, decorator: Google::Apis::CloudbillingV1beta::GuestAccelerator::Representation
      
          property :instances_running, as: 'instancesRunning', class: Google::Apis::CloudbillingV1beta::Usage, decorator: Google::Apis::CloudbillingV1beta::Usage::Representation
      
          collection :licenses, as: 'licenses'
          property :machine_type, as: 'machineType', class: Google::Apis::CloudbillingV1beta::MachineType, decorator: Google::Apis::CloudbillingV1beta::MachineType::Representation
      
          collection :persistent_disks, as: 'persistentDisks', class: Google::Apis::CloudbillingV1beta::PersistentDisk, decorator: Google::Apis::CloudbillingV1beta::PersistentDisk::Representation
      
          property :preemptible, as: 'preemptible'
          property :region, as: 'region'
        end
      end
      
      class CostEstimate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :credit_estimates, as: 'creditEstimates', class: Google::Apis::CloudbillingV1beta::CreditEstimate, decorator: Google::Apis::CloudbillingV1beta::CreditEstimate::Representation
      
          property :net_cost_estimate, as: 'netCostEstimate', class: Google::Apis::CloudbillingV1beta::Money, decorator: Google::Apis::CloudbillingV1beta::Money::Representation
      
          property :pre_credit_cost_estimate, as: 'preCreditCostEstimate', class: Google::Apis::CloudbillingV1beta::Money, decorator: Google::Apis::CloudbillingV1beta::Money::Representation
      
        end
      end
      
      class CostEstimationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency_code, as: 'currencyCode'
          collection :segment_cost_estimates, as: 'segmentCostEstimates', class: Google::Apis::CloudbillingV1beta::SegmentCostEstimate, decorator: Google::Apis::CloudbillingV1beta::SegmentCostEstimate::Representation
      
          collection :skus, as: 'skus', class: Google::Apis::CloudbillingV1beta::Sku, decorator: Google::Apis::CloudbillingV1beta::Sku::Representation
      
        end
      end
      
      class CostScenario
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :commitments, as: 'commitments', class: Google::Apis::CloudbillingV1beta::Commitment, decorator: Google::Apis::CloudbillingV1beta::Commitment::Representation
      
          property :scenario_config, as: 'scenarioConfig', class: Google::Apis::CloudbillingV1beta::ScenarioConfig, decorator: Google::Apis::CloudbillingV1beta::ScenarioConfig::Representation
      
          collection :workloads, as: 'workloads', class: Google::Apis::CloudbillingV1beta::Workload, decorator: Google::Apis::CloudbillingV1beta::Workload::Representation
      
        end
      end
      
      class CreditEstimate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :credit_amount, as: 'creditAmount', class: Google::Apis::CloudbillingV1beta::Money, decorator: Google::Apis::CloudbillingV1beta::Money::Representation
      
          property :credit_description, as: 'creditDescription'
          property :credit_type, as: 'creditType'
        end
      end
      
      class CustomMachineType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :machine_series, as: 'machineSeries'
          property :memory_size_gb, as: 'memorySizeGb'
          property :virtual_cpu_count, :numeric_string => true, as: 'virtualCpuCount'
        end
      end
      
      class DualRegional
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class EstimateCostScenarioForBillingAccountRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cost_scenario, as: 'costScenario', class: Google::Apis::CloudbillingV1beta::CostScenario, decorator: Google::Apis::CloudbillingV1beta::CostScenario::Representation
      
        end
      end
      
      class EstimateCostScenarioForBillingAccountResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cost_estimation_result, as: 'costEstimationResult', class: Google::Apis::CloudbillingV1beta::CostEstimationResult, decorator: Google::Apis::CloudbillingV1beta::CostEstimationResult::Representation
      
        end
      end
      
      class EstimateCostScenarioWithListPriceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cost_scenario, as: 'costScenario', class: Google::Apis::CloudbillingV1beta::CostScenario, decorator: Google::Apis::CloudbillingV1beta::CostScenario::Representation
      
        end
      end
      
      class EstimateCostScenarioWithListPriceResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cost_estimation_result, as: 'costEstimationResult', class: Google::Apis::CloudbillingV1beta::CostEstimationResult, decorator: Google::Apis::CloudbillingV1beta::CostEstimationResult::Representation
      
        end
      end
      
      class EstimationTimePoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :estimation_time_frame_offset, as: 'estimationTimeFrameOffset'
        end
      end
      
      class GuestAccelerator
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accelerator_count, :numeric_string => true, as: 'acceleratorCount'
          property :accelerator_type, as: 'acceleratorType'
        end
      end
      
      class InterRegionEgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_region, as: 'destinationRegion'
          property :egress_rate, as: 'egressRate', class: Google::Apis::CloudbillingV1beta::Usage, decorator: Google::Apis::CloudbillingV1beta::Usage::Representation
      
          property :source_region, as: 'sourceRegion'
        end
      end
      
      class IntraRegionEgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :egress_rate, as: 'egressRate', class: Google::Apis::CloudbillingV1beta::Usage, decorator: Google::Apis::CloudbillingV1beta::Usage::Representation
      
        end
      end
      
      class MachineType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_machine_type, as: 'customMachineType', class: Google::Apis::CloudbillingV1beta::CustomMachineType, decorator: Google::Apis::CloudbillingV1beta::CustomMachineType::Representation
      
          property :predefined_machine_type, as: 'predefinedMachineType', class: Google::Apis::CloudbillingV1beta::PredefinedMachineType, decorator: Google::Apis::CloudbillingV1beta::PredefinedMachineType::Representation
      
        end
      end
      
      class Money
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency_code, as: 'currencyCode'
          property :nanos, as: 'nanos'
          property :units, :numeric_string => true, as: 'units'
        end
      end
      
      class MultiRegional
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class PersistentDisk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_size, as: 'diskSize', class: Google::Apis::CloudbillingV1beta::Usage, decorator: Google::Apis::CloudbillingV1beta::Usage::Representation
      
          property :disk_type, as: 'diskType'
          property :provisioned_iops, as: 'provisionedIops', class: Google::Apis::CloudbillingV1beta::Usage, decorator: Google::Apis::CloudbillingV1beta::Usage::Representation
      
          property :scope, as: 'scope'
        end
      end
      
      class PredefinedMachineType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :machine_type, as: 'machineType'
        end
      end
      
      class PremiumTierEgressWorkload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_continent, as: 'destinationContinent'
          property :egress_rate, as: 'egressRate', class: Google::Apis::CloudbillingV1beta::Usage, decorator: Google::Apis::CloudbillingV1beta::Usage::Representation
      
          property :source_region, as: 'sourceRegion'
        end
      end
      
      class Price
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :effective_time, as: 'effectiveTime', class: Google::Apis::CloudbillingV1beta::EstimationTimePoint, decorator: Google::Apis::CloudbillingV1beta::EstimationTimePoint::Representation
      
          property :price_type, as: 'priceType'
          property :rate, as: 'rate', class: Google::Apis::CloudbillingV1beta::Rate, decorator: Google::Apis::CloudbillingV1beta::Rate::Representation
      
        end
      end
      
      class Rate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :tiers, as: 'tiers', class: Google::Apis::CloudbillingV1beta::RateTier, decorator: Google::Apis::CloudbillingV1beta::RateTier::Representation
      
          property :unit, as: 'unit'
          property :unit_count, as: 'unitCount'
        end
      end
      
      class RateTier
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :price, as: 'price', class: Google::Apis::CloudbillingV1beta::Money, decorator: Google::Apis::CloudbillingV1beta::Money::Representation
      
          property :start_amount, as: 'startAmount'
        end
      end
      
      class Regional
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class ScenarioConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :estimate_duration, as: 'estimateDuration'
        end
      end
      
      class SegmentCostEstimate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :commitment_cost_estimates, as: 'commitmentCostEstimates', class: Google::Apis::CloudbillingV1beta::CommitmentCostEstimate, decorator: Google::Apis::CloudbillingV1beta::CommitmentCostEstimate::Representation
      
          property :segment_start_time, as: 'segmentStartTime', class: Google::Apis::CloudbillingV1beta::EstimationTimePoint, decorator: Google::Apis::CloudbillingV1beta::EstimationTimePoint::Representation
      
          property :segment_total_cost_estimate, as: 'segmentTotalCostEstimate', class: Google::Apis::CloudbillingV1beta::CostEstimate, decorator: Google::Apis::CloudbillingV1beta::CostEstimate::Representation
      
          collection :workload_cost_estimates, as: 'workloadCostEstimates', class: Google::Apis::CloudbillingV1beta::WorkloadCostEstimate, decorator: Google::Apis::CloudbillingV1beta::WorkloadCostEstimate::Representation
      
        end
      end
      
      class Sku
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          collection :prices, as: 'prices', class: Google::Apis::CloudbillingV1beta::Price, decorator: Google::Apis::CloudbillingV1beta::Price::Representation
      
          property :sku, as: 'sku'
        end
      end
      
      class SkuCostEstimate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cost_estimate, as: 'costEstimate', class: Google::Apis::CloudbillingV1beta::CostEstimate, decorator: Google::Apis::CloudbillingV1beta::CostEstimate::Representation
      
          property :sku, as: 'sku'
          property :usage_amount, as: 'usageAmount'
          property :usage_unit, as: 'usageUnit'
        end
      end
      
      class StandardTierEgressWorkload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :egress_rate, as: 'egressRate', class: Google::Apis::CloudbillingV1beta::Usage, decorator: Google::Apis::CloudbillingV1beta::Usage::Representation
      
          property :source_region, as: 'sourceRegion'
        end
      end
      
      class Usage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :usage_rate_timeline, as: 'usageRateTimeline', class: Google::Apis::CloudbillingV1beta::UsageRateTimeline, decorator: Google::Apis::CloudbillingV1beta::UsageRateTimeline::Representation
      
        end
      end
      
      class UsageRateTimeline
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :unit, as: 'unit'
          collection :usage_rate_timeline_entries, as: 'usageRateTimelineEntries', class: Google::Apis::CloudbillingV1beta::UsageRateTimelineEntry, decorator: Google::Apis::CloudbillingV1beta::UsageRateTimelineEntry::Representation
      
        end
      end
      
      class UsageRateTimelineEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :effective_time, as: 'effectiveTime', class: Google::Apis::CloudbillingV1beta::EstimationTimePoint, decorator: Google::Apis::CloudbillingV1beta::EstimationTimePoint::Representation
      
          property :usage_rate, as: 'usageRate'
        end
      end
      
      class VlanAttachment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bandwidth, as: 'bandwidth'
          property :vlan_count, as: 'vlanCount', class: Google::Apis::CloudbillingV1beta::Usage, decorator: Google::Apis::CloudbillingV1beta::Usage::Representation
      
        end
      end
      
      class VmResourceBasedCud
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :guest_accelerator, as: 'guestAccelerator', class: Google::Apis::CloudbillingV1beta::GuestAccelerator, decorator: Google::Apis::CloudbillingV1beta::GuestAccelerator::Representation
      
          property :machine_series, as: 'machineSeries'
          property :memory_size_gb, as: 'memorySizeGb'
          property :plan, as: 'plan'
          property :region, as: 'region'
          property :virtual_cpu_count, :numeric_string => true, as: 'virtualCpuCount'
        end
      end
      
      class VmToVmEgressWorkload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inter_region_egress, as: 'interRegionEgress', class: Google::Apis::CloudbillingV1beta::InterRegionEgress, decorator: Google::Apis::CloudbillingV1beta::InterRegionEgress::Representation
      
          property :intra_region_egress, as: 'intraRegionEgress', class: Google::Apis::CloudbillingV1beta::IntraRegionEgress, decorator: Google::Apis::CloudbillingV1beta::IntraRegionEgress::Representation
      
        end
      end
      
      class Workload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_cdn_egress_workload, as: 'cloudCdnEgressWorkload', class: Google::Apis::CloudbillingV1beta::CloudCdnEgressWorkload, decorator: Google::Apis::CloudbillingV1beta::CloudCdnEgressWorkload::Representation
      
          property :cloud_cdn_workload, as: 'cloudCdnWorkload', class: Google::Apis::CloudbillingV1beta::CloudCdnWorkload, decorator: Google::Apis::CloudbillingV1beta::CloudCdnWorkload::Representation
      
          property :cloud_interconnect_egress_workload, as: 'cloudInterconnectEgressWorkload', class: Google::Apis::CloudbillingV1beta::CloudInterconnectEgressWorkload, decorator: Google::Apis::CloudbillingV1beta::CloudInterconnectEgressWorkload::Representation
      
          property :cloud_interconnect_workload, as: 'cloudInterconnectWorkload', class: Google::Apis::CloudbillingV1beta::CloudInterconnectWorkload, decorator: Google::Apis::CloudbillingV1beta::CloudInterconnectWorkload::Representation
      
          property :cloud_storage_egress_workload, as: 'cloudStorageEgressWorkload', class: Google::Apis::CloudbillingV1beta::CloudStorageEgressWorkload, decorator: Google::Apis::CloudbillingV1beta::CloudStorageEgressWorkload::Representation
      
          property :cloud_storage_workload, as: 'cloudStorageWorkload', class: Google::Apis::CloudbillingV1beta::CloudStorageWorkload, decorator: Google::Apis::CloudbillingV1beta::CloudStorageWorkload::Representation
      
          property :compute_vm_workload, as: 'computeVmWorkload', class: Google::Apis::CloudbillingV1beta::ComputeVmWorkload, decorator: Google::Apis::CloudbillingV1beta::ComputeVmWorkload::Representation
      
          property :name, as: 'name'
          property :premium_tier_egress_workload, as: 'premiumTierEgressWorkload', class: Google::Apis::CloudbillingV1beta::PremiumTierEgressWorkload, decorator: Google::Apis::CloudbillingV1beta::PremiumTierEgressWorkload::Representation
      
          property :standard_tier_egress_workload, as: 'standardTierEgressWorkload', class: Google::Apis::CloudbillingV1beta::StandardTierEgressWorkload, decorator: Google::Apis::CloudbillingV1beta::StandardTierEgressWorkload::Representation
      
          property :vm_to_vm_egress_workload, as: 'vmToVmEgressWorkload', class: Google::Apis::CloudbillingV1beta::VmToVmEgressWorkload, decorator: Google::Apis::CloudbillingV1beta::VmToVmEgressWorkload::Representation
      
        end
      end
      
      class WorkloadCostEstimate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          collection :sku_cost_estimates, as: 'skuCostEstimates', class: Google::Apis::CloudbillingV1beta::SkuCostEstimate, decorator: Google::Apis::CloudbillingV1beta::SkuCostEstimate::Representation
      
          property :workload_total_cost_estimate, as: 'workloadTotalCostEstimate', class: Google::Apis::CloudbillingV1beta::CostEstimate, decorator: Google::Apis::CloudbillingV1beta::CostEstimate::Representation
      
        end
      end
    end
  end
end
