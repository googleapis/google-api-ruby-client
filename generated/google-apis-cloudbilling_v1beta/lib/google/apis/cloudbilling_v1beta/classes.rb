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
      
      # Specifies the regions for Cache Fill.
      class CacheFillRegions
        include Google::Apis::Core::Hashable
      
        # The destination region for cache fill.
        # Corresponds to the JSON property `destinationRegion`
        # @return [String]
        attr_accessor :destination_region
      
        # The source region for cache fill.
        # Corresponds to the JSON property `sourceRegion`
        # @return [String]
        attr_accessor :source_region
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_region = args[:destination_region] if args.key?(:destination_region)
          @source_region = args[:source_region] if args.key?(:source_region)
        end
      end
      
      # Specifies usage for Cloud CDN Data Transfer.
      class CloudCdnEgressWorkload
        include Google::Apis::Core::Hashable
      
        # The destination for the cache data transfer.
        # Corresponds to the JSON property `cacheEgressDestination`
        # @return [String]
        attr_accessor :cache_egress_destination
      
        # An amount of usage over a time frame.
        # Corresponds to the JSON property `cacheEgressRate`
        # @return [Google::Apis::CloudbillingV1beta::Usage]
        attr_accessor :cache_egress_rate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cache_egress_destination = args[:cache_egress_destination] if args.key?(:cache_egress_destination)
          @cache_egress_rate = args[:cache_egress_rate] if args.key?(:cache_egress_rate)
        end
      end
      
      # Specifies usage for Cloud CDN resources.
      class CloudCdnWorkload
        include Google::Apis::Core::Hashable
      
        # The source service for the cache fill.
        # Corresponds to the JSON property `cacheFillOriginService`
        # @return [String]
        attr_accessor :cache_fill_origin_service
      
        # An amount of usage over a time frame.
        # Corresponds to the JSON property `cacheFillRate`
        # @return [Google::Apis::CloudbillingV1beta::Usage]
        attr_accessor :cache_fill_rate
      
        # Specifies the regions for Cache Fill.
        # Corresponds to the JSON property `cacheFillRegions`
        # @return [Google::Apis::CloudbillingV1beta::CacheFillRegions]
        attr_accessor :cache_fill_regions
      
        # An amount of usage over a time frame.
        # Corresponds to the JSON property `cacheLookUpRate`
        # @return [Google::Apis::CloudbillingV1beta::Usage]
        attr_accessor :cache_look_up_rate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cache_fill_origin_service = args[:cache_fill_origin_service] if args.key?(:cache_fill_origin_service)
          @cache_fill_rate = args[:cache_fill_rate] if args.key?(:cache_fill_rate)
          @cache_fill_regions = args[:cache_fill_regions] if args.key?(:cache_fill_regions)
          @cache_look_up_rate = args[:cache_look_up_rate] if args.key?(:cache_look_up_rate)
        end
      end
      
      # Includes the estimate for Interconnect Data Transfer only. To specify usage
      # for data transfer between VMs and internet end-points, use the Standard Tier
      # Internet Data Transfer interface.
      class CloudInterconnectEgressWorkload
        include Google::Apis::Core::Hashable
      
        # An amount of usage over a time frame.
        # Corresponds to the JSON property `egressRate`
        # @return [Google::Apis::CloudbillingV1beta::Usage]
        attr_accessor :egress_rate
      
        # Locations in the [Interconnect connection location table](https://cloud.google.
        # com/vpc/network-pricing#interconnect-pricing). These are the Interconnect Data
        # Transfer charges.
        # Corresponds to the JSON property `interconnectConnectionLocation`
        # @return [String]
        attr_accessor :interconnect_connection_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @egress_rate = args[:egress_rate] if args.key?(:egress_rate)
          @interconnect_connection_location = args[:interconnect_connection_location] if args.key?(:interconnect_connection_location)
        end
      end
      
      # Specifies usage for Cloud Interconnect resources.
      class CloudInterconnectWorkload
        include Google::Apis::Core::Hashable
      
        # VLAN attachment used for interconnect.
        # Corresponds to the JSON property `interconnectAttachments`
        # @return [Array<Google::Apis::CloudbillingV1beta::VlanAttachment>]
        attr_accessor :interconnect_attachments
      
        # VLAN attachment type
        # Corresponds to the JSON property `interconnectType`
        # @return [String]
        attr_accessor :interconnect_type
      
        # Interconnect circuit link type.
        # Corresponds to the JSON property `linkType`
        # @return [String]
        attr_accessor :link_type
      
        # An amount of usage over a time frame.
        # Corresponds to the JSON property `provisionedLinkCount`
        # @return [Google::Apis::CloudbillingV1beta::Usage]
        attr_accessor :provisioned_link_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @interconnect_attachments = args[:interconnect_attachments] if args.key?(:interconnect_attachments)
          @interconnect_type = args[:interconnect_type] if args.key?(:interconnect_type)
          @link_type = args[:link_type] if args.key?(:link_type)
          @provisioned_link_count = args[:provisioned_link_count] if args.key?(:provisioned_link_count)
        end
      end
      
      # Specification of a network type. Network data transfer within Google Cloud
      # applies when you move or copy data from one Cloud Storage bucket to another or
      # when another Google Cloud service accesses data in your Cloud Storage bucket.
      # This includes the network data transfer within Google Cloud and the general
      # network usage.
      class CloudStorageEgressWorkload
        include Google::Apis::Core::Hashable
      
        # Where the data is sent to.
        # Corresponds to the JSON property `destinationContinent`
        # @return [String]
        attr_accessor :destination_continent
      
        # An amount of usage over a time frame.
        # Corresponds to the JSON property `egressRate`
        # @return [Google::Apis::CloudbillingV1beta::Usage]
        attr_accessor :egress_rate
      
        # Where the data comes from.
        # Corresponds to the JSON property `sourceContinent`
        # @return [String]
        attr_accessor :source_continent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_continent = args[:destination_continent] if args.key?(:destination_continent)
          @egress_rate = args[:egress_rate] if args.key?(:egress_rate)
          @source_continent = args[:source_continent] if args.key?(:source_continent)
        end
      end
      
      # Specifies usage of Cloud Storage resources.
      class CloudStorageWorkload
        include Google::Apis::Core::Hashable
      
        # An amount of usage over a time frame.
        # Corresponds to the JSON property `dataRetrieval`
        # @return [Google::Apis::CloudbillingV1beta::Usage]
        attr_accessor :data_retrieval
      
        # An amount of usage over a time frame.
        # Corresponds to the JSON property `dataStored`
        # @return [Google::Apis::CloudbillingV1beta::Usage]
        attr_accessor :data_stored
      
        # Area contains dual locations.
        # Corresponds to the JSON property `dualRegion`
        # @return [Google::Apis::CloudbillingV1beta::DualRegional]
        attr_accessor :dual_region
      
        # Area contains multiple locations.
        # Corresponds to the JSON property `multiRegion`
        # @return [Google::Apis::CloudbillingV1beta::MultiRegional]
        attr_accessor :multi_region
      
        # An amount of usage over a time frame.
        # Corresponds to the JSON property `operationA`
        # @return [Google::Apis::CloudbillingV1beta::Usage]
        attr_accessor :operation_a
      
        # An amount of usage over a time frame.
        # Corresponds to the JSON property `operationB`
        # @return [Google::Apis::CloudbillingV1beta::Usage]
        attr_accessor :operation_b
      
        # Area contains only one location.
        # Corresponds to the JSON property `region`
        # @return [Google::Apis::CloudbillingV1beta::Regional]
        attr_accessor :region
      
        # The [storage class](https://cloud.google.com/storage/docs/storage-classes#
        # classes) of the data and operation. For example: "standard" and "nearline".
        # Corresponds to the JSON property `storageClass`
        # @return [String]
        attr_accessor :storage_class
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_retrieval = args[:data_retrieval] if args.key?(:data_retrieval)
          @data_stored = args[:data_stored] if args.key?(:data_stored)
          @dual_region = args[:dual_region] if args.key?(:dual_region)
          @multi_region = args[:multi_region] if args.key?(:multi_region)
          @operation_a = args[:operation_a] if args.key?(:operation_a)
          @operation_b = args[:operation_b] if args.key?(:operation_b)
          @region = args[:region] if args.key?(:region)
          @storage_class = args[:storage_class] if args.key?(:storage_class)
        end
      end
      
      # Commitments give you the ability to pay a recurring fee in exchange for a
      # benefit, such as a discount for your use. For example, this object might
      # contain details of a [spend-based committed use discount (CUD)](https://cloud.
      # google.com/docs/cuds#spend_based_commitments). Within a CostScenario, adding a
      # commitment includes the cost of the commitment and any discounts.
      class Commitment
        include Google::Apis::Core::Hashable
      
        # Required. A name for this commitment. All commitments in a CostScenario must
        # have unique names. Each name may be at most 128 characters long.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Specifies a resource-based committed use discount (CUD).
        # Corresponds to the JSON property `vmResourceBasedCud`
        # @return [Google::Apis::CloudbillingV1beta::VmResourceBasedCud]
        attr_accessor :vm_resource_based_cud
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @vm_resource_based_cud = args[:vm_resource_based_cud] if args.key?(:vm_resource_based_cud)
        end
      end
      
      # Estimated cost for a commitment.
      class CommitmentCostEstimate
        include Google::Apis::Core::Hashable
      
        # An estimated cost.
        # Corresponds to the JSON property `commitmentTotalCostEstimate`
        # @return [Google::Apis::CloudbillingV1beta::CostEstimate]
        attr_accessor :commitment_total_cost_estimate
      
        # The name of the commitment, as specified in the `CostScenario`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Estimated costs for each SKU in the commitment.
        # Corresponds to the JSON property `skuCostEstimates`
        # @return [Array<Google::Apis::CloudbillingV1beta::SkuCostEstimate>]
        attr_accessor :sku_cost_estimates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @commitment_total_cost_estimate = args[:commitment_total_cost_estimate] if args.key?(:commitment_total_cost_estimate)
          @name = args[:name] if args.key?(:name)
          @sku_cost_estimates = args[:sku_cost_estimates] if args.key?(:sku_cost_estimates)
        end
      end
      
      # Specificies usage of a set of identical compute VM instances.
      class ComputeVmWorkload
        include Google::Apis::Core::Hashable
      
        # Defines whether each instance has confidential compute enabled.
        # Corresponds to the JSON property `enableConfidentialCompute`
        # @return [Boolean]
        attr_accessor :enable_confidential_compute
        alias_method :enable_confidential_compute?, :enable_confidential_compute
      
        # Specification of a set of guest accelerators attached to a machine.
        # Corresponds to the JSON property `guestAccelerator`
        # @return [Google::Apis::CloudbillingV1beta::GuestAccelerator]
        attr_accessor :guest_accelerator
      
        # An amount of usage over a time frame.
        # Corresponds to the JSON property `instancesRunning`
        # @return [Google::Apis::CloudbillingV1beta::Usage]
        attr_accessor :instances_running
      
        # Premium image licenses used by each instance.
        # Corresponds to the JSON property `licenses`
        # @return [Array<String>]
        attr_accessor :licenses
      
        # Specification of machine series, memory, and number of vCPUs.
        # Corresponds to the JSON property `machineType`
        # @return [Google::Apis::CloudbillingV1beta::MachineType]
        attr_accessor :machine_type
      
        # Persistent disks attached to each instance. Must include a boot disk.
        # Corresponds to the JSON property `persistentDisks`
        # @return [Array<Google::Apis::CloudbillingV1beta::PersistentDisk>]
        attr_accessor :persistent_disks
      
        # Defines whether each instance is preemptible.
        # Corresponds to the JSON property `preemptible`
        # @return [Boolean]
        attr_accessor :preemptible
        alias_method :preemptible?, :preemptible
      
        # The [region](https://cloud.google.com/compute/docs/regions-zones) where the
        # VMs run. For example: "us-central1".
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_confidential_compute = args[:enable_confidential_compute] if args.key?(:enable_confidential_compute)
          @guest_accelerator = args[:guest_accelerator] if args.key?(:guest_accelerator)
          @instances_running = args[:instances_running] if args.key?(:instances_running)
          @licenses = args[:licenses] if args.key?(:licenses)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @persistent_disks = args[:persistent_disks] if args.key?(:persistent_disks)
          @preemptible = args[:preemptible] if args.key?(:preemptible)
          @region = args[:region] if args.key?(:region)
        end
      end
      
      # An estimated cost.
      class CostEstimate
        include Google::Apis::Core::Hashable
      
        # The estimated credits applied.
        # Corresponds to the JSON property `creditEstimates`
        # @return [Array<Google::Apis::CloudbillingV1beta::CreditEstimate>]
        attr_accessor :credit_estimates
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `netCostEstimate`
        # @return [Google::Apis::CloudbillingV1beta::Money]
        attr_accessor :net_cost_estimate
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `preCreditCostEstimate`
        # @return [Google::Apis::CloudbillingV1beta::Money]
        attr_accessor :pre_credit_cost_estimate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @credit_estimates = args[:credit_estimates] if args.key?(:credit_estimates)
          @net_cost_estimate = args[:net_cost_estimate] if args.key?(:net_cost_estimate)
          @pre_credit_cost_estimate = args[:pre_credit_cost_estimate] if args.key?(:pre_credit_cost_estimate)
        end
      end
      
      # The result of a estimating the costs of a `CostScenario`.
      class CostEstimationResult
        include Google::Apis::Core::Hashable
      
        # Required. The ISO 4217 currency code for the cost estimate.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Required. Estimated costs for each idealized month of a `CostScenario`.
        # Corresponds to the JSON property `segmentCostEstimates`
        # @return [Array<Google::Apis::CloudbillingV1beta::SegmentCostEstimate>]
        attr_accessor :segment_cost_estimates
      
        # Required. Information about SKUs used in the estimate.
        # Corresponds to the JSON property `skus`
        # @return [Array<Google::Apis::CloudbillingV1beta::Sku>]
        attr_accessor :skus
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @segment_cost_estimates = args[:segment_cost_estimates] if args.key?(:segment_cost_estimates)
          @skus = args[:skus] if args.key?(:skus)
        end
      end
      
      # Encapsulates all the information needed to perform a cost estimate. It
      # includes a specification of the Google Cloud usage whose costs are estimated,
      # and configuration options.
      class CostScenario
        include Google::Apis::Core::Hashable
      
        # New commitments to estimate the costs for. The cost of the commitments will be
        # included in the estimate result and discounts the commitment entitles will be
        # included in the workload cost estimates. A maximum of 100 workloads can be
        # provided.
        # Corresponds to the JSON property `commitments`
        # @return [Array<Google::Apis::CloudbillingV1beta::Commitment>]
        attr_accessor :commitments
      
        # Configuration for a CostScenario. Specifies how costs are calculated.
        # Corresponds to the JSON property `scenarioConfig`
        # @return [Google::Apis::CloudbillingV1beta::ScenarioConfig]
        attr_accessor :scenario_config
      
        # The Google Cloud usage whose costs are estimated. A maximum of 100 workloads
        # can be provided.
        # Corresponds to the JSON property `workloads`
        # @return [Array<Google::Apis::CloudbillingV1beta::Workload>]
        attr_accessor :workloads
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @commitments = args[:commitments] if args.key?(:commitments)
          @scenario_config = args[:scenario_config] if args.key?(:scenario_config)
          @workloads = args[:workloads] if args.key?(:workloads)
        end
      end
      
      # An estimated credit applied to the costs on a SKU.
      class CreditEstimate
        include Google::Apis::Core::Hashable
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `creditAmount`
        # @return [Google::Apis::CloudbillingV1beta::Money]
        attr_accessor :credit_amount
      
        # The credit description.
        # Corresponds to the JSON property `creditDescription`
        # @return [String]
        attr_accessor :credit_description
      
        # The credit type.
        # Corresponds to the JSON property `creditType`
        # @return [String]
        attr_accessor :credit_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @credit_amount = args[:credit_amount] if args.key?(:credit_amount)
          @credit_description = args[:credit_description] if args.key?(:credit_description)
          @credit_type = args[:credit_type] if args.key?(:credit_type)
        end
      end
      
      # Specification of a custom machine type.
      class CustomMachineType
        include Google::Apis::Core::Hashable
      
        # Required. The machine series. Only certain [machine series](https://cloud.
        # google.com/compute/docs/general-purpose-machines#custom_machine_types) support
        # custom configurations. For example: "n1".
        # Corresponds to the JSON property `machineSeries`
        # @return [String]
        attr_accessor :machine_series
      
        # Required. Memory size of the VM in GB (2^30 bytes). Must be an increment of 0.
        # 25 (256 MB). Each [machine series](https://cloud.google.com/compute/docs/
        # machine-types#machine_type_comparison) has limitations on allowed values for
        # the ratio of memory-to-vCPU count.
        # Corresponds to the JSON property `memorySizeGb`
        # @return [Float]
        attr_accessor :memory_size_gb
      
        # Required. The number of vCPUs. The allowed values depend on the [machine
        # series](https://cloud.google.com/compute/docs/machine-types#
        # machine_type_comparison).
        # Corresponds to the JSON property `virtualCpuCount`
        # @return [Fixnum]
        attr_accessor :virtual_cpu_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @machine_series = args[:machine_series] if args.key?(:machine_series)
          @memory_size_gb = args[:memory_size_gb] if args.key?(:memory_size_gb)
          @virtual_cpu_count = args[:virtual_cpu_count] if args.key?(:virtual_cpu_count)
        end
      end
      
      # A representation of a decimal value, such as 2.5. Clients may convert values
      # into language-native decimal formats, such as Java's BigDecimal or Python's
      # decimal.Decimal. [BigDecimal]: https://docs.oracle.com/en/java/javase/11/docs/
      # api/java.base/java/math/BigDecimal.html [decimal.Decimal]: https://docs.python.
      # org/3/library/decimal.html
      class Decimal
        include Google::Apis::Core::Hashable
      
        # The decimal value, as a string. The string representation consists of an
        # optional sign, `+` (`U+002B`) or `-` (`U+002D`), followed by a sequence of
        # zero or more decimal digits ("the integer"), optionally followed by a fraction,
        # optionally followed by an exponent. An empty string **should** be interpreted
        # as `0`. The fraction consists of a decimal point followed by zero or more
        # decimal digits. The string must contain at least one digit in either the
        # integer or the fraction. The number formed by the sign, the integer and the
        # fraction is referred to as the significand. The exponent consists of the
        # character `e` (`U+0065`) or `E` (`U+0045`) followed by one or more decimal
        # digits. Services **should** normalize decimal values before storing them by: -
        # Removing an explicitly-provided `+` sign (`+2.5` -> `2.5`). - Replacing a zero-
        # length integer value with `0` (`.5` -> `0.5`). - Coercing the exponent
        # character to upper-case, with explicit sign (`2.5e8` -> `2.5E+8`). - Removing
        # an explicitly-provided zero exponent (`2.5E0` -> `2.5`). Services **may**
        # perform additional normalization based on its own needs and the internal
        # decimal implementation selected, such as shifting the decimal point and
        # exponent value together (example: `2.5E-1` <-> `0.25`). Additionally, services
        # **may** preserve trailing zeroes in the fraction to indicate increased
        # precision, but are not required to do so. Note that only the `.` character is
        # supported to divide the integer and the fraction; `,` **should not** be
        # supported regardless of locale. Additionally, thousand separators **should not*
        # * be supported. If a service does support them, values **must** be normalized.
        # The ENBF grammar is: DecimalString = '' | [Sign] Significand [Exponent]; Sign =
        # '+' | '-'; Significand = Digits '.' | [Digits] '.' Digits; Exponent = ('e' | '
        # E') [Sign] Digits; Digits = ` '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '
        # 8' | '9' `; Services **should** clearly document the range of supported values,
        # the maximum supported precision (total number of digits), and, if applicable,
        # the scale (number of digits after the decimal point), as well as how it
        # behaves when receiving out-of-bounds values. Services **may** choose to accept
        # values passed as input even when the value has a higher precision or scale
        # than the service supports, and **should** round the value to fit the supported
        # scale. Alternatively, the service **may** error with `400 Bad Request` (`
        # INVALID_ARGUMENT` in gRPC) if precision would be lost. Services **should**
        # error with `400 Bad Request` (`INVALID_ARGUMENT` in gRPC) if the service
        # receives a value outside of the supported range.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Area contains dual locations.
      class DualRegional
        include Google::Apis::Core::Hashable
      
        # The [location name](https://cloud.google.com/storage/docs/locations#available-
        # locations) where the data is stored. For example: "asia1" for dual region.
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
      
      # Request for EstimateCostScenarioForBillingAccount.
      class EstimateCostScenarioForBillingAccountRequest
        include Google::Apis::Core::Hashable
      
        # Encapsulates all the information needed to perform a cost estimate. It
        # includes a specification of the Google Cloud usage whose costs are estimated,
        # and configuration options.
        # Corresponds to the JSON property `costScenario`
        # @return [Google::Apis::CloudbillingV1beta::CostScenario]
        attr_accessor :cost_scenario
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cost_scenario = args[:cost_scenario] if args.key?(:cost_scenario)
        end
      end
      
      # Response for EstimateCostScenarioForBillingAccount
      class EstimateCostScenarioForBillingAccountResponse
        include Google::Apis::Core::Hashable
      
        # The result of a estimating the costs of a `CostScenario`.
        # Corresponds to the JSON property `costEstimationResult`
        # @return [Google::Apis::CloudbillingV1beta::CostEstimationResult]
        attr_accessor :cost_estimation_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cost_estimation_result = args[:cost_estimation_result] if args.key?(:cost_estimation_result)
        end
      end
      
      # Request for EstimateCostScenarioWithListPrice.
      class EstimateCostScenarioWithListPriceRequest
        include Google::Apis::Core::Hashable
      
        # Encapsulates all the information needed to perform a cost estimate. It
        # includes a specification of the Google Cloud usage whose costs are estimated,
        # and configuration options.
        # Corresponds to the JSON property `costScenario`
        # @return [Google::Apis::CloudbillingV1beta::CostScenario]
        attr_accessor :cost_scenario
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cost_scenario = args[:cost_scenario] if args.key?(:cost_scenario)
        end
      end
      
      # Response for EstimateCostScenarioWithListPrice
      class EstimateCostScenarioWithListPriceResponse
        include Google::Apis::Core::Hashable
      
        # The result of a estimating the costs of a `CostScenario`.
        # Corresponds to the JSON property `costEstimationResult`
        # @return [Google::Apis::CloudbillingV1beta::CostEstimationResult]
        attr_accessor :cost_estimation_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cost_estimation_result = args[:cost_estimation_result] if args.key?(:cost_estimation_result)
        end
      end
      
      # Represents a point in time.
      class EstimationTimePoint
        include Google::Apis::Core::Hashable
      
        # The point in time, relative to the start of the time frame covered by the cost
        # estimate.
        # Corresponds to the JSON property `estimationTimeFrameOffset`
        # @return [String]
        attr_accessor :estimation_time_frame_offset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @estimation_time_frame_offset = args[:estimation_time_frame_offset] if args.key?(:estimation_time_frame_offset)
        end
      end
      
      # Encapsulates the aggregation information such as aggregation level and
      # interval for a billing account price.
      class GoogleCloudBillingBillingaccountpricesV1betaAggregationInfo
        include Google::Apis::Core::Hashable
      
        # Interval at which usage is aggregated to compute cost. Example: "MONTHLY"
        # interval indicates that usage is aggregated every month.
        # Corresponds to the JSON property `interval`
        # @return [String]
        attr_accessor :interval
      
        # Level at which usage is aggregated to compute cost. Example: "ACCOUNT" level
        # indicates that usage is aggregated across all projects in a single account.
        # Corresponds to the JSON property `level`
        # @return [String]
        attr_accessor :level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @interval = args[:interval] if args.key?(:interval)
          @level = args[:level] if args.key?(:level)
        end
      end
      
      # Encapsulates the latest price for a billing account SKU.
      class GoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice
        include Google::Apis::Core::Hashable
      
        # ISO-4217 currency code for the price.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Resource name for the latest billing account price.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Encapsulates a price reason which contains background information about the
        # origin of the price.
        # Corresponds to the JSON property `priceReason`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaPriceReason]
        attr_accessor :price_reason
      
        # Encapsulates a `Rate` price. Billing account SKUs with `Rate` price are
        # offered by pricing tiers. The price have 1 or more rate pricing tiers.
        # Corresponds to the JSON property `rate`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaRate]
        attr_accessor :rate
      
        # Type of the price. The possible values are: ["unspecified", "rate"].
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @name = args[:name] if args.key?(:name)
          @price_reason = args[:price_reason] if args.key?(:price_reason)
          @rate = args[:rate] if args.key?(:rate)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # Encapsulates a default price which is the current list price.
      class GoogleCloudBillingBillingaccountpricesV1betaDefaultPrice
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Encapsulates a discount off the list price, anchored to the list price as of a
      # fixed time.
      class GoogleCloudBillingBillingaccountpricesV1betaFixedDiscount
        include Google::Apis::Core::Hashable
      
        # A representation of a decimal value, such as 2.5. Clients may convert values
        # into language-native decimal formats, such as Java's BigDecimal or Python's
        # decimal.Decimal. [BigDecimal]: https://docs.oracle.com/en/java/javase/11/docs/
        # api/java.base/java/math/BigDecimal.html [decimal.Decimal]: https://docs.python.
        # org/3/library/decimal.html
        # Corresponds to the JSON property `discountPercent`
        # @return [Google::Apis::CloudbillingV1beta::Decimal]
        attr_accessor :discount_percent
      
        # Type of the fixed discount scope which indicates the source of the discount.
        # It can have values such as 'unspecified' and 'sku-group'.
        # Corresponds to the JSON property `discountScopeType`
        # @return [String]
        attr_accessor :discount_scope_type
      
        # Time that the fixed discount is anchored to.
        # Corresponds to the JSON property `fixTime`
        # @return [String]
        attr_accessor :fix_time
      
        # SKU group where the fixed discount comes from.
        # Corresponds to the JSON property `skuGroup`
        # @return [String]
        attr_accessor :sku_group
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @discount_percent = args[:discount_percent] if args.key?(:discount_percent)
          @discount_scope_type = args[:discount_scope_type] if args.key?(:discount_scope_type)
          @fix_time = args[:fix_time] if args.key?(:fix_time)
          @sku_group = args[:sku_group] if args.key?(:sku_group)
        end
      end
      
      # Encapsulates a set fixed price applicable during the terms of a contract
      # agreement.
      class GoogleCloudBillingBillingaccountpricesV1betaFixedPrice
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Encapsulates a discount off the current list price, not anchored to any list
      # price as of a fixed time.
      class GoogleCloudBillingBillingaccountpricesV1betaFloatingDiscount
        include Google::Apis::Core::Hashable
      
        # A representation of a decimal value, such as 2.5. Clients may convert values
        # into language-native decimal formats, such as Java's BigDecimal or Python's
        # decimal.Decimal. [BigDecimal]: https://docs.oracle.com/en/java/javase/11/docs/
        # api/java.base/java/math/BigDecimal.html [decimal.Decimal]: https://docs.python.
        # org/3/library/decimal.html
        # Corresponds to the JSON property `discountPercent`
        # @return [Google::Apis::CloudbillingV1beta::Decimal]
        attr_accessor :discount_percent
      
        # Type of the floating discount scope which indicates the source of the discount.
        # It can have values such as 'unspecified' and 'sku-group'.
        # Corresponds to the JSON property `discountScopeType`
        # @return [String]
        attr_accessor :discount_scope_type
      
        # SKU group where the floating discount comes from.
        # Corresponds to the JSON property `skuGroup`
        # @return [String]
        attr_accessor :sku_group
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @discount_percent = args[:discount_percent] if args.key?(:discount_percent)
          @discount_scope_type = args[:discount_scope_type] if args.key?(:discount_scope_type)
          @sku_group = args[:sku_group] if args.key?(:sku_group)
        end
      end
      
      # Response message for ListBillingAccountPrices.
      class GoogleCloudBillingBillingaccountpricesV1betaListBillingAccountPricesResponse
        include Google::Apis::Core::Hashable
      
        # The returned billing account prices.
        # Corresponds to the JSON property `billingAccountPrices`
        # @return [Array<Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice>]
        attr_accessor :billing_account_prices
      
        # Token that can be sent as `page_token` in the subsequent request to retrieve
        # the next page. If this field is empty, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_account_prices = args[:billing_account_prices] if args.key?(:billing_account_prices)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Encapsulates a contract feature that the list price (DefaultPrice) will be
      # used for the price if the current list price drops lower than the custom fixed
      # price. Available to new contracts after March 21, 2022. Applies to all fixed
      # price SKUs in the contract, including FixedPrice, FixedDiscount, MigratedPrice,
      # and MergedPrice.
      class GoogleCloudBillingBillingaccountpricesV1betaListPriceAsCeiling
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Encapsulates a price after merging from multiple sources. With merged tiers,
      # each individual tier can be from a different source with different discount
      # types.
      class GoogleCloudBillingBillingaccountpricesV1betaMergedPrice
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Encapsulates a price migrated from other SKUs.
      class GoogleCloudBillingBillingaccountpricesV1betaMigratedPrice
        include Google::Apis::Core::Hashable
      
        # Source SKU where the discount is migrated from. Format: billingAccounts/`
        # billing_account`/skus/`sku`
        # Corresponds to the JSON property `sourceSku`
        # @return [String]
        attr_accessor :source_sku
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source_sku = args[:source_sku] if args.key?(:source_sku)
        end
      end
      
      # Encapsulates a price reason which contains background information about the
      # origin of the price.
      class GoogleCloudBillingBillingaccountpricesV1betaPriceReason
        include Google::Apis::Core::Hashable
      
        # Encapsulates a default price which is the current list price.
        # Corresponds to the JSON property `defaultPrice`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaDefaultPrice]
        attr_accessor :default_price
      
        # Encapsulates a discount off the list price, anchored to the list price as of a
        # fixed time.
        # Corresponds to the JSON property `fixedDiscount`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaFixedDiscount]
        attr_accessor :fixed_discount
      
        # Encapsulates a set fixed price applicable during the terms of a contract
        # agreement.
        # Corresponds to the JSON property `fixedPrice`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaFixedPrice]
        attr_accessor :fixed_price
      
        # Encapsulates a discount off the current list price, not anchored to any list
        # price as of a fixed time.
        # Corresponds to the JSON property `floatingDiscount`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaFloatingDiscount]
        attr_accessor :floating_discount
      
        # Encapsulates a contract feature that the list price (DefaultPrice) will be
        # used for the price if the current list price drops lower than the custom fixed
        # price. Available to new contracts after March 21, 2022. Applies to all fixed
        # price SKUs in the contract, including FixedPrice, FixedDiscount, MigratedPrice,
        # and MergedPrice.
        # Corresponds to the JSON property `listPriceAsCeiling`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaListPriceAsCeiling]
        attr_accessor :list_price_as_ceiling
      
        # Encapsulates a price after merging from multiple sources. With merged tiers,
        # each individual tier can be from a different source with different discount
        # types.
        # Corresponds to the JSON property `mergedPrice`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaMergedPrice]
        attr_accessor :merged_price
      
        # Encapsulates a price migrated from other SKUs.
        # Corresponds to the JSON property `migratedPrice`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaMigratedPrice]
        attr_accessor :migrated_price
      
        # Type of the price reason. It can have values such as 'unspecified', 'default-
        # price', 'fixed-price', 'fixed-discount', 'floating-discount', 'migrated-price',
        # 'merged-price', 'list-price-as-ceiling'.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_price = args[:default_price] if args.key?(:default_price)
          @fixed_discount = args[:fixed_discount] if args.key?(:fixed_discount)
          @fixed_price = args[:fixed_price] if args.key?(:fixed_price)
          @floating_discount = args[:floating_discount] if args.key?(:floating_discount)
          @list_price_as_ceiling = args[:list_price_as_ceiling] if args.key?(:list_price_as_ceiling)
          @merged_price = args[:merged_price] if args.key?(:merged_price)
          @migrated_price = args[:migrated_price] if args.key?(:migrated_price)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Encapsulates a `Rate` price. Billing account SKUs with `Rate` price are
      # offered by pricing tiers. The price have 1 or more rate pricing tiers.
      class GoogleCloudBillingBillingaccountpricesV1betaRate
        include Google::Apis::Core::Hashable
      
        # Encapsulates the aggregation information such as aggregation level and
        # interval for a billing account price.
        # Corresponds to the JSON property `aggregationInfo`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaAggregationInfo]
        attr_accessor :aggregation_info
      
        # All tiers associated with the `Rate` price.
        # Corresponds to the JSON property `tiers`
        # @return [Array<Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaRateTier>]
        attr_accessor :tiers
      
        # Encapsulates the unit information for a Rate
        # Corresponds to the JSON property `unitInfo`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaUnitInfo]
        attr_accessor :unit_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregation_info = args[:aggregation_info] if args.key?(:aggregation_info)
          @tiers = args[:tiers] if args.key?(:tiers)
          @unit_info = args[:unit_info] if args.key?(:unit_info)
        end
      end
      
      # Encapsulates a rate price tier.
      class GoogleCloudBillingBillingaccountpricesV1betaRateTier
        include Google::Apis::Core::Hashable
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `contractPrice`
        # @return [Google::Apis::CloudbillingV1beta::Money]
        attr_accessor :contract_price
      
        # A representation of a decimal value, such as 2.5. Clients may convert values
        # into language-native decimal formats, such as Java's BigDecimal or Python's
        # decimal.Decimal. [BigDecimal]: https://docs.oracle.com/en/java/javase/11/docs/
        # api/java.base/java/math/BigDecimal.html [decimal.Decimal]: https://docs.python.
        # org/3/library/decimal.html
        # Corresponds to the JSON property `effectiveDiscountPercent`
        # @return [Google::Apis::CloudbillingV1beta::Decimal]
        attr_accessor :effective_discount_percent
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `listPrice`
        # @return [Google::Apis::CloudbillingV1beta::Money]
        attr_accessor :list_price
      
        # A representation of a decimal value, such as 2.5. Clients may convert values
        # into language-native decimal formats, such as Java's BigDecimal or Python's
        # decimal.Decimal. [BigDecimal]: https://docs.oracle.com/en/java/javase/11/docs/
        # api/java.base/java/math/BigDecimal.html [decimal.Decimal]: https://docs.python.
        # org/3/library/decimal.html
        # Corresponds to the JSON property `startAmount`
        # @return [Google::Apis::CloudbillingV1beta::Decimal]
        attr_accessor :start_amount
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contract_price = args[:contract_price] if args.key?(:contract_price)
          @effective_discount_percent = args[:effective_discount_percent] if args.key?(:effective_discount_percent)
          @list_price = args[:list_price] if args.key?(:list_price)
          @start_amount = args[:start_amount] if args.key?(:start_amount)
        end
      end
      
      # Encapsulates the unit information for a Rate
      class GoogleCloudBillingBillingaccountpricesV1betaUnitInfo
        include Google::Apis::Core::Hashable
      
        # Shorthand for the unit. Example: GiBy.mo.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # Human-readable description of the unit. Example: gibibyte month.
        # Corresponds to the JSON property `unitDescription`
        # @return [String]
        attr_accessor :unit_description
      
        # A representation of a decimal value, such as 2.5. Clients may convert values
        # into language-native decimal formats, such as Java's BigDecimal or Python's
        # decimal.Decimal. [BigDecimal]: https://docs.oracle.com/en/java/javase/11/docs/
        # api/java.base/java/math/BigDecimal.html [decimal.Decimal]: https://docs.python.
        # org/3/library/decimal.html
        # Corresponds to the JSON property `unitQuantity`
        # @return [Google::Apis::CloudbillingV1beta::Decimal]
        attr_accessor :unit_quantity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unit = args[:unit] if args.key?(:unit)
          @unit_description = args[:unit_description] if args.key?(:unit_description)
          @unit_quantity = args[:unit_quantity] if args.key?(:unit_quantity)
        end
      end
      
      # Encapsulates a Google Cloud service visible to a billing account.
      class GoogleCloudBillingBillingaccountservicesV1betaBillingAccountService
        include Google::Apis::Core::Hashable
      
        # Description of the BillingAccountService. Example: "BigQuery", "Compute Engine"
        # .
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Resource name for the BillingAccountService. Example: "billingAccounts/012345-
        # 567890-ABCDEF/services/DA34-426B-A397".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Identifier for the service. It is the string after the collection identifier "
        # services/". Example: "DA34-426B-A397".
        # Corresponds to the JSON property `serviceId`
        # @return [String]
        attr_accessor :service_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @service_id = args[:service_id] if args.key?(:service_id)
        end
      end
      
      # Response message for ListBillingAccountServices.
      class GoogleCloudBillingBillingaccountservicesV1betaListBillingAccountServicesResponse
        include Google::Apis::Core::Hashable
      
        # The returned billing account services.
        # Corresponds to the JSON property `billingAccountServices`
        # @return [Array<Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountservicesV1betaBillingAccountService>]
        attr_accessor :billing_account_services
      
        # Token that can be sent as `page_token` in the subsequent request to retrieve
        # the next page. If this field is empty, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_account_services = args[:billing_account_services] if args.key?(:billing_account_services)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Encapsulates a stock keeping (SKU) group visible to a billing account. A SKU
      # group represents a collection of SKUs that are related to each other. For
      # example, the `AI Platform APIs` SKU group includes SKUs from the Cloud
      # Dialogflow API, the Cloud Text-to-Speech API, and additional related APIs.
      class GoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup
        include Google::Apis::Core::Hashable
      
        # Description of the BillingAccountSkuGroup. Example: "A2 VMs (1 Year CUD)".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Resource name for the BillingAccountSkuGroup. Example: "billingAccounts/012345-
        # 567890-ABCDEF/skuGroups/0e6403d1-4694-44d2-a696-7a78b1a69301".
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
      
      # Response message for ListBillingAccountSkuGroups.
      class GoogleCloudBillingBillingaccountskugroupsV1betaListBillingAccountSkuGroupsResponse
        include Google::Apis::Core::Hashable
      
        # The returned publicly listed billing account SKU groups.
        # Corresponds to the JSON property `billingAccountSkuGroups`
        # @return [Array<Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup>]
        attr_accessor :billing_account_sku_groups
      
        # Token that can be sent as `page_token` in the subsequent request to retrieve
        # the next page. If this field is empty, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_account_sku_groups = args[:billing_account_sku_groups] if args.key?(:billing_account_sku_groups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Encapsulates a SKU that is part of a billing account SKU group.
      class GoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku
        include Google::Apis::Core::Hashable
      
        # BillingAccountService that the BillingAccountSkuGroupSku belongs to.
        # Corresponds to the JSON property `billingAccountService`
        # @return [String]
        attr_accessor :billing_account_service
      
        # Description of the BillingAccountSkuGroupSku. Example: "A2 Instance Core
        # running in Hong Kong".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Encapsulates geographic metadata, such as regions and multi-regions like `us-
        # east4` or `European Union`.
        # Corresponds to the JSON property `geoTaxonomy`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomy]
        attr_accessor :geo_taxonomy
      
        # Resource name for the BillingAccountSkuGroupSku. Example: "billingAccounts/
        # 012345-567890-ABCDEF/skuGroups/0e6403d1-4694-44d2-a696-7a78b1a69301/skus/AA95-
        # CD31-42FE".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Encapsulates product categories, such as `Serverless`, `Cloud Run`, `TaskQueue`
        # , and others.
        # Corresponds to the JSON property `productTaxonomy`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaProductTaxonomy]
        attr_accessor :product_taxonomy
      
        # Unique identifier for the SKU. It is the string after the collection
        # identifier "skus/" Example: "AA95-CD31-42FE".
        # Corresponds to the JSON property `skuId`
        # @return [String]
        attr_accessor :sku_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_account_service = args[:billing_account_service] if args.key?(:billing_account_service)
          @display_name = args[:display_name] if args.key?(:display_name)
          @geo_taxonomy = args[:geo_taxonomy] if args.key?(:geo_taxonomy)
          @name = args[:name] if args.key?(:name)
          @product_taxonomy = args[:product_taxonomy] if args.key?(:product_taxonomy)
          @sku_id = args[:sku_id] if args.key?(:sku_id)
        end
      end
      
      # Encapsulates geographic metadata, such as regions and multi-regions like `us-
      # east4` or `European Union`.
      class GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomy
        include Google::Apis::Core::Hashable
      
        # Encapsulates a global geographic taxonomy.
        # Corresponds to the JSON property `globalMetadata`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyGlobal]
        attr_accessor :global_metadata
      
        # Encapsulates a multi-regional geographic taxonomy.
        # Corresponds to the JSON property `multiRegionalMetadata`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyMultiRegional]
        attr_accessor :multi_regional_metadata
      
        # Encapsulates a regional geographic taxonomy.
        # Corresponds to the JSON property `regionalMetadata`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegional]
        attr_accessor :regional_metadata
      
        # Type of geographic taxonomy associated with the billing account SKU group SKU.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @global_metadata = args[:global_metadata] if args.key?(:global_metadata)
          @multi_regional_metadata = args[:multi_regional_metadata] if args.key?(:multi_regional_metadata)
          @regional_metadata = args[:regional_metadata] if args.key?(:regional_metadata)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Encapsulates a global geographic taxonomy.
      class GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyGlobal
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Encapsulates a multi-regional geographic taxonomy.
      class GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyMultiRegional
        include Google::Apis::Core::Hashable
      
        # Google Cloud regions associated with the multi-regional geographic taxonomy.
        # Corresponds to the JSON property `regions`
        # @return [Array<Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion>]
        attr_accessor :regions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @regions = args[:regions] if args.key?(:regions)
        end
      end
      
      # Encapsulates a Google Cloud region.
      class GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion
        include Google::Apis::Core::Hashable
      
        # Description of a Google Cloud region. Example: "us-west2".
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @region = args[:region] if args.key?(:region)
        end
      end
      
      # Encapsulates a regional geographic taxonomy.
      class GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegional
        include Google::Apis::Core::Hashable
      
        # Encapsulates a Google Cloud region.
        # Corresponds to the JSON property `region`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion]
        attr_accessor :region
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @region = args[:region] if args.key?(:region)
        end
      end
      
      # Response message for ListBillingAccountSkuGroupSkus.
      class GoogleCloudBillingBillingaccountskugroupskusV1betaListBillingAccountSkuGroupSkusResponse
        include Google::Apis::Core::Hashable
      
        # The returned billing account SKU group SKUs.
        # Corresponds to the JSON property `billingAccountSkuGroupSkus`
        # @return [Array<Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku>]
        attr_accessor :billing_account_sku_group_skus
      
        # Token that can be sent as `page_token` in the subsequent request to retrieve
        # the next page. If this field is empty, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_account_sku_group_skus = args[:billing_account_sku_group_skus] if args.key?(:billing_account_sku_group_skus)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Encapsulates product categories, such as `Serverless`, `Cloud Run`, `TaskQueue`
      # , and others.
      class GoogleCloudBillingBillingaccountskugroupskusV1betaProductTaxonomy
        include Google::Apis::Core::Hashable
      
        # All product categories that the billing account SKU group SKU belong to.
        # Corresponds to the JSON property `taxonomyCategories`
        # @return [Array<Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaTaxonomyCategory>]
        attr_accessor :taxonomy_categories
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @taxonomy_categories = args[:taxonomy_categories] if args.key?(:taxonomy_categories)
        end
      end
      
      # Encapsulates a product category.
      class GoogleCloudBillingBillingaccountskugroupskusV1betaTaxonomyCategory
        include Google::Apis::Core::Hashable
      
        # Name of the product category.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
        end
      end
      
      # Encapsulates a stock keeping unit (SKU) visible to a billing account. A SKU
      # distinctly identifies a resource that you can purchase. For a list of
      # available SKUs, see [SKUs](https://cloud.google.com/skus).
      class GoogleCloudBillingBillingaccountskusV1betaBillingAccountSku
        include Google::Apis::Core::Hashable
      
        # BillingAccountService that the BillingAccountSku belongs to.
        # Corresponds to the JSON property `billingAccountService`
        # @return [String]
        attr_accessor :billing_account_service
      
        # Description of the BillingAccountSku. Example: "A2 Instance Core running in
        # Hong Kong".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Encapsulates geographic metadata, such as regions and multi-regions like `us-
        # east4` or `European Union`.
        # Corresponds to the JSON property `geoTaxonomy`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomy]
        attr_accessor :geo_taxonomy
      
        # Resource name for the BillingAccountSku. Example: "billingAccounts/012345-
        # 567890-ABCDEF/skus/AA95-CD31-42FE".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Encapsulates product categories, such as `Serverless`, `Cloud Run`, `TaskQueue`
        # , and others.
        # Corresponds to the JSON property `productTaxonomy`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaProductTaxonomy]
        attr_accessor :product_taxonomy
      
        # Unique identifier for the SKU. It is the string after the collection
        # identifier "skus/" Example: "AA95-CD31-42FE".
        # Corresponds to the JSON property `skuId`
        # @return [String]
        attr_accessor :sku_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_account_service = args[:billing_account_service] if args.key?(:billing_account_service)
          @display_name = args[:display_name] if args.key?(:display_name)
          @geo_taxonomy = args[:geo_taxonomy] if args.key?(:geo_taxonomy)
          @name = args[:name] if args.key?(:name)
          @product_taxonomy = args[:product_taxonomy] if args.key?(:product_taxonomy)
          @sku_id = args[:sku_id] if args.key?(:sku_id)
        end
      end
      
      # Encapsulates geographic metadata, such as regions and multi-regions like `us-
      # east4` or `European Union`.
      class GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomy
        include Google::Apis::Core::Hashable
      
        # Encapsulates a global geographic taxonomy.
        # Corresponds to the JSON property `globalMetadata`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyGlobal]
        attr_accessor :global_metadata
      
        # Encapsulates a multi-regional geographic taxonomy.
        # Corresponds to the JSON property `multiRegionalMetadata`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyMultiRegional]
        attr_accessor :multi_regional_metadata
      
        # Encapsulates a regional geographic taxonomy.
        # Corresponds to the JSON property `regionalMetadata`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegional]
        attr_accessor :regional_metadata
      
        # Type of geographic taxonomy associated with the billing account SKU.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @global_metadata = args[:global_metadata] if args.key?(:global_metadata)
          @multi_regional_metadata = args[:multi_regional_metadata] if args.key?(:multi_regional_metadata)
          @regional_metadata = args[:regional_metadata] if args.key?(:regional_metadata)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Encapsulates a global geographic taxonomy.
      class GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyGlobal
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Encapsulates a multi-regional geographic taxonomy.
      class GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyMultiRegional
        include Google::Apis::Core::Hashable
      
        # Google Cloud regions associated with the multi-regional geographic taxonomy.
        # Corresponds to the JSON property `regions`
        # @return [Array<Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion>]
        attr_accessor :regions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @regions = args[:regions] if args.key?(:regions)
        end
      end
      
      # Encapsulates a Google Cloud region.
      class GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion
        include Google::Apis::Core::Hashable
      
        # Description of a Google Cloud region. Example: "us-west2".
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @region = args[:region] if args.key?(:region)
        end
      end
      
      # Encapsulates a regional geographic taxonomy.
      class GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegional
        include Google::Apis::Core::Hashable
      
        # Encapsulates a Google Cloud region.
        # Corresponds to the JSON property `region`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion]
        attr_accessor :region
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @region = args[:region] if args.key?(:region)
        end
      end
      
      # Response message for ListBillingAccountSkus.
      class GoogleCloudBillingBillingaccountskusV1betaListBillingAccountSkusResponse
        include Google::Apis::Core::Hashable
      
        # The returned billing account SKUs.
        # Corresponds to the JSON property `billingAccountSkus`
        # @return [Array<Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaBillingAccountSku>]
        attr_accessor :billing_account_skus
      
        # Token that can be sent as `page_token` in the subsequent request to retrieve
        # the next page. If this field is empty, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_account_skus = args[:billing_account_skus] if args.key?(:billing_account_skus)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Encapsulates product categories, such as `Serverless`, `Cloud Run`, `TaskQueue`
      # , and others.
      class GoogleCloudBillingBillingaccountskusV1betaProductTaxonomy
        include Google::Apis::Core::Hashable
      
        # All product categories that the billing account SKU belong to.
        # Corresponds to the JSON property `taxonomyCategories`
        # @return [Array<Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaTaxonomyCategory>]
        attr_accessor :taxonomy_categories
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @taxonomy_categories = args[:taxonomy_categories] if args.key?(:taxonomy_categories)
        end
      end
      
      # Encapsulates a product category.
      class GoogleCloudBillingBillingaccountskusV1betaTaxonomyCategory
        include Google::Apis::Core::Hashable
      
        # Name of the product category.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
        end
      end
      
      # Encapsulates the aggregation information such as aggregation level and
      # interval for a price.
      class GoogleCloudBillingPricesV1betaAggregationInfo
        include Google::Apis::Core::Hashable
      
        # Interval at which usage is aggregated to compute cost. Example: "MONTHLY"
        # interval indicates that usage is aggregated every month.
        # Corresponds to the JSON property `interval`
        # @return [String]
        attr_accessor :interval
      
        # Level at which usage is aggregated to compute cost. Example: "ACCOUNT" level
        # indicates that usage is aggregated across all projects in a single account.
        # Corresponds to the JSON property `level`
        # @return [String]
        attr_accessor :level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @interval = args[:interval] if args.key?(:interval)
          @level = args[:level] if args.key?(:level)
        end
      end
      
      # Response message for ListPrices.
      class GoogleCloudBillingPricesV1betaListPricesResponse
        include Google::Apis::Core::Hashable
      
        # Token that can be sent as `page_token` in the subsequent request to retrieve
        # the next page. If this field is empty, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The returned publicly listed prices.
        # Corresponds to the JSON property `prices`
        # @return [Array<Google::Apis::CloudbillingV1beta::GoogleCloudBillingPricesV1betaPrice>]
        attr_accessor :prices
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @prices = args[:prices] if args.key?(:prices)
        end
      end
      
      # Encapsulates the latest price for a SKU.
      class GoogleCloudBillingPricesV1betaPrice
        include Google::Apis::Core::Hashable
      
        # ISO-4217 currency code for the price.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Resource name for the latest price.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Encapsulates a `Rate` price. SKUs with `Rate` price are offered by pricing
        # tiers. The price have 1 or more rate pricing tiers.
        # Corresponds to the JSON property `rate`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingPricesV1betaRate]
        attr_accessor :rate
      
        # Type of the price. It can have values: ["unspecified", "rate"].
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @name = args[:name] if args.key?(:name)
          @rate = args[:rate] if args.key?(:rate)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # Encapsulates a `Rate` price. SKUs with `Rate` price are offered by pricing
      # tiers. The price have 1 or more rate pricing tiers.
      class GoogleCloudBillingPricesV1betaRate
        include Google::Apis::Core::Hashable
      
        # Encapsulates the aggregation information such as aggregation level and
        # interval for a price.
        # Corresponds to the JSON property `aggregationInfo`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingPricesV1betaAggregationInfo]
        attr_accessor :aggregation_info
      
        # All tiers associated with the `Rate` price.
        # Corresponds to the JSON property `tiers`
        # @return [Array<Google::Apis::CloudbillingV1beta::GoogleCloudBillingPricesV1betaRateTier>]
        attr_accessor :tiers
      
        # Encapsulates the unit information for a Rate
        # Corresponds to the JSON property `unitInfo`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingPricesV1betaUnitInfo]
        attr_accessor :unit_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregation_info = args[:aggregation_info] if args.key?(:aggregation_info)
          @tiers = args[:tiers] if args.key?(:tiers)
          @unit_info = args[:unit_info] if args.key?(:unit_info)
        end
      end
      
      # Encapsulates a rate price tier.
      class GoogleCloudBillingPricesV1betaRateTier
        include Google::Apis::Core::Hashable
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `listPrice`
        # @return [Google::Apis::CloudbillingV1beta::Money]
        attr_accessor :list_price
      
        # A representation of a decimal value, such as 2.5. Clients may convert values
        # into language-native decimal formats, such as Java's BigDecimal or Python's
        # decimal.Decimal. [BigDecimal]: https://docs.oracle.com/en/java/javase/11/docs/
        # api/java.base/java/math/BigDecimal.html [decimal.Decimal]: https://docs.python.
        # org/3/library/decimal.html
        # Corresponds to the JSON property `startAmount`
        # @return [Google::Apis::CloudbillingV1beta::Decimal]
        attr_accessor :start_amount
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @list_price = args[:list_price] if args.key?(:list_price)
          @start_amount = args[:start_amount] if args.key?(:start_amount)
        end
      end
      
      # Encapsulates the unit information for a Rate
      class GoogleCloudBillingPricesV1betaUnitInfo
        include Google::Apis::Core::Hashable
      
        # Shorthand for the unit. Example: GiBy.mo.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # Human-readable description of the unit. Example: gibibyte month.
        # Corresponds to the JSON property `unitDescription`
        # @return [String]
        attr_accessor :unit_description
      
        # A representation of a decimal value, such as 2.5. Clients may convert values
        # into language-native decimal formats, such as Java's BigDecimal or Python's
        # decimal.Decimal. [BigDecimal]: https://docs.oracle.com/en/java/javase/11/docs/
        # api/java.base/java/math/BigDecimal.html [decimal.Decimal]: https://docs.python.
        # org/3/library/decimal.html
        # Corresponds to the JSON property `unitQuantity`
        # @return [Google::Apis::CloudbillingV1beta::Decimal]
        attr_accessor :unit_quantity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unit = args[:unit] if args.key?(:unit)
          @unit_description = args[:unit_description] if args.key?(:unit_description)
          @unit_quantity = args[:unit_quantity] if args.key?(:unit_quantity)
        end
      end
      
      # Response message for ListSkuGroups.
      class GoogleCloudBillingSkugroupsV1betaListSkuGroupsResponse
        include Google::Apis::Core::Hashable
      
        # Token that can be sent as `page_token` in the subsequent request to retrieve
        # the next page. If this field is empty, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The returned publicly listed SKU groups.
        # Corresponds to the JSON property `skuGroups`
        # @return [Array<Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupsV1betaSkuGroup>]
        attr_accessor :sku_groups
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @sku_groups = args[:sku_groups] if args.key?(:sku_groups)
        end
      end
      
      # Encapsulates a publicly listed stock keeping unit (SKU) group. A SKU group
      # represents a collection of SKUs that are related to each other. For example,
      # the `AI Platform APIs` SKU group includes SKUs from the Cloud Dialogflow API,
      # the Cloud Text-to-Speech API, and additional related APIs.
      class GoogleCloudBillingSkugroupsV1betaSkuGroup
        include Google::Apis::Core::Hashable
      
        # Description of the SKU group. Example: "A2 VMs (1 Year CUD)".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Resource name for the SKU group. Example: "skuGroups/0e6403d1-4694-44d2-a696-
        # 7a78b1a69301".
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
      
      # Encapsulates geographic metadata, such as regions and multi-regions like `us-
      # east4` or `European Union`.
      class GoogleCloudBillingSkugroupskusV1betaGeoTaxonomy
        include Google::Apis::Core::Hashable
      
        # Encapsulates a global geographic taxonomy.
        # Corresponds to the JSON property `globalMetadata`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyGlobal]
        attr_accessor :global_metadata
      
        # Encapsulates a multi-regional geographic taxonomy.
        # Corresponds to the JSON property `multiRegionalMetadata`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyMultiRegional]
        attr_accessor :multi_regional_metadata
      
        # Encapsulates a regional geographic taxonomy.
        # Corresponds to the JSON property `regionalMetadata`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegional]
        attr_accessor :regional_metadata
      
        # Type of geographic taxonomy associated with the SKU group SKU.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @global_metadata = args[:global_metadata] if args.key?(:global_metadata)
          @multi_regional_metadata = args[:multi_regional_metadata] if args.key?(:multi_regional_metadata)
          @regional_metadata = args[:regional_metadata] if args.key?(:regional_metadata)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Encapsulates a global geographic taxonomy.
      class GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyGlobal
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Encapsulates a multi-regional geographic taxonomy.
      class GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyMultiRegional
        include Google::Apis::Core::Hashable
      
        # Google Cloud regions associated with the multi-regional geographic taxonomy.
        # Corresponds to the JSON property `regions`
        # @return [Array<Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion>]
        attr_accessor :regions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @regions = args[:regions] if args.key?(:regions)
        end
      end
      
      # Encapsulates a Google Cloud region.
      class GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion
        include Google::Apis::Core::Hashable
      
        # Description of a Google Cloud region. Example: "us-west2".
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @region = args[:region] if args.key?(:region)
        end
      end
      
      # Encapsulates a regional geographic taxonomy.
      class GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegional
        include Google::Apis::Core::Hashable
      
        # Encapsulates a Google Cloud region.
        # Corresponds to the JSON property `region`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion]
        attr_accessor :region
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @region = args[:region] if args.key?(:region)
        end
      end
      
      # Response message for ListSkuGroupSkus.
      class GoogleCloudBillingSkugroupskusV1betaListSkuGroupSkusResponse
        include Google::Apis::Core::Hashable
      
        # Token that can be sent as `page_token` in the subsequent request to retrieve
        # the next page. If this field is empty, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The returned SKU group SKUs.
        # Corresponds to the JSON property `skuGroupSkus`
        # @return [Array<Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaSkuGroupSku>]
        attr_accessor :sku_group_skus
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @sku_group_skus = args[:sku_group_skus] if args.key?(:sku_group_skus)
        end
      end
      
      # Encapsulates product categories, such as `Serverless`, `Cloud Run`, `TaskQueue`
      # , and others.
      class GoogleCloudBillingSkugroupskusV1betaProductTaxonomy
        include Google::Apis::Core::Hashable
      
        # All product categories that the SKU group SKU belongs to.
        # Corresponds to the JSON property `taxonomyCategories`
        # @return [Array<Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaTaxonomyCategory>]
        attr_accessor :taxonomy_categories
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @taxonomy_categories = args[:taxonomy_categories] if args.key?(:taxonomy_categories)
        end
      end
      
      # Encapsulates a publicly listed stock keeping unit (SKU) that is part of a
      # publicly listed SKU group. A SKU group represents a collection of SKUs that
      # are related to each other. For example, the `AI Platform APIs` SKU group
      # includes SKUs from the Cloud Dialogflow API, the Cloud Text-to-Speech API, and
      # additional related APIs.
      class GoogleCloudBillingSkugroupskusV1betaSkuGroupSku
        include Google::Apis::Core::Hashable
      
        # Description of the SkuGroupSku. Example: "A2 Instance Core running in Hong
        # Kong".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Encapsulates geographic metadata, such as regions and multi-regions like `us-
        # east4` or `European Union`.
        # Corresponds to the JSON property `geoTaxonomy`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaGeoTaxonomy]
        attr_accessor :geo_taxonomy
      
        # Resource name for the SkuGroupSku. Example: "skuGroups/0e6403d1-4694-44d2-a696-
        # 7a78b1a69301/skus/AA95-CD31-42FE".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Encapsulates product categories, such as `Serverless`, `Cloud Run`, `TaskQueue`
        # , and others.
        # Corresponds to the JSON property `productTaxonomy`
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaProductTaxonomy]
        attr_accessor :product_taxonomy
      
        # Service that the SkuGroupSku belongs to.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        # Unique identifier for the SKU. It is the string after the collection
        # identifier "skus/" Example: "AA95-CD31-42FE".
        # Corresponds to the JSON property `skuId`
        # @return [String]
        attr_accessor :sku_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @geo_taxonomy = args[:geo_taxonomy] if args.key?(:geo_taxonomy)
          @name = args[:name] if args.key?(:name)
          @product_taxonomy = args[:product_taxonomy] if args.key?(:product_taxonomy)
          @service = args[:service] if args.key?(:service)
          @sku_id = args[:sku_id] if args.key?(:sku_id)
        end
      end
      
      # Encapsulates a product category.
      class GoogleCloudBillingSkugroupskusV1betaTaxonomyCategory
        include Google::Apis::Core::Hashable
      
        # Name of the product category.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
        end
      end
      
      # Specification of a set of guest accelerators attached to a machine.
      class GuestAccelerator
        include Google::Apis::Core::Hashable
      
        # The number of the guest accelerator cards exposed to each instance.
        # Corresponds to the JSON property `acceleratorCount`
        # @return [Fixnum]
        attr_accessor :accelerator_count
      
        # The type of the guest accelerator cards. For example: "nvidia-tesla-t4".
        # Corresponds to the JSON property `acceleratorType`
        # @return [String]
        attr_accessor :accelerator_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accelerator_count = args[:accelerator_count] if args.key?(:accelerator_count)
          @accelerator_type = args[:accelerator_type] if args.key?(:accelerator_type)
        end
      end
      
      # Data transfer between two regions.
      class InterRegionEgress
        include Google::Apis::Core::Hashable
      
        # Which [region](https://cloud.google.com/compute/docs/regions-zones) the data
        # is transferred to.
        # Corresponds to the JSON property `destinationRegion`
        # @return [String]
        attr_accessor :destination_region
      
        # An amount of usage over a time frame.
        # Corresponds to the JSON property `egressRate`
        # @return [Google::Apis::CloudbillingV1beta::Usage]
        attr_accessor :egress_rate
      
        # Which [region](https://cloud.google.com/compute/docs/regions-zones) the data
        # is transferred from.
        # Corresponds to the JSON property `sourceRegion`
        # @return [String]
        attr_accessor :source_region
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_region = args[:destination_region] if args.key?(:destination_region)
          @egress_rate = args[:egress_rate] if args.key?(:egress_rate)
          @source_region = args[:source_region] if args.key?(:source_region)
        end
      end
      
      # Data transfer within the same region. When the source region and destination
      # region are in the same zone, using internal IP addresses, there isn't any
      # charge for data transfer.
      class IntraRegionEgress
        include Google::Apis::Core::Hashable
      
        # An amount of usage over a time frame.
        # Corresponds to the JSON property `egressRate`
        # @return [Google::Apis::CloudbillingV1beta::Usage]
        attr_accessor :egress_rate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @egress_rate = args[:egress_rate] if args.key?(:egress_rate)
        end
      end
      
      # Specification of machine series, memory, and number of vCPUs.
      class MachineType
        include Google::Apis::Core::Hashable
      
        # Specification of a custom machine type.
        # Corresponds to the JSON property `customMachineType`
        # @return [Google::Apis::CloudbillingV1beta::CustomMachineType]
        attr_accessor :custom_machine_type
      
        # Specification of a predefined machine type.
        # Corresponds to the JSON property `predefinedMachineType`
        # @return [Google::Apis::CloudbillingV1beta::PredefinedMachineType]
        attr_accessor :predefined_machine_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_machine_type = args[:custom_machine_type] if args.key?(:custom_machine_type)
          @predefined_machine_type = args[:predefined_machine_type] if args.key?(:predefined_machine_type)
        end
      end
      
      # Represents an amount of money with its currency type.
      class Money
        include Google::Apis::Core::Hashable
      
        # The three-letter currency code defined in ISO 4217.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Number of nano (10^-9) units of the amount. The value must be between -999,999,
        # 999 and +999,999,999 inclusive. If `units` is positive, `nanos` must be
        # positive or zero. If `units` is zero, `nanos` can be positive, zero, or
        # negative. If `units` is negative, `nanos` must be negative or zero. For
        # example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # The whole units of the amount. For example if `currencyCode` is `"USD"`, then
        # 1 unit is one US dollar.
        # Corresponds to the JSON property `units`
        # @return [Fixnum]
        attr_accessor :units
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @nanos = args[:nanos] if args.key?(:nanos)
          @units = args[:units] if args.key?(:units)
        end
      end
      
      # Area contains multiple locations.
      class MultiRegional
        include Google::Apis::Core::Hashable
      
        # The [location name](https://cloud.google.com/storage/docs/locations#available-
        # locations) where the data is stored. For example: "us" for multi-region.
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
      
      # Specification of a persistent disk attached to a VM.
      class PersistentDisk
        include Google::Apis::Core::Hashable
      
        # An amount of usage over a time frame.
        # Corresponds to the JSON property `diskSize`
        # @return [Google::Apis::CloudbillingV1beta::Usage]
        attr_accessor :disk_size
      
        # The [disk type](https://cloud.google.com/compute/docs/disks#disk-types). For
        # example: "pd-standard".
        # Corresponds to the JSON property `diskType`
        # @return [String]
        attr_accessor :disk_type
      
        # An amount of usage over a time frame.
        # Corresponds to the JSON property `provisionedIops`
        # @return [Google::Apis::CloudbillingV1beta::Usage]
        attr_accessor :provisioned_iops
      
        # The geographic scope of the disk. Defaults to `SCOPE_ZONAL` if not specified.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disk_size = args[:disk_size] if args.key?(:disk_size)
          @disk_type = args[:disk_type] if args.key?(:disk_type)
          @provisioned_iops = args[:provisioned_iops] if args.key?(:provisioned_iops)
          @scope = args[:scope] if args.key?(:scope)
        end
      end
      
      # Specification of a predefined machine type.
      class PredefinedMachineType
        include Google::Apis::Core::Hashable
      
        # The [machine type](https://cloud.google.com/compute/docs/machine-types). For
        # example: "n1-standard1".
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
        end
      end
      
      # Specify a Premium Tier Internet Data Transfer networking workload.
      class PremiumTierEgressWorkload
        include Google::Apis::Core::Hashable
      
        # Where the data is sent to.
        # Corresponds to the JSON property `destinationContinent`
        # @return [String]
        attr_accessor :destination_continent
      
        # An amount of usage over a time frame.
        # Corresponds to the JSON property `egressRate`
        # @return [Google::Apis::CloudbillingV1beta::Usage]
        attr_accessor :egress_rate
      
        # Which [region](https://cloud.google.com/compute/docs/regions-zones) the data
        # comes from.
        # Corresponds to the JSON property `sourceRegion`
        # @return [String]
        attr_accessor :source_region
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_continent = args[:destination_continent] if args.key?(:destination_continent)
          @egress_rate = args[:egress_rate] if args.key?(:egress_rate)
          @source_region = args[:source_region] if args.key?(:source_region)
        end
      end
      
      # The price of a SKU at a point int time.
      class Price
        include Google::Apis::Core::Hashable
      
        # Represents a point in time.
        # Corresponds to the JSON property `effectiveTime`
        # @return [Google::Apis::CloudbillingV1beta::EstimationTimePoint]
        attr_accessor :effective_time
      
        # The type of price. Possible values: "RATE"
        # Corresponds to the JSON property `priceType`
        # @return [String]
        attr_accessor :price_type
      
        # A SKU price consisting of tiered rates.
        # Corresponds to the JSON property `rate`
        # @return [Google::Apis::CloudbillingV1beta::Rate]
        attr_accessor :rate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @effective_time = args[:effective_time] if args.key?(:effective_time)
          @price_type = args[:price_type] if args.key?(:price_type)
          @rate = args[:rate] if args.key?(:rate)
        end
      end
      
      # A SKU price consisting of tiered rates.
      class Rate
        include Google::Apis::Core::Hashable
      
        # The service tiers.
        # Corresponds to the JSON property `tiers`
        # @return [Array<Google::Apis::CloudbillingV1beta::RateTier>]
        attr_accessor :tiers
      
        # The SKU's pricing unit. For example, if the tier price is $1 per 1000000 Bytes,
        # then this field will show 'By'. The `start_amount` field in each tier will be
        # in this unit.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # The SKU's count for the pricing unit. For example, if the tier price is $1 per
        # 1000000 Bytes, then this column will show 1000000.
        # Corresponds to the JSON property `unitCount`
        # @return [Float]
        attr_accessor :unit_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tiers = args[:tiers] if args.key?(:tiers)
          @unit = args[:unit] if args.key?(:unit)
          @unit_count = args[:unit_count] if args.key?(:unit_count)
        end
      end
      
      # Pricing details for a service tier.
      class RateTier
        include Google::Apis::Core::Hashable
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::CloudbillingV1beta::Money]
        attr_accessor :price
      
        # The magnitude of usage in which the tier interval begins. Example: "From 100
        # GiBi the price is $1 per byte" implies `start_amount` = 100
        # Corresponds to the JSON property `startAmount`
        # @return [Float]
        attr_accessor :start_amount
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @price = args[:price] if args.key?(:price)
          @start_amount = args[:start_amount] if args.key?(:start_amount)
        end
      end
      
      # Area contains only one location.
      class Regional
        include Google::Apis::Core::Hashable
      
        # The [location name](https://cloud.google.com/storage/docs/locations#available-
        # locations). For example: "us-central1" for region.
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
      
      # Configuration for a CostScenario. Specifies how costs are calculated.
      class ScenarioConfig
        include Google::Apis::Core::Hashable
      
        # Time frame for the estimate. Workloads must specify usage for this duration.
        # Duration must be at least 1 hour (3,600 seconds) and at most 10 years (315,360,
        # 000 seconds). The calculations for years and months are based on a 730-hour (2,
        # 628,000-second) month. For durations longer than one month (2,628,000 seconds),
        # the duration is rounded up to the next month, so the estimate shows you the
        # costs for full months. For example, a duration of 3,232,800 seconds (roughly 5
        # weeks) is rounded up to 2 months.
        # Corresponds to the JSON property `estimateDuration`
        # @return [String]
        attr_accessor :estimate_duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @estimate_duration = args[:estimate_duration] if args.key?(:estimate_duration)
        end
      end
      
      # Workload cost estimates for a single time segment.
      class SegmentCostEstimate
        include Google::Apis::Core::Hashable
      
        # Estimated costs for each commitment.
        # Corresponds to the JSON property `commitmentCostEstimates`
        # @return [Array<Google::Apis::CloudbillingV1beta::CommitmentCostEstimate>]
        attr_accessor :commitment_cost_estimates
      
        # Represents a point in time.
        # Corresponds to the JSON property `segmentStartTime`
        # @return [Google::Apis::CloudbillingV1beta::EstimationTimePoint]
        attr_accessor :segment_start_time
      
        # An estimated cost.
        # Corresponds to the JSON property `segmentTotalCostEstimate`
        # @return [Google::Apis::CloudbillingV1beta::CostEstimate]
        attr_accessor :segment_total_cost_estimate
      
        # Estimated costs for each workload.
        # Corresponds to the JSON property `workloadCostEstimates`
        # @return [Array<Google::Apis::CloudbillingV1beta::WorkloadCostEstimate>]
        attr_accessor :workload_cost_estimates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @commitment_cost_estimates = args[:commitment_cost_estimates] if args.key?(:commitment_cost_estimates)
          @segment_start_time = args[:segment_start_time] if args.key?(:segment_start_time)
          @segment_total_cost_estimate = args[:segment_total_cost_estimate] if args.key?(:segment_total_cost_estimate)
          @workload_cost_estimates = args[:workload_cost_estimates] if args.key?(:workload_cost_estimates)
        end
      end
      
      # Information about SKUs appearing in the cost estimate.
      class Sku
        include Google::Apis::Core::Hashable
      
        # The display name for the SKU. Example: A2 Instance Core running in Americas
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # A timeline of prices for a SKU in chronological order. Note: The API currently
        # only supports using a constant price for the entire estimation time frame so
        # this list will contain a single value.
        # Corresponds to the JSON property `prices`
        # @return [Array<Google::Apis::CloudbillingV1beta::Price>]
        attr_accessor :prices
      
        # The resource name for the SKU. Example: "services/DA34-426B-A397/skus/AA95-
        # CD31-42FE"
        # Corresponds to the JSON property `sku`
        # @return [String]
        attr_accessor :sku
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @prices = args[:prices] if args.key?(:prices)
          @sku = args[:sku] if args.key?(:sku)
        end
      end
      
      # Estimated cost for usage on a SKU.
      class SkuCostEstimate
        include Google::Apis::Core::Hashable
      
        # An estimated cost.
        # Corresponds to the JSON property `costEstimate`
        # @return [Google::Apis::CloudbillingV1beta::CostEstimate]
        attr_accessor :cost_estimate
      
        # The resource name for the SKU. Example: "services/DA34-426B-A397/skus/AA95-
        # CD31-42FE" More information about the SKU can be found in the `skus` field of
        # the `CostEstimationResult`.
        # Corresponds to the JSON property `sku`
        # @return [String]
        attr_accessor :sku
      
        # The amount of usage on this SKU.
        # Corresponds to the JSON property `usageAmount`
        # @return [Float]
        attr_accessor :usage_amount
      
        # The unit for the usage on this SKU.
        # Corresponds to the JSON property `usageUnit`
        # @return [String]
        attr_accessor :usage_unit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cost_estimate = args[:cost_estimate] if args.key?(:cost_estimate)
          @sku = args[:sku] if args.key?(:sku)
          @usage_amount = args[:usage_amount] if args.key?(:usage_amount)
          @usage_unit = args[:usage_unit] if args.key?(:usage_unit)
        end
      end
      
      # Specify Standard Tier Internet Data Transfer.
      class StandardTierEgressWorkload
        include Google::Apis::Core::Hashable
      
        # An amount of usage over a time frame.
        # Corresponds to the JSON property `egressRate`
        # @return [Google::Apis::CloudbillingV1beta::Usage]
        attr_accessor :egress_rate
      
        # Which [region](https://cloud.google.com/compute/docs/regions-zones) the data
        # is transferred from.
        # Corresponds to the JSON property `sourceRegion`
        # @return [String]
        attr_accessor :source_region
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @egress_rate = args[:egress_rate] if args.key?(:egress_rate)
          @source_region = args[:source_region] if args.key?(:source_region)
        end
      end
      
      # An amount of usage over a time frame.
      class Usage
        include Google::Apis::Core::Hashable
      
        # A timeline of usage rates. Consists of a series of entries, each of which
        # specifies a constant rate of usage during a time interval. Each entry contains
        # an effective time. The usage rate is in effect from that time until the
        # effective time of the subsequent entry, or, for the last entry, for the
        # remaining portion of estimation time frame. Effective times are specified as
        # an offset into the estimation time frame. Usage is considered to be zero until
        # the `effective_time` of the first entry. All subsequent entries must have an
        # effective time greater than the previous entry and less than the estimate time
        # frame. The effective time on all entries must be an integer number of hours.
        # Corresponds to the JSON property `usageRateTimeline`
        # @return [Google::Apis::CloudbillingV1beta::UsageRateTimeline]
        attr_accessor :usage_rate_timeline
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @usage_rate_timeline = args[:usage_rate_timeline] if args.key?(:usage_rate_timeline)
        end
      end
      
      # A timeline of usage rates. Consists of a series of entries, each of which
      # specifies a constant rate of usage during a time interval. Each entry contains
      # an effective time. The usage rate is in effect from that time until the
      # effective time of the subsequent entry, or, for the last entry, for the
      # remaining portion of estimation time frame. Effective times are specified as
      # an offset into the estimation time frame. Usage is considered to be zero until
      # the `effective_time` of the first entry. All subsequent entries must have an
      # effective time greater than the previous entry and less than the estimate time
      # frame. The effective time on all entries must be an integer number of hours.
      class UsageRateTimeline
        include Google::Apis::Core::Hashable
      
        # The unit for the usage rate in each timeline entry. If you provide an
        # incorrect unit for an instance, the correct unit is provided in the error
        # message. The supported units are a subset of [The Unified Code for Units of
        # Measure](https://ucum.org/ucum.html) standard: * **Time units (TIME-UNIT)** * `
        # s` second * `min` minute * `h` hour * `d` day * `wk` week * `mo` month * `yr`
        # year * `ms` millisecond * `us` microsecond * `ns` nanosecond * **Basic storage
        # units (BASIC-STORAGE-UNIT)** * `bit` bit * `By` byte * **Count units (COUNT-
        # UNIT)** * `count` count * **Prefixes (PREFIX)** * `k` kilo (10^3) * `M` mega (
        # 10^6) * `G` giga (10^9) * `T` tera (10^12) * `P` peta (10^15) * `Ki` kibi (2^
        # 10) * `Mi` mebi (2^20) * `Gi` gibi (2^30) * `Ti` tebi (2^40) * `Pi` pebi (2^50)
        # **Grammar** The grammar also includes these connectors: * `/` division or
        # ratio (as an infix operator). For example: `kBy/`email`` or `MiBy/10ms`. * `.`
        # multiplication or composition (as an infix operator). For example: `GBy.d` or `
        # k`watt`.h`. The grammar for a unit is as follows: ``` Expression = Component `
        # "." Component ` ` "/" Component ` ; Component = ( [ PREFIX ] UNIT | "%" ) [
        # Annotation ] | Annotation | "1" ; UNIT = TIME-UNIT | STORAGE-UNIT | DATA-UNIT |
        # COUNT-UNIT Annotation = "`" NAME "`" ; ``` Examples: * Request per second: `1/
        # s` or ``requests`/s` * GibiBytes: `GiBy` * GibiBytes * seconds: `GiBy.s`
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # The timeline entries. Each entry has a start time and usage rate. The start
        # time specifies the effective time of the usage rate. The entries must be
        # sorted by start time in an increasing order.
        # Corresponds to the JSON property `usageRateTimelineEntries`
        # @return [Array<Google::Apis::CloudbillingV1beta::UsageRateTimelineEntry>]
        attr_accessor :usage_rate_timeline_entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unit = args[:unit] if args.key?(:unit)
          @usage_rate_timeline_entries = args[:usage_rate_timeline_entries] if args.key?(:usage_rate_timeline_entries)
        end
      end
      
      # A usage rate timeline entry. Each entry specifies a constant usage rate during
      # a time interval.
      class UsageRateTimelineEntry
        include Google::Apis::Core::Hashable
      
        # Represents a point in time.
        # Corresponds to the JSON property `effectiveTime`
        # @return [Google::Apis::CloudbillingV1beta::EstimationTimePoint]
        attr_accessor :effective_time
      
        # The usage rate.
        # Corresponds to the JSON property `usageRate`
        # @return [Float]
        attr_accessor :usage_rate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @effective_time = args[:effective_time] if args.key?(:effective_time)
          @usage_rate = args[:usage_rate] if args.key?(:usage_rate)
        end
      end
      
      # VLAN attachment for Cloud Interconnect.
      class VlanAttachment
        include Google::Apis::Core::Hashable
      
        # Capacities in the [pricing table](https://cloud.google.com/vpc/network-pricing#
        # interconnect-pricing) Examples of capacity are: 50/100/200/300/400/500-Mbps, 1/
        # 2/5/10/20/50-Gbps.
        # Corresponds to the JSON property `bandwidth`
        # @return [String]
        attr_accessor :bandwidth
      
        # An amount of usage over a time frame.
        # Corresponds to the JSON property `vlanCount`
        # @return [Google::Apis::CloudbillingV1beta::Usage]
        attr_accessor :vlan_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bandwidth = args[:bandwidth] if args.key?(:bandwidth)
          @vlan_count = args[:vlan_count] if args.key?(:vlan_count)
        end
      end
      
      # Specifies a resource-based committed use discount (CUD).
      class VmResourceBasedCud
        include Google::Apis::Core::Hashable
      
        # Specification of a set of guest accelerators attached to a machine.
        # Corresponds to the JSON property `guestAccelerator`
        # @return [Google::Apis::CloudbillingV1beta::GuestAccelerator]
        attr_accessor :guest_accelerator
      
        # The machine series for CUD. For example: "n1" for general purpose N1 machine
        # type commitments. "n2" for general purpose N2 machine type commitments. "e2"
        # for general purpose E2 machine type commitments. "n2d" for general purpose N2D
        # machine type commitments. "t2d" for general purpose T2D machine type
        # commitments. "c2"/"c2d" for compute-optimized commitments. "m1"/"m2" for the
        # memory-optimized commitments. "a2' for the accelerator-optimized commitments.
        # Corresponds to the JSON property `machineSeries`
        # @return [String]
        attr_accessor :machine_series
      
        # Memory size of the VM in GB (2^30 bytes). Must be an increment of 0.25 (256 MB)
        # .
        # Corresponds to the JSON property `memorySizeGb`
        # @return [Float]
        attr_accessor :memory_size_gb
      
        # Commitment usage plan.
        # Corresponds to the JSON property `plan`
        # @return [String]
        attr_accessor :plan
      
        # The region where the VM runs. For example: "us-central1"
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # The number of vCPUs. The number of vCPUs must be an integer of 0 or more and
        # can be even or odd.
        # Corresponds to the JSON property `virtualCpuCount`
        # @return [Fixnum]
        attr_accessor :virtual_cpu_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @guest_accelerator = args[:guest_accelerator] if args.key?(:guest_accelerator)
          @machine_series = args[:machine_series] if args.key?(:machine_series)
          @memory_size_gb = args[:memory_size_gb] if args.key?(:memory_size_gb)
          @plan = args[:plan] if args.key?(:plan)
          @region = args[:region] if args.key?(:region)
          @virtual_cpu_count = args[:virtual_cpu_count] if args.key?(:virtual_cpu_count)
        end
      end
      
      # Specify VM to VM data transfer.
      class VmToVmEgressWorkload
        include Google::Apis::Core::Hashable
      
        # Data transfer between two regions.
        # Corresponds to the JSON property `interRegionEgress`
        # @return [Google::Apis::CloudbillingV1beta::InterRegionEgress]
        attr_accessor :inter_region_egress
      
        # Data transfer within the same region. When the source region and destination
        # region are in the same zone, using internal IP addresses, there isn't any
        # charge for data transfer.
        # Corresponds to the JSON property `intraRegionEgress`
        # @return [Google::Apis::CloudbillingV1beta::IntraRegionEgress]
        attr_accessor :intra_region_egress
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inter_region_egress = args[:inter_region_egress] if args.key?(:inter_region_egress)
          @intra_region_egress = args[:intra_region_egress] if args.key?(:intra_region_egress)
        end
      end
      
      # Specifies usage on a single Google Cloud product over a time frame. Each
      # Google Cloud product has its own message, containing specific product
      # configuration parameters of the product usage amounts along each dimension in
      # which the product is billed.
      class Workload
        include Google::Apis::Core::Hashable
      
        # Specifies usage for Cloud CDN Data Transfer.
        # Corresponds to the JSON property `cloudCdnEgressWorkload`
        # @return [Google::Apis::CloudbillingV1beta::CloudCdnEgressWorkload]
        attr_accessor :cloud_cdn_egress_workload
      
        # Specifies usage for Cloud CDN resources.
        # Corresponds to the JSON property `cloudCdnWorkload`
        # @return [Google::Apis::CloudbillingV1beta::CloudCdnWorkload]
        attr_accessor :cloud_cdn_workload
      
        # Includes the estimate for Interconnect Data Transfer only. To specify usage
        # for data transfer between VMs and internet end-points, use the Standard Tier
        # Internet Data Transfer interface.
        # Corresponds to the JSON property `cloudInterconnectEgressWorkload`
        # @return [Google::Apis::CloudbillingV1beta::CloudInterconnectEgressWorkload]
        attr_accessor :cloud_interconnect_egress_workload
      
        # Specifies usage for Cloud Interconnect resources.
        # Corresponds to the JSON property `cloudInterconnectWorkload`
        # @return [Google::Apis::CloudbillingV1beta::CloudInterconnectWorkload]
        attr_accessor :cloud_interconnect_workload
      
        # Specification of a network type. Network data transfer within Google Cloud
        # applies when you move or copy data from one Cloud Storage bucket to another or
        # when another Google Cloud service accesses data in your Cloud Storage bucket.
        # This includes the network data transfer within Google Cloud and the general
        # network usage.
        # Corresponds to the JSON property `cloudStorageEgressWorkload`
        # @return [Google::Apis::CloudbillingV1beta::CloudStorageEgressWorkload]
        attr_accessor :cloud_storage_egress_workload
      
        # Specifies usage of Cloud Storage resources.
        # Corresponds to the JSON property `cloudStorageWorkload`
        # @return [Google::Apis::CloudbillingV1beta::CloudStorageWorkload]
        attr_accessor :cloud_storage_workload
      
        # Specificies usage of a set of identical compute VM instances.
        # Corresponds to the JSON property `computeVmWorkload`
        # @return [Google::Apis::CloudbillingV1beta::ComputeVmWorkload]
        attr_accessor :compute_vm_workload
      
        # Required. A name for this workload. All workloads in a `CostScenario` must
        # have a unique `name`. Each `name` may be at most 128 characters long.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Specify a Premium Tier Internet Data Transfer networking workload.
        # Corresponds to the JSON property `premiumTierEgressWorkload`
        # @return [Google::Apis::CloudbillingV1beta::PremiumTierEgressWorkload]
        attr_accessor :premium_tier_egress_workload
      
        # Specify Standard Tier Internet Data Transfer.
        # Corresponds to the JSON property `standardTierEgressWorkload`
        # @return [Google::Apis::CloudbillingV1beta::StandardTierEgressWorkload]
        attr_accessor :standard_tier_egress_workload
      
        # Specify VM to VM data transfer.
        # Corresponds to the JSON property `vmToVmEgressWorkload`
        # @return [Google::Apis::CloudbillingV1beta::VmToVmEgressWorkload]
        attr_accessor :vm_to_vm_egress_workload
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_cdn_egress_workload = args[:cloud_cdn_egress_workload] if args.key?(:cloud_cdn_egress_workload)
          @cloud_cdn_workload = args[:cloud_cdn_workload] if args.key?(:cloud_cdn_workload)
          @cloud_interconnect_egress_workload = args[:cloud_interconnect_egress_workload] if args.key?(:cloud_interconnect_egress_workload)
          @cloud_interconnect_workload = args[:cloud_interconnect_workload] if args.key?(:cloud_interconnect_workload)
          @cloud_storage_egress_workload = args[:cloud_storage_egress_workload] if args.key?(:cloud_storage_egress_workload)
          @cloud_storage_workload = args[:cloud_storage_workload] if args.key?(:cloud_storage_workload)
          @compute_vm_workload = args[:compute_vm_workload] if args.key?(:compute_vm_workload)
          @name = args[:name] if args.key?(:name)
          @premium_tier_egress_workload = args[:premium_tier_egress_workload] if args.key?(:premium_tier_egress_workload)
          @standard_tier_egress_workload = args[:standard_tier_egress_workload] if args.key?(:standard_tier_egress_workload)
          @vm_to_vm_egress_workload = args[:vm_to_vm_egress_workload] if args.key?(:vm_to_vm_egress_workload)
        end
      end
      
      # Estimated cost for a workload.
      class WorkloadCostEstimate
        include Google::Apis::Core::Hashable
      
        # The name of the workload, as specified in the `CostScenario`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Estimated costs for each SKU in the workload.
        # Corresponds to the JSON property `skuCostEstimates`
        # @return [Array<Google::Apis::CloudbillingV1beta::SkuCostEstimate>]
        attr_accessor :sku_cost_estimates
      
        # An estimated cost.
        # Corresponds to the JSON property `workloadTotalCostEstimate`
        # @return [Google::Apis::CloudbillingV1beta::CostEstimate]
        attr_accessor :workload_total_cost_estimate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @sku_cost_estimates = args[:sku_cost_estimates] if args.key?(:sku_cost_estimates)
          @workload_total_cost_estimate = args[:workload_total_cost_estimate] if args.key?(:workload_total_cost_estimate)
        end
      end
    end
  end
end
