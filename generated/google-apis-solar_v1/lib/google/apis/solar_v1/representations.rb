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
    module SolarV1
      
      class BuildingInsights
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CashPurchaseSavings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataLayers
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FinancedPurchaseSavings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FinancialAnalysis
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FinancialDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpBody
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LatLng
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LatLngBox
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LeasingSavings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Money
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RoofSegmentSizeAndSunshineStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RoofSegmentSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SavingsOverTime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SizeAndSunshineStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SolarPanel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SolarPanelConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SolarPotential
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuildingInsights
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :administrative_area, as: 'administrativeArea'
          property :bounding_box, as: 'boundingBox', class: Google::Apis::SolarV1::LatLngBox, decorator: Google::Apis::SolarV1::LatLngBox::Representation
      
          property :center, as: 'center', class: Google::Apis::SolarV1::LatLng, decorator: Google::Apis::SolarV1::LatLng::Representation
      
          property :imagery_date, as: 'imageryDate', class: Google::Apis::SolarV1::Date, decorator: Google::Apis::SolarV1::Date::Representation
      
          property :imagery_processed_date, as: 'imageryProcessedDate', class: Google::Apis::SolarV1::Date, decorator: Google::Apis::SolarV1::Date::Representation
      
          property :imagery_quality, as: 'imageryQuality'
          property :name, as: 'name'
          property :postal_code, as: 'postalCode'
          property :region_code, as: 'regionCode'
          property :solar_potential, as: 'solarPotential', class: Google::Apis::SolarV1::SolarPotential, decorator: Google::Apis::SolarV1::SolarPotential::Representation
      
          property :statistical_area, as: 'statisticalArea'
        end
      end
      
      class CashPurchaseSavings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :out_of_pocket_cost, as: 'outOfPocketCost', class: Google::Apis::SolarV1::Money, decorator: Google::Apis::SolarV1::Money::Representation
      
          property :payback_years, as: 'paybackYears'
          property :rebate_value, as: 'rebateValue', class: Google::Apis::SolarV1::Money, decorator: Google::Apis::SolarV1::Money::Representation
      
          property :savings, as: 'savings', class: Google::Apis::SolarV1::SavingsOverTime, decorator: Google::Apis::SolarV1::SavingsOverTime::Representation
      
          property :upfront_cost, as: 'upfrontCost', class: Google::Apis::SolarV1::Money, decorator: Google::Apis::SolarV1::Money::Representation
      
        end
      end
      
      class DataLayers
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annual_flux_url, as: 'annualFluxUrl'
          property :dsm_url, as: 'dsmUrl'
          collection :hourly_shade_urls, as: 'hourlyShadeUrls'
          property :imagery_date, as: 'imageryDate', class: Google::Apis::SolarV1::Date, decorator: Google::Apis::SolarV1::Date::Representation
      
          property :imagery_processed_date, as: 'imageryProcessedDate', class: Google::Apis::SolarV1::Date, decorator: Google::Apis::SolarV1::Date::Representation
      
          property :imagery_quality, as: 'imageryQuality'
          property :mask_url, as: 'maskUrl'
          property :monthly_flux_url, as: 'monthlyFluxUrl'
          property :rgb_url, as: 'rgbUrl'
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
      
      class FinancedPurchaseSavings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annual_loan_payment, as: 'annualLoanPayment', class: Google::Apis::SolarV1::Money, decorator: Google::Apis::SolarV1::Money::Representation
      
          property :loan_interest_rate, as: 'loanInterestRate'
          property :rebate_value, as: 'rebateValue', class: Google::Apis::SolarV1::Money, decorator: Google::Apis::SolarV1::Money::Representation
      
          property :savings, as: 'savings', class: Google::Apis::SolarV1::SavingsOverTime, decorator: Google::Apis::SolarV1::SavingsOverTime::Representation
      
        end
      end
      
      class FinancialAnalysis
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :average_kwh_per_month, as: 'averageKwhPerMonth'
          property :cash_purchase_savings, as: 'cashPurchaseSavings', class: Google::Apis::SolarV1::CashPurchaseSavings, decorator: Google::Apis::SolarV1::CashPurchaseSavings::Representation
      
          property :default_bill, as: 'defaultBill'
          property :financed_purchase_savings, as: 'financedPurchaseSavings', class: Google::Apis::SolarV1::FinancedPurchaseSavings, decorator: Google::Apis::SolarV1::FinancedPurchaseSavings::Representation
      
          property :financial_details, as: 'financialDetails', class: Google::Apis::SolarV1::FinancialDetails, decorator: Google::Apis::SolarV1::FinancialDetails::Representation
      
          property :leasing_savings, as: 'leasingSavings', class: Google::Apis::SolarV1::LeasingSavings, decorator: Google::Apis::SolarV1::LeasingSavings::Representation
      
          property :monthly_bill, as: 'monthlyBill', class: Google::Apis::SolarV1::Money, decorator: Google::Apis::SolarV1::Money::Representation
      
          property :panel_config_index, as: 'panelConfigIndex'
        end
      end
      
      class FinancialDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cost_of_electricity_without_solar, as: 'costOfElectricityWithoutSolar', class: Google::Apis::SolarV1::Money, decorator: Google::Apis::SolarV1::Money::Representation
      
          property :federal_incentive, as: 'federalIncentive', class: Google::Apis::SolarV1::Money, decorator: Google::Apis::SolarV1::Money::Representation
      
          property :initial_ac_kwh_per_year, as: 'initialAcKwhPerYear'
          property :lifetime_srec_total, as: 'lifetimeSrecTotal', class: Google::Apis::SolarV1::Money, decorator: Google::Apis::SolarV1::Money::Representation
      
          property :net_metering_allowed, as: 'netMeteringAllowed'
          property :percentage_exported_to_grid, as: 'percentageExportedToGrid'
          property :remaining_lifetime_utility_bill, as: 'remainingLifetimeUtilityBill', class: Google::Apis::SolarV1::Money, decorator: Google::Apis::SolarV1::Money::Representation
      
          property :solar_percentage, as: 'solarPercentage'
          property :state_incentive, as: 'stateIncentive', class: Google::Apis::SolarV1::Money, decorator: Google::Apis::SolarV1::Money::Representation
      
          property :utility_incentive, as: 'utilityIncentive', class: Google::Apis::SolarV1::Money, decorator: Google::Apis::SolarV1::Money::Representation
      
        end
      end
      
      class HttpBody
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_type, as: 'contentType'
          property :data, :base64 => true, as: 'data'
          collection :extensions, as: 'extensions'
        end
      end
      
      class LatLng
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
        end
      end
      
      class LatLngBox
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ne, as: 'ne', class: Google::Apis::SolarV1::LatLng, decorator: Google::Apis::SolarV1::LatLng::Representation
      
          property :sw, as: 'sw', class: Google::Apis::SolarV1::LatLng, decorator: Google::Apis::SolarV1::LatLng::Representation
      
        end
      end
      
      class LeasingSavings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annual_leasing_cost, as: 'annualLeasingCost', class: Google::Apis::SolarV1::Money, decorator: Google::Apis::SolarV1::Money::Representation
      
          property :leases_allowed, as: 'leasesAllowed'
          property :leases_supported, as: 'leasesSupported'
          property :savings, as: 'savings', class: Google::Apis::SolarV1::SavingsOverTime, decorator: Google::Apis::SolarV1::SavingsOverTime::Representation
      
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
      
      class RoofSegmentSizeAndSunshineStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :azimuth_degrees, as: 'azimuthDegrees'
          property :bounding_box, as: 'boundingBox', class: Google::Apis::SolarV1::LatLngBox, decorator: Google::Apis::SolarV1::LatLngBox::Representation
      
          property :center, as: 'center', class: Google::Apis::SolarV1::LatLng, decorator: Google::Apis::SolarV1::LatLng::Representation
      
          property :pitch_degrees, as: 'pitchDegrees'
          property :plane_height_at_center_meters, as: 'planeHeightAtCenterMeters'
          property :stats, as: 'stats', class: Google::Apis::SolarV1::SizeAndSunshineStats, decorator: Google::Apis::SolarV1::SizeAndSunshineStats::Representation
      
        end
      end
      
      class RoofSegmentSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :azimuth_degrees, as: 'azimuthDegrees'
          property :panels_count, as: 'panelsCount'
          property :pitch_degrees, as: 'pitchDegrees'
          property :segment_index, as: 'segmentIndex'
          property :yearly_energy_dc_kwh, as: 'yearlyEnergyDcKwh'
        end
      end
      
      class SavingsOverTime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :financially_viable, as: 'financiallyViable'
          property :present_value_of_savings_lifetime, as: 'presentValueOfSavingsLifetime', class: Google::Apis::SolarV1::Money, decorator: Google::Apis::SolarV1::Money::Representation
      
          property :present_value_of_savings_year20, as: 'presentValueOfSavingsYear20', class: Google::Apis::SolarV1::Money, decorator: Google::Apis::SolarV1::Money::Representation
      
          property :savings_lifetime, as: 'savingsLifetime', class: Google::Apis::SolarV1::Money, decorator: Google::Apis::SolarV1::Money::Representation
      
          property :savings_year1, as: 'savingsYear1', class: Google::Apis::SolarV1::Money, decorator: Google::Apis::SolarV1::Money::Representation
      
          property :savings_year20, as: 'savingsYear20', class: Google::Apis::SolarV1::Money, decorator: Google::Apis::SolarV1::Money::Representation
      
        end
      end
      
      class SizeAndSunshineStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :area_meters2, as: 'areaMeters2'
          property :ground_area_meters2, as: 'groundAreaMeters2'
          collection :sunshine_quantiles, as: 'sunshineQuantiles'
        end
      end
      
      class SolarPanel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :center, as: 'center', class: Google::Apis::SolarV1::LatLng, decorator: Google::Apis::SolarV1::LatLng::Representation
      
          property :orientation, as: 'orientation'
          property :segment_index, as: 'segmentIndex'
          property :yearly_energy_dc_kwh, as: 'yearlyEnergyDcKwh'
        end
      end
      
      class SolarPanelConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :panels_count, as: 'panelsCount'
          collection :roof_segment_summaries, as: 'roofSegmentSummaries', class: Google::Apis::SolarV1::RoofSegmentSummary, decorator: Google::Apis::SolarV1::RoofSegmentSummary::Representation
      
          property :yearly_energy_dc_kwh, as: 'yearlyEnergyDcKwh'
        end
      end
      
      class SolarPotential
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :building_stats, as: 'buildingStats', class: Google::Apis::SolarV1::SizeAndSunshineStats, decorator: Google::Apis::SolarV1::SizeAndSunshineStats::Representation
      
          property :carbon_offset_factor_kg_per_mwh, as: 'carbonOffsetFactorKgPerMwh'
          collection :financial_analyses, as: 'financialAnalyses', class: Google::Apis::SolarV1::FinancialAnalysis, decorator: Google::Apis::SolarV1::FinancialAnalysis::Representation
      
          property :max_array_area_meters2, as: 'maxArrayAreaMeters2'
          property :max_array_panels_count, as: 'maxArrayPanelsCount'
          property :max_sunshine_hours_per_year, as: 'maxSunshineHoursPerYear'
          property :panel_capacity_watts, as: 'panelCapacityWatts'
          property :panel_height_meters, as: 'panelHeightMeters'
          property :panel_lifetime_years, as: 'panelLifetimeYears'
          property :panel_width_meters, as: 'panelWidthMeters'
          collection :roof_segment_stats, as: 'roofSegmentStats', class: Google::Apis::SolarV1::RoofSegmentSizeAndSunshineStats, decorator: Google::Apis::SolarV1::RoofSegmentSizeAndSunshineStats::Representation
      
          collection :solar_panel_configs, as: 'solarPanelConfigs', class: Google::Apis::SolarV1::SolarPanelConfig, decorator: Google::Apis::SolarV1::SolarPanelConfig::Representation
      
          collection :solar_panels, as: 'solarPanels', class: Google::Apis::SolarV1::SolarPanel, decorator: Google::Apis::SolarV1::SolarPanel::Representation
      
          property :whole_roof_stats, as: 'wholeRoofStats', class: Google::Apis::SolarV1::SizeAndSunshineStats, decorator: Google::Apis::SolarV1::SizeAndSunshineStats::Representation
      
        end
      end
    end
  end
end
