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
      
      # Response message for `Solar.FindClosestBuildingInsights`. Information about
      # the location, dimensions, and solar potential of a building.
      class BuildingInsights
        include Google::Apis::Core::Hashable
      
        # Administrative area 1 (e.g., in the US, the state) that contains this building.
        # For example, in the US, the abbreviation might be "MA" or "CA."
        # Corresponds to the JSON property `administrativeArea`
        # @return [String]
        attr_accessor :administrative_area
      
        # A bounding box in lat/lng coordinates.
        # Corresponds to the JSON property `boundingBox`
        # @return [Google::Apis::SolarV1::LatLngBox]
        attr_accessor :bounding_box
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this object must conform to the WGS84 standard. Values
        # must be within normalized ranges.
        # Corresponds to the JSON property `center`
        # @return [Google::Apis::SolarV1::LatLng]
        attr_accessor :center
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `imageryDate`
        # @return [Google::Apis::SolarV1::Date]
        attr_accessor :imagery_date
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `imageryProcessedDate`
        # @return [Google::Apis::SolarV1::Date]
        attr_accessor :imagery_processed_date
      
        # The quality of the imagery used to compute the data for this building.
        # Corresponds to the JSON property `imageryQuality`
        # @return [String]
        attr_accessor :imagery_quality
      
        # The resource name for the building, of the format `building/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Postal code (e.g., US zip code) this building is contained by.
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # Region code for the country (or region) this building is in.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # Information about the solar potential of a building. A number of fields in
        # this are defined in terms of "panels". The fields panel_capacity_watts,
        # panel_height_meters, and panel_width_meters describe the parameters of the
        # model of panel used in these calculations.
        # Corresponds to the JSON property `solarPotential`
        # @return [Google::Apis::SolarV1::SolarPotential]
        attr_accessor :solar_potential
      
        # Statistical area (e.g., US census tract) this building is in.
        # Corresponds to the JSON property `statisticalArea`
        # @return [String]
        attr_accessor :statistical_area
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @administrative_area = args[:administrative_area] if args.key?(:administrative_area)
          @bounding_box = args[:bounding_box] if args.key?(:bounding_box)
          @center = args[:center] if args.key?(:center)
          @imagery_date = args[:imagery_date] if args.key?(:imagery_date)
          @imagery_processed_date = args[:imagery_processed_date] if args.key?(:imagery_processed_date)
          @imagery_quality = args[:imagery_quality] if args.key?(:imagery_quality)
          @name = args[:name] if args.key?(:name)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @region_code = args[:region_code] if args.key?(:region_code)
          @solar_potential = args[:solar_potential] if args.key?(:solar_potential)
          @statistical_area = args[:statistical_area] if args.key?(:statistical_area)
        end
      end
      
      # Cost and benefit of an outright purchase of a particular configuration of
      # solar panels with a particular electricity usage.
      class CashPurchaseSavings
        include Google::Apis::Core::Hashable
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `outOfPocketCost`
        # @return [Google::Apis::SolarV1::Money]
        attr_accessor :out_of_pocket_cost
      
        # Number of years until payback occurs. A negative value means payback never
        # occurs within the lifetime period.
        # Corresponds to the JSON property `paybackYears`
        # @return [Float]
        attr_accessor :payback_years
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `rebateValue`
        # @return [Google::Apis::SolarV1::Money]
        attr_accessor :rebate_value
      
        # Financial information that's shared between different financing methods.
        # Corresponds to the JSON property `savings`
        # @return [Google::Apis::SolarV1::SavingsOverTime]
        attr_accessor :savings
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `upfrontCost`
        # @return [Google::Apis::SolarV1::Money]
        attr_accessor :upfront_cost
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @out_of_pocket_cost = args[:out_of_pocket_cost] if args.key?(:out_of_pocket_cost)
          @payback_years = args[:payback_years] if args.key?(:payback_years)
          @rebate_value = args[:rebate_value] if args.key?(:rebate_value)
          @savings = args[:savings] if args.key?(:savings)
          @upfront_cost = args[:upfront_cost] if args.key?(:upfront_cost)
        end
      end
      
      # Information about the solar potential of a region. The actual data are
      # contained in a number of GeoTIFF files covering the requested region, for
      # which this message contains URLs: Each string in the `DataLayers` message
      # contains a URL from which the corresponding GeoTIFF can be fetched. These URLs
      # are valid for a few hours after they've been generated. Most of the GeoTIFF
      # files are at a resolution of 0.1m/pixel, but the monthly flux file is at 0.5m/
      # pixel, and the hourly shade files are at 1m/pixel. If a `pixel_size_meters`
      # value was specified in the `GetDataLayersRequest`, then the minimum resolution
      # in the GeoTIFF files will be that value.
      class DataLayers
        include Google::Apis::Core::Hashable
      
        # The URL for the annual flux map (annual sunlight on roofs) of the region.
        # Values are kWh/kW/year. This is *unmasked flux*: flux is computed for every
        # location, not just building rooftops. Invalid locations are stored as -9999:
        # locations outside our coverage area will be invalid, and a few locations
        # inside the coverage area, where we were unable to calculate flux, will also be
        # invalid.
        # Corresponds to the JSON property `annualFluxUrl`
        # @return [String]
        attr_accessor :annual_flux_url
      
        # The URL for an image of the DSM (Digital Surface Model) of the region. Values
        # are in meters above EGM96 geoid (i.e., sea level). Invalid locations (where we
        # don't have data) are stored as -9999.
        # Corresponds to the JSON property `dsmUrl`
        # @return [String]
        attr_accessor :dsm_url
      
        # Twelve URLs for hourly shade, corresponding to January...December, in order.
        # Each GeoTIFF will contain 24 bands, corresponding to the 24 hours of the day.
        # Each pixel is a 32 bit integer, corresponding to the (up to) 31 days of that
        # month; a 1 bit means that the corresponding location is able to see the sun at
        # that day, of that hour, of that month. Invalid locations are stored as -9999 (
        # since this is negative, it has bit 31 set, and no valid value could have bit
        # 31 set as that would correspond to the 32nd day of the month). An example may
        # be useful. If you want to know whether a point (at pixel location (x, y)) saw
        # sun at 4pm on the 22nd of June you would: 1. fetch the sixth URL in this list (
        # corresponding to June). 1. look up the 17th channel (corresponding to 4pm). 1.
        # read the 32-bit value at (x, y). 1. read bit 21 of the value (corresponding to
        # the 22nd of the month). 1. if that bit is a 1, then that spot saw the sun at
        # 4pm 22 June. More formally: Given `month` (1-12), `day` (1...month max;
        # February has 28 days) and `hour` (0-23), the shade/sun for that month/day/hour
        # at a position `(x, y)` is the bit ``` (hourly_shade[month - 1])(x, y)[hour] & (
        # 1 << (day - 1)) ``` where `(x, y)` is spatial indexing, `[month - 1]` refers
        # to fetching the `month - 1`st URL (indexing from zero), `[hour]` is indexing
        # into the channels, and a final non-zero result means "sunny". There are no
        # leap days, and DST doesn't exist (all days are 24 hours long; noon is always "
        # standard time" noon).
        # Corresponds to the JSON property `hourlyShadeUrls`
        # @return [Array<String>]
        attr_accessor :hourly_shade_urls
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `imageryDate`
        # @return [Google::Apis::SolarV1::Date]
        attr_accessor :imagery_date
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `imageryProcessedDate`
        # @return [Google::Apis::SolarV1::Date]
        attr_accessor :imagery_processed_date
      
        # The quality of the result's imagery.
        # Corresponds to the JSON property `imageryQuality`
        # @return [String]
        attr_accessor :imagery_quality
      
        # The URL for the building mask image: one bit per pixel saying whether that
        # pixel is considered to be part of a rooftop or not.
        # Corresponds to the JSON property `maskUrl`
        # @return [String]
        attr_accessor :mask_url
      
        # The URL for the monthly flux map (sunlight on roofs, broken down by month) of
        # the region. Values are kWh/kW/year. The GeoTIFF pointed to by this URL will
        # contain twelve bands, corresponding to January...December, in order.
        # Corresponds to the JSON property `monthlyFluxUrl`
        # @return [String]
        attr_accessor :monthly_flux_url
      
        # The URL for an image of RGB data (aerial photo) of the region.
        # Corresponds to the JSON property `rgbUrl`
        # @return [String]
        attr_accessor :rgb_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annual_flux_url = args[:annual_flux_url] if args.key?(:annual_flux_url)
          @dsm_url = args[:dsm_url] if args.key?(:dsm_url)
          @hourly_shade_urls = args[:hourly_shade_urls] if args.key?(:hourly_shade_urls)
          @imagery_date = args[:imagery_date] if args.key?(:imagery_date)
          @imagery_processed_date = args[:imagery_processed_date] if args.key?(:imagery_processed_date)
          @imagery_quality = args[:imagery_quality] if args.key?(:imagery_quality)
          @mask_url = args[:mask_url] if args.key?(:mask_url)
          @monthly_flux_url = args[:monthly_flux_url] if args.key?(:monthly_flux_url)
          @rgb_url = args[:rgb_url] if args.key?(:rgb_url)
        end
      end
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values. * A month
      # and day, with a zero year (for example, an anniversary). * A year on its own,
      # with a zero month and a zero day. * A year and month, with a zero day (for
      # example, a credit card expiration date). Related types: * google.type.
      # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
      class Date
        include Google::Apis::Core::Hashable
      
        # Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        # specify a year by itself or a year and month where the day isn't significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        # and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        # year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # Cost and benefit of using a loan to buy a particular configuration of solar
      # panels with a particular electricity usage.
      class FinancedPurchaseSavings
        include Google::Apis::Core::Hashable
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `annualLoanPayment`
        # @return [Google::Apis::SolarV1::Money]
        attr_accessor :annual_loan_payment
      
        # The interest rate on loans assumed in this set of calculations.
        # Corresponds to the JSON property `loanInterestRate`
        # @return [Float]
        attr_accessor :loan_interest_rate
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `rebateValue`
        # @return [Google::Apis::SolarV1::Money]
        attr_accessor :rebate_value
      
        # Financial information that's shared between different financing methods.
        # Corresponds to the JSON property `savings`
        # @return [Google::Apis::SolarV1::SavingsOverTime]
        attr_accessor :savings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annual_loan_payment = args[:annual_loan_payment] if args.key?(:annual_loan_payment)
          @loan_interest_rate = args[:loan_interest_rate] if args.key?(:loan_interest_rate)
          @rebate_value = args[:rebate_value] if args.key?(:rebate_value)
          @savings = args[:savings] if args.key?(:savings)
        end
      end
      
      # Analysis of the cost and benefits of the optimum solar layout for a particular
      # electric bill size.
      class FinancialAnalysis
        include Google::Apis::Core::Hashable
      
        # How much electricity the house uses in an average month, based on the bill
        # size and the local electricity rates.
        # Corresponds to the JSON property `averageKwhPerMonth`
        # @return [Float]
        attr_accessor :average_kwh_per_month
      
        # Cost and benefit of an outright purchase of a particular configuration of
        # solar panels with a particular electricity usage.
        # Corresponds to the JSON property `cashPurchaseSavings`
        # @return [Google::Apis::SolarV1::CashPurchaseSavings]
        attr_accessor :cash_purchase_savings
      
        # Whether this is the bill size selected to be the default bill for the area
        # this building is in. Exactly one `FinancialAnalysis` in `
        # BuildingSolarPotential` should have `default_bill` set.
        # Corresponds to the JSON property `defaultBill`
        # @return [Boolean]
        attr_accessor :default_bill
        alias_method :default_bill?, :default_bill
      
        # Cost and benefit of using a loan to buy a particular configuration of solar
        # panels with a particular electricity usage.
        # Corresponds to the JSON property `financedPurchaseSavings`
        # @return [Google::Apis::SolarV1::FinancedPurchaseSavings]
        attr_accessor :financed_purchase_savings
      
        # Details of a financial analysis. Some of these details are already stored at
        # higher levels (e.g., out of pocket cost). Total money amounts are over a
        # lifetime period defined by the panel_lifetime_years field in SolarPotential.
        # Note: The out of pocket cost of purchasing the panels is given in the
        # out_of_pocket_cost field in CashPurchaseSavings.
        # Corresponds to the JSON property `financialDetails`
        # @return [Google::Apis::SolarV1::FinancialDetails]
        attr_accessor :financial_details
      
        # Cost and benefit of leasing a particular configuration of solar panels with a
        # particular electricity usage.
        # Corresponds to the JSON property `leasingSavings`
        # @return [Google::Apis::SolarV1::LeasingSavings]
        attr_accessor :leasing_savings
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `monthlyBill`
        # @return [Google::Apis::SolarV1::Money]
        attr_accessor :monthly_bill
      
        # Index in solar_panel_configs of the optimum solar layout for this bill size.
        # This can be -1 indicating that there is no layout. In this case, the remaining
        # submessages will be omitted.
        # Corresponds to the JSON property `panelConfigIndex`
        # @return [Fixnum]
        attr_accessor :panel_config_index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @average_kwh_per_month = args[:average_kwh_per_month] if args.key?(:average_kwh_per_month)
          @cash_purchase_savings = args[:cash_purchase_savings] if args.key?(:cash_purchase_savings)
          @default_bill = args[:default_bill] if args.key?(:default_bill)
          @financed_purchase_savings = args[:financed_purchase_savings] if args.key?(:financed_purchase_savings)
          @financial_details = args[:financial_details] if args.key?(:financial_details)
          @leasing_savings = args[:leasing_savings] if args.key?(:leasing_savings)
          @monthly_bill = args[:monthly_bill] if args.key?(:monthly_bill)
          @panel_config_index = args[:panel_config_index] if args.key?(:panel_config_index)
        end
      end
      
      # Details of a financial analysis. Some of these details are already stored at
      # higher levels (e.g., out of pocket cost). Total money amounts are over a
      # lifetime period defined by the panel_lifetime_years field in SolarPotential.
      # Note: The out of pocket cost of purchasing the panels is given in the
      # out_of_pocket_cost field in CashPurchaseSavings.
      class FinancialDetails
        include Google::Apis::Core::Hashable
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `costOfElectricityWithoutSolar`
        # @return [Google::Apis::SolarV1::Money]
        attr_accessor :cost_of_electricity_without_solar
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `federalIncentive`
        # @return [Google::Apis::SolarV1::Money]
        attr_accessor :federal_incentive
      
        # How many AC kWh we think the solar panels will generate in their first year.
        # Corresponds to the JSON property `initialAcKwhPerYear`
        # @return [Float]
        attr_accessor :initial_ac_kwh_per_year
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `lifetimeSrecTotal`
        # @return [Google::Apis::SolarV1::Money]
        attr_accessor :lifetime_srec_total
      
        # Whether net metering is allowed.
        # Corresponds to the JSON property `netMeteringAllowed`
        # @return [Boolean]
        attr_accessor :net_metering_allowed
        alias_method :net_metering_allowed?, :net_metering_allowed
      
        # The percentage (0-100) of solar electricity production we assumed was exported
        # to the grid, based on the first quarter of production. This affects the
        # calculations if net metering is not allowed.
        # Corresponds to the JSON property `percentageExportedToGrid`
        # @return [Float]
        attr_accessor :percentage_exported_to_grid
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `remainingLifetimeUtilityBill`
        # @return [Google::Apis::SolarV1::Money]
        attr_accessor :remaining_lifetime_utility_bill
      
        # Percentage (0-100) of the user's power supplied by solar. Valid for the first
        # year but approximately correct for future years.
        # Corresponds to the JSON property `solarPercentage`
        # @return [Float]
        attr_accessor :solar_percentage
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `stateIncentive`
        # @return [Google::Apis::SolarV1::Money]
        attr_accessor :state_incentive
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `utilityIncentive`
        # @return [Google::Apis::SolarV1::Money]
        attr_accessor :utility_incentive
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cost_of_electricity_without_solar = args[:cost_of_electricity_without_solar] if args.key?(:cost_of_electricity_without_solar)
          @federal_incentive = args[:federal_incentive] if args.key?(:federal_incentive)
          @initial_ac_kwh_per_year = args[:initial_ac_kwh_per_year] if args.key?(:initial_ac_kwh_per_year)
          @lifetime_srec_total = args[:lifetime_srec_total] if args.key?(:lifetime_srec_total)
          @net_metering_allowed = args[:net_metering_allowed] if args.key?(:net_metering_allowed)
          @percentage_exported_to_grid = args[:percentage_exported_to_grid] if args.key?(:percentage_exported_to_grid)
          @remaining_lifetime_utility_bill = args[:remaining_lifetime_utility_bill] if args.key?(:remaining_lifetime_utility_bill)
          @solar_percentage = args[:solar_percentage] if args.key?(:solar_percentage)
          @state_incentive = args[:state_incentive] if args.key?(:state_incentive)
          @utility_incentive = args[:utility_incentive] if args.key?(:utility_incentive)
        end
      end
      
      # Message that represents an arbitrary HTTP body. It should only be used for
      # payload formats that can't be represented as JSON, such as raw binary or an
      # HTML page. This message can be used both in streaming and non-streaming API
      # methods in the request as well as the response. It can be used as a top-level
      # request field, which is convenient if one wants to extract parameters from
      # either the URL or HTTP template into the request fields and also want access
      # to the raw HTTP body. Example: message GetResourceRequest ` // A unique
      # request id. string request_id = 1; // The raw HTTP body is bound to this field.
      # google.api.HttpBody http_body = 2; ` service ResourceService ` rpc
      # GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc
      # UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); ` Example
      # with streaming methods: service CaldavService ` rpc GetCalendar(stream google.
      # api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream
      # google.api.HttpBody) returns (stream google.api.HttpBody); ` Use of this type
      # only changes how the request and response bodies are handled, all other
      # features will continue to work unchanged.
      class HttpBody
        include Google::Apis::Core::Hashable
      
        # The HTTP Content-Type header value specifying the content type of the body.
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # The HTTP request/response body as raw binary.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # Application specific response metadata. Must be set in the first response for
        # streaming APIs.
        # Corresponds to the JSON property `extensions`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :extensions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_type = args[:content_type] if args.key?(:content_type)
          @data = args[:data] if args.key?(:data)
          @extensions = args[:extensions] if args.key?(:extensions)
        end
      end
      
      # An object that represents a latitude/longitude pair. This is expressed as a
      # pair of doubles to represent degrees latitude and degrees longitude. Unless
      # specified otherwise, this object must conform to the WGS84 standard. Values
      # must be within normalized ranges.
      class LatLng
        include Google::Apis::Core::Hashable
      
        # The latitude in degrees. It must be in the range [-90.0, +90.0].
        # Corresponds to the JSON property `latitude`
        # @return [Float]
        attr_accessor :latitude
      
        # The longitude in degrees. It must be in the range [-180.0, +180.0].
        # Corresponds to the JSON property `longitude`
        # @return [Float]
        attr_accessor :longitude
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @latitude = args[:latitude] if args.key?(:latitude)
          @longitude = args[:longitude] if args.key?(:longitude)
        end
      end
      
      # A bounding box in lat/lng coordinates.
      class LatLngBox
        include Google::Apis::Core::Hashable
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this object must conform to the WGS84 standard. Values
        # must be within normalized ranges.
        # Corresponds to the JSON property `ne`
        # @return [Google::Apis::SolarV1::LatLng]
        attr_accessor :ne
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this object must conform to the WGS84 standard. Values
        # must be within normalized ranges.
        # Corresponds to the JSON property `sw`
        # @return [Google::Apis::SolarV1::LatLng]
        attr_accessor :sw
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ne = args[:ne] if args.key?(:ne)
          @sw = args[:sw] if args.key?(:sw)
        end
      end
      
      # Cost and benefit of leasing a particular configuration of solar panels with a
      # particular electricity usage.
      class LeasingSavings
        include Google::Apis::Core::Hashable
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `annualLeasingCost`
        # @return [Google::Apis::SolarV1::Money]
        attr_accessor :annual_leasing_cost
      
        # Whether leases are allowed in this juristiction (leases are not allowed in
        # some states). If this field is false, then the values in this message should
        # probably be ignored.
        # Corresponds to the JSON property `leasesAllowed`
        # @return [Boolean]
        attr_accessor :leases_allowed
        alias_method :leases_allowed?, :leases_allowed
      
        # Whether leases are supported in this juristiction by the financial calculation
        # engine. If this field is false, then the values in this message should
        # probably be ignored. This is independent of `leases_allowed`: in some areas
        # leases are allowed, but under conditions that aren't handled by the financial
        # models.
        # Corresponds to the JSON property `leasesSupported`
        # @return [Boolean]
        attr_accessor :leases_supported
        alias_method :leases_supported?, :leases_supported
      
        # Financial information that's shared between different financing methods.
        # Corresponds to the JSON property `savings`
        # @return [Google::Apis::SolarV1::SavingsOverTime]
        attr_accessor :savings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annual_leasing_cost = args[:annual_leasing_cost] if args.key?(:annual_leasing_cost)
          @leases_allowed = args[:leases_allowed] if args.key?(:leases_allowed)
          @leases_supported = args[:leases_supported] if args.key?(:leases_supported)
          @savings = args[:savings] if args.key?(:savings)
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
      
      # Information about the size and sunniness quantiles of a roof segment.
      class RoofSegmentSizeAndSunshineStats
        include Google::Apis::Core::Hashable
      
        # Compass direction the roof segment is pointing in. 0 = North, 90 = East, 180 =
        # South. For a "flat" roof segment (`pitch_degrees` very near 0), azimuth is not
        # well defined, so for consistency, we define it arbitrarily to be 0 (North).
        # Corresponds to the JSON property `azimuthDegrees`
        # @return [Float]
        attr_accessor :azimuth_degrees
      
        # A bounding box in lat/lng coordinates.
        # Corresponds to the JSON property `boundingBox`
        # @return [Google::Apis::SolarV1::LatLngBox]
        attr_accessor :bounding_box
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this object must conform to the WGS84 standard. Values
        # must be within normalized ranges.
        # Corresponds to the JSON property `center`
        # @return [Google::Apis::SolarV1::LatLng]
        attr_accessor :center
      
        # Angle of the roof segment relative to the theoretical ground plane. 0 =
        # parallel to the ground, 90 = perpendicular to the ground.
        # Corresponds to the JSON property `pitchDegrees`
        # @return [Float]
        attr_accessor :pitch_degrees
      
        # The height of the roof segment plane, in meters above sea level, at the point
        # designated by `center`. Together with the pitch, azimuth, and center location,
        # this fully defines the roof segment plane.
        # Corresponds to the JSON property `planeHeightAtCenterMeters`
        # @return [Float]
        attr_accessor :plane_height_at_center_meters
      
        # Size and sunniness quantiles of a roof, or part of a roof.
        # Corresponds to the JSON property `stats`
        # @return [Google::Apis::SolarV1::SizeAndSunshineStats]
        attr_accessor :stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @azimuth_degrees = args[:azimuth_degrees] if args.key?(:azimuth_degrees)
          @bounding_box = args[:bounding_box] if args.key?(:bounding_box)
          @center = args[:center] if args.key?(:center)
          @pitch_degrees = args[:pitch_degrees] if args.key?(:pitch_degrees)
          @plane_height_at_center_meters = args[:plane_height_at_center_meters] if args.key?(:plane_height_at_center_meters)
          @stats = args[:stats] if args.key?(:stats)
        end
      end
      
      # Information about a roof segment on the building, with some number of panels
      # placed on it.
      class RoofSegmentSummary
        include Google::Apis::Core::Hashable
      
        # Compass direction the roof segment is pointing in. 0 = North, 90 = East, 180 =
        # South. For a "flat" roof segment (`pitch_degrees` very near 0), azimuth is not
        # well defined, so for consistency, we define it arbitrarily to be 0 (North).
        # Corresponds to the JSON property `azimuthDegrees`
        # @return [Float]
        attr_accessor :azimuth_degrees
      
        # The total number of panels on this segment.
        # Corresponds to the JSON property `panelsCount`
        # @return [Fixnum]
        attr_accessor :panels_count
      
        # Angle of the roof segment relative to the theoretical ground plane. 0 =
        # parallel to the ground, 90 = perpendicular to the ground.
        # Corresponds to the JSON property `pitchDegrees`
        # @return [Float]
        attr_accessor :pitch_degrees
      
        # Index in roof_segment_stats of the corresponding `
        # RoofSegmentSizeAndSunshineStats`.
        # Corresponds to the JSON property `segmentIndex`
        # @return [Fixnum]
        attr_accessor :segment_index
      
        # How much sunlight energy this part of the layout captures over the course of a
        # year, in DC kWh, assuming the panels described above.
        # Corresponds to the JSON property `yearlyEnergyDcKwh`
        # @return [Float]
        attr_accessor :yearly_energy_dc_kwh
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @azimuth_degrees = args[:azimuth_degrees] if args.key?(:azimuth_degrees)
          @panels_count = args[:panels_count] if args.key?(:panels_count)
          @pitch_degrees = args[:pitch_degrees] if args.key?(:pitch_degrees)
          @segment_index = args[:segment_index] if args.key?(:segment_index)
          @yearly_energy_dc_kwh = args[:yearly_energy_dc_kwh] if args.key?(:yearly_energy_dc_kwh)
        end
      end
      
      # Financial information that's shared between different financing methods.
      class SavingsOverTime
        include Google::Apis::Core::Hashable
      
        # Indicates whether this scenario is financially viable. Will be false for
        # scenarios with poor financial viability (e.g., money-losing).
        # Corresponds to the JSON property `financiallyViable`
        # @return [Boolean]
        attr_accessor :financially_viable
        alias_method :financially_viable?, :financially_viable
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `presentValueOfSavingsLifetime`
        # @return [Google::Apis::SolarV1::Money]
        attr_accessor :present_value_of_savings_lifetime
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `presentValueOfSavingsYear20`
        # @return [Google::Apis::SolarV1::Money]
        attr_accessor :present_value_of_savings_year20
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `savingsLifetime`
        # @return [Google::Apis::SolarV1::Money]
        attr_accessor :savings_lifetime
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `savingsYear1`
        # @return [Google::Apis::SolarV1::Money]
        attr_accessor :savings_year1
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `savingsYear20`
        # @return [Google::Apis::SolarV1::Money]
        attr_accessor :savings_year20
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @financially_viable = args[:financially_viable] if args.key?(:financially_viable)
          @present_value_of_savings_lifetime = args[:present_value_of_savings_lifetime] if args.key?(:present_value_of_savings_lifetime)
          @present_value_of_savings_year20 = args[:present_value_of_savings_year20] if args.key?(:present_value_of_savings_year20)
          @savings_lifetime = args[:savings_lifetime] if args.key?(:savings_lifetime)
          @savings_year1 = args[:savings_year1] if args.key?(:savings_year1)
          @savings_year20 = args[:savings_year20] if args.key?(:savings_year20)
        end
      end
      
      # Size and sunniness quantiles of a roof, or part of a roof.
      class SizeAndSunshineStats
        include Google::Apis::Core::Hashable
      
        # The area of the roof or roof segment, in m^2. This is the roof area (
        # accounting for tilt), not the ground footprint area.
        # Corresponds to the JSON property `areaMeters2`
        # @return [Float]
        attr_accessor :area_meters2
      
        # The ground footprint area covered by the roof or roof segment, in m^2.
        # Corresponds to the JSON property `groundAreaMeters2`
        # @return [Float]
        attr_accessor :ground_area_meters2
      
        # Quantiles of the pointwise sunniness across the area. If there are N values
        # here, this represents the (N-1)-iles. For example, if there are 5 values, then
        # they would be the quartiles (min, 25%, 50%, 75%, max). Values are in annual
        # kWh/kW like max_sunshine_hours_per_year.
        # Corresponds to the JSON property `sunshineQuantiles`
        # @return [Array<Float>]
        attr_accessor :sunshine_quantiles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @area_meters2 = args[:area_meters2] if args.key?(:area_meters2)
          @ground_area_meters2 = args[:ground_area_meters2] if args.key?(:ground_area_meters2)
          @sunshine_quantiles = args[:sunshine_quantiles] if args.key?(:sunshine_quantiles)
        end
      end
      
      # SolarPanel describes the position, orientation, and production of a single
      # solar panel. See the panel_height_meters, panel_width_meters, and
      # panel_capacity_watts fields in SolarPotential for information on the
      # parameters of the panel.
      class SolarPanel
        include Google::Apis::Core::Hashable
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this object must conform to the WGS84 standard. Values
        # must be within normalized ranges.
        # Corresponds to the JSON property `center`
        # @return [Google::Apis::SolarV1::LatLng]
        attr_accessor :center
      
        # The orientation of the panel.
        # Corresponds to the JSON property `orientation`
        # @return [String]
        attr_accessor :orientation
      
        # Index in roof_segment_stats of the `RoofSegmentSizeAndSunshineStats` which
        # corresponds to the roof segment that this panel is placed on.
        # Corresponds to the JSON property `segmentIndex`
        # @return [Fixnum]
        attr_accessor :segment_index
      
        # How much sunlight energy this layout captures over the course of a year, in DC
        # kWh.
        # Corresponds to the JSON property `yearlyEnergyDcKwh`
        # @return [Float]
        attr_accessor :yearly_energy_dc_kwh
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @center = args[:center] if args.key?(:center)
          @orientation = args[:orientation] if args.key?(:orientation)
          @segment_index = args[:segment_index] if args.key?(:segment_index)
          @yearly_energy_dc_kwh = args[:yearly_energy_dc_kwh] if args.key?(:yearly_energy_dc_kwh)
        end
      end
      
      # SolarPanelConfig describes a particular placement of solar panels on the roof.
      class SolarPanelConfig
        include Google::Apis::Core::Hashable
      
        # Total number of panels. Note that this is redundant to (the sum of) the
        # corresponding fields in roof_segment_summaries.
        # Corresponds to the JSON property `panelsCount`
        # @return [Fixnum]
        attr_accessor :panels_count
      
        # Information about the production of each roof segment that is carrying at
        # least one panel in this layout. `roof_segment_summaries[i]` describes the i-th
        # roof segment, including its size, expected production and orientation.
        # Corresponds to the JSON property `roofSegmentSummaries`
        # @return [Array<Google::Apis::SolarV1::RoofSegmentSummary>]
        attr_accessor :roof_segment_summaries
      
        # How much sunlight energy this layout captures over the course of a year, in DC
        # kWh, assuming the panels described above.
        # Corresponds to the JSON property `yearlyEnergyDcKwh`
        # @return [Float]
        attr_accessor :yearly_energy_dc_kwh
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @panels_count = args[:panels_count] if args.key?(:panels_count)
          @roof_segment_summaries = args[:roof_segment_summaries] if args.key?(:roof_segment_summaries)
          @yearly_energy_dc_kwh = args[:yearly_energy_dc_kwh] if args.key?(:yearly_energy_dc_kwh)
        end
      end
      
      # Information about the solar potential of a building. A number of fields in
      # this are defined in terms of "panels". The fields panel_capacity_watts,
      # panel_height_meters, and panel_width_meters describe the parameters of the
      # model of panel used in these calculations.
      class SolarPotential
        include Google::Apis::Core::Hashable
      
        # Size and sunniness quantiles of a roof, or part of a roof.
        # Corresponds to the JSON property `buildingStats`
        # @return [Google::Apis::SolarV1::SizeAndSunshineStats]
        attr_accessor :building_stats
      
        # Equivalent amount of CO2 produced per MWh of grid electricity. This is a
        # measure of the carbon intensity of grid electricity displaced by solar
        # electricity.
        # Corresponds to the JSON property `carbonOffsetFactorKgPerMwh`
        # @return [Float]
        attr_accessor :carbon_offset_factor_kg_per_mwh
      
        # A FinancialAnalysis gives the savings from going solar assuming a given
        # monthly bill and a given electricity provider. They are in order of increasing
        # order of monthly bill amount. This field will be empty for buildings in areas
        # for which the Solar API does not have enough information to perform financial
        # computations.
        # Corresponds to the JSON property `financialAnalyses`
        # @return [Array<Google::Apis::SolarV1::FinancialAnalysis>]
        attr_accessor :financial_analyses
      
        # Size, in square meters, of the maximum array.
        # Corresponds to the JSON property `maxArrayAreaMeters2`
        # @return [Float]
        attr_accessor :max_array_area_meters2
      
        # Size of the maximum array - that is, the maximum number of panels that can fit
        # on the roof.
        # Corresponds to the JSON property `maxArrayPanelsCount`
        # @return [Fixnum]
        attr_accessor :max_array_panels_count
      
        # Maximum number of sunshine hours received per year, by any point on the roof.
        # Sunshine hours are a measure of the total amount of insolation (energy)
        # received per year. 1 sunshine hour = 1 kWh per kW (where kW refers to kW of
        # capacity under Standard Testing Conditions).
        # Corresponds to the JSON property `maxSunshineHoursPerYear`
        # @return [Float]
        attr_accessor :max_sunshine_hours_per_year
      
        # Capacity, in watts, of the panel used in the calculations.
        # Corresponds to the JSON property `panelCapacityWatts`
        # @return [Float]
        attr_accessor :panel_capacity_watts
      
        # Height, in meters in portrait orientation, of the panel used in the
        # calculations.
        # Corresponds to the JSON property `panelHeightMeters`
        # @return [Float]
        attr_accessor :panel_height_meters
      
        # The expected lifetime, in years, of the solar panels. This is used in the
        # financial calculations.
        # Corresponds to the JSON property `panelLifetimeYears`
        # @return [Fixnum]
        attr_accessor :panel_lifetime_years
      
        # Width, in meters in portrait orientation, of the panel used in the
        # calculations.
        # Corresponds to the JSON property `panelWidthMeters`
        # @return [Float]
        attr_accessor :panel_width_meters
      
        # Size and sunlight quantiles for each roof segment.
        # Corresponds to the JSON property `roofSegmentStats`
        # @return [Array<Google::Apis::SolarV1::RoofSegmentSizeAndSunshineStats>]
        attr_accessor :roof_segment_stats
      
        # Each SolarPanelConfig describes a different arrangement of solar panels on the
        # roof. They are in order of increasing number of panels. The `SolarPanelConfig`
        # with panels_count=N is based on the first N panels in the `solar_panels` list.
        # This field is only populated if at least 4 panels can fit on a roof.
        # Corresponds to the JSON property `solarPanelConfigs`
        # @return [Array<Google::Apis::SolarV1::SolarPanelConfig>]
        attr_accessor :solar_panel_configs
      
        # Each SolarPanel describes a single solar panel. They are listed in the order
        # that the panel layout algorithm placed this. This is usually, though not
        # always, in decreasing order of annual energy production.
        # Corresponds to the JSON property `solarPanels`
        # @return [Array<Google::Apis::SolarV1::SolarPanel>]
        attr_accessor :solar_panels
      
        # Size and sunniness quantiles of a roof, or part of a roof.
        # Corresponds to the JSON property `wholeRoofStats`
        # @return [Google::Apis::SolarV1::SizeAndSunshineStats]
        attr_accessor :whole_roof_stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @building_stats = args[:building_stats] if args.key?(:building_stats)
          @carbon_offset_factor_kg_per_mwh = args[:carbon_offset_factor_kg_per_mwh] if args.key?(:carbon_offset_factor_kg_per_mwh)
          @financial_analyses = args[:financial_analyses] if args.key?(:financial_analyses)
          @max_array_area_meters2 = args[:max_array_area_meters2] if args.key?(:max_array_area_meters2)
          @max_array_panels_count = args[:max_array_panels_count] if args.key?(:max_array_panels_count)
          @max_sunshine_hours_per_year = args[:max_sunshine_hours_per_year] if args.key?(:max_sunshine_hours_per_year)
          @panel_capacity_watts = args[:panel_capacity_watts] if args.key?(:panel_capacity_watts)
          @panel_height_meters = args[:panel_height_meters] if args.key?(:panel_height_meters)
          @panel_lifetime_years = args[:panel_lifetime_years] if args.key?(:panel_lifetime_years)
          @panel_width_meters = args[:panel_width_meters] if args.key?(:panel_width_meters)
          @roof_segment_stats = args[:roof_segment_stats] if args.key?(:roof_segment_stats)
          @solar_panel_configs = args[:solar_panel_configs] if args.key?(:solar_panel_configs)
          @solar_panels = args[:solar_panels] if args.key?(:solar_panels)
          @whole_roof_stats = args[:whole_roof_stats] if args.key?(:whole_roof_stats)
        end
      end
    end
  end
end
