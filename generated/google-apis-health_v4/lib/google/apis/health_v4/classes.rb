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
    module HealthV4
      
      # Record of active minutes in a given time interval.
      class ActiveMinutes
        include Google::Apis::Core::Hashable
      
        # Required. Active minutes by activity level. At most one record per activity
        # level is allowed.
        # Corresponds to the JSON property `activeMinutesByActivityLevel`
        # @return [Array<Google::Apis::HealthV4::ActiveMinutesByActivityLevel>]
        attr_accessor :active_minutes_by_activity_level
      
        # Represents a time interval of an observed data point.
        # Corresponds to the JSON property `interval`
        # @return [Google::Apis::HealthV4::ObservationTimeInterval]
        attr_accessor :interval
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_minutes_by_activity_level = args[:active_minutes_by_activity_level] if args.key?(:active_minutes_by_activity_level)
          @interval = args[:interval] if args.key?(:interval)
        end
      end
      
      # Active minutes at a given activity level.
      class ActiveMinutesByActivityLevel
        include Google::Apis::Core::Hashable
      
        # Required. Number of whole minutes spent in activity.
        # Corresponds to the JSON property `activeMinutes`
        # @return [Fixnum]
        attr_accessor :active_minutes
      
        # Required. The level of activity.
        # Corresponds to the JSON property `activityLevel`
        # @return [String]
        attr_accessor :activity_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_minutes = args[:active_minutes] if args.key?(:active_minutes)
          @activity_level = args[:activity_level] if args.key?(:activity_level)
        end
      end
      
      # Active minutes by activity level.
      class ActiveMinutesRollupByActivityLevel
        include Google::Apis::Core::Hashable
      
        # Number of whole minutes spent in activity.
        # Corresponds to the JSON property `activeMinutesSum`
        # @return [Fixnum]
        attr_accessor :active_minutes_sum
      
        # The level of activity.
        # Corresponds to the JSON property `activityLevel`
        # @return [String]
        attr_accessor :activity_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_minutes_sum = args[:active_minutes_sum] if args.key?(:active_minutes_sum)
          @activity_level = args[:activity_level] if args.key?(:activity_level)
        end
      end
      
      # Represents the result of the rollup of the active minutes data type.
      class ActiveMinutesRollupValue
        include Google::Apis::Core::Hashable
      
        # Active minutes by activity level. At most one record per activity level is
        # allowed.
        # Corresponds to the JSON property `activeMinutesRollupByActivityLevel`
        # @return [Array<Google::Apis::HealthV4::ActiveMinutesRollupByActivityLevel>]
        attr_accessor :active_minutes_rollup_by_activity_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_minutes_rollup_by_activity_level = args[:active_minutes_rollup_by_activity_level] if args.key?(:active_minutes_rollup_by_activity_level)
        end
      end
      
      # Record of active zone minutes in a given time interval.
      class ActiveZoneMinutes
        include Google::Apis::Core::Hashable
      
        # Required. Number of Active Zone Minutes earned in the given time interval.
        # Note: active_zone_minutes equals to 1 for low intensity (fat burn) zones or 2
        # for high intensity zones (cardio, peak).
        # Corresponds to the JSON property `activeZoneMinutes`
        # @return [Fixnum]
        attr_accessor :active_zone_minutes
      
        # Required. Heart rate zone in which the active zone minutes have been earned,
        # in the given time interval.
        # Corresponds to the JSON property `heartRateZone`
        # @return [String]
        attr_accessor :heart_rate_zone
      
        # Represents a time interval of an observed data point.
        # Corresponds to the JSON property `interval`
        # @return [Google::Apis::HealthV4::ObservationTimeInterval]
        attr_accessor :interval
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_zone_minutes = args[:active_zone_minutes] if args.key?(:active_zone_minutes)
          @heart_rate_zone = args[:heart_rate_zone] if args.key?(:heart_rate_zone)
          @interval = args[:interval] if args.key?(:interval)
        end
      end
      
      # Represents the result of the rollup of the active zone minutes data type.
      class ActiveZoneMinutesRollupValue
        include Google::Apis::Core::Hashable
      
        # Active zone minutes in `HeartRateZone.CARDIO`.
        # Corresponds to the JSON property `sumInCardioHeartZone`
        # @return [Fixnum]
        attr_accessor :sum_in_cardio_heart_zone
      
        # Active zone minutes in `HeartRateZone.FAT_BURN`.
        # Corresponds to the JSON property `sumInFatBurnHeartZone`
        # @return [Fixnum]
        attr_accessor :sum_in_fat_burn_heart_zone
      
        # Active zone minutes in `HeartRateZone.PEAK`.
        # Corresponds to the JSON property `sumInPeakHeartZone`
        # @return [Fixnum]
        attr_accessor :sum_in_peak_heart_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sum_in_cardio_heart_zone = args[:sum_in_cardio_heart_zone] if args.key?(:sum_in_cardio_heart_zone)
          @sum_in_fat_burn_heart_zone = args[:sum_in_fat_burn_heart_zone] if args.key?(:sum_in_fat_burn_heart_zone)
          @sum_in_peak_heart_zone = args[:sum_in_peak_heart_zone] if args.key?(:sum_in_peak_heart_zone)
        end
      end
      
      # Internal type to capture activity level during a certain time interval.
      class ActivityLevel
        include Google::Apis::Core::Hashable
      
        # Required. Activity level type in the given time interval.
        # Corresponds to the JSON property `activityLevelType`
        # @return [String]
        attr_accessor :activity_level_type
      
        # Represents a time interval of an observed data point.
        # Corresponds to the JSON property `interval`
        # @return [Google::Apis::HealthV4::ObservationTimeInterval]
        attr_accessor :interval
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activity_level_type = args[:activity_level_type] if args.key?(:activity_level_type)
          @interval = args[:interval] if args.key?(:interval)
        end
      end
      
      # Represents the total duration in a specific activity level type.
      class ActivityLevelRollupByActivityLevelType
        include Google::Apis::Core::Hashable
      
        # Activity level type.
        # Corresponds to the JSON property `activityLevelType`
        # @return [String]
        attr_accessor :activity_level_type
      
        # Total duration in the activity level type.
        # Corresponds to the JSON property `totalDuration`
        # @return [String]
        attr_accessor :total_duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activity_level_type = args[:activity_level_type] if args.key?(:activity_level_type)
          @total_duration = args[:total_duration] if args.key?(:total_duration)
        end
      end
      
      # Represents the result of the rollup of the activity level data type.
      class ActivityLevelRollupValue
        include Google::Apis::Core::Hashable
      
        # List of total durations in each activity level type.
        # Corresponds to the JSON property `activityLevelRollupsByActivityLevelType`
        # @return [Array<Google::Apis::HealthV4::ActivityLevelRollupByActivityLevelType>]
        attr_accessor :activity_level_rollups_by_activity_level_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activity_level_rollups_by_activity_level_type = args[:activity_level_rollups_by_activity_level_type] if args.key?(:activity_level_rollups_by_activity_level_type)
        end
      end
      
      # Captures the altitude gain (i.e. deltas), and not level above sea, for a user
      # in millimeters.
      class Altitude
        include Google::Apis::Core::Hashable
      
        # Required. Altitude gain in millimeters over the observed interval.
        # Corresponds to the JSON property `gainMillimeters`
        # @return [Fixnum]
        attr_accessor :gain_millimeters
      
        # Represents a time interval of an observed data point.
        # Corresponds to the JSON property `interval`
        # @return [Google::Apis::HealthV4::ObservationTimeInterval]
        attr_accessor :interval
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gain_millimeters = args[:gain_millimeters] if args.key?(:gain_millimeters)
          @interval = args[:interval] if args.key?(:interval)
        end
      end
      
      # Represents the result of the rollup of the user's altitude.
      class AltitudeRollupValue
        include Google::Apis::Core::Hashable
      
        # Sum of the altitude gain in millimeters.
        # Corresponds to the JSON property `gainMillimetersSum`
        # @return [Fixnum]
        attr_accessor :gain_millimeters_sum
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gain_millimeters_sum = args[:gain_millimeters_sum] if args.key?(:gain_millimeters_sum)
        end
      end
      
      # Optional metadata for the application that provided this data.
      class Application
        include Google::Apis::Core::Hashable
      
        # Output only. The Google OAuth 2.0 client ID of the web application or service
        # that recorded the data. This is the client ID used during the Google OAuth
        # flow to obtain user credentials. This field is system-populated when the data
        # is uploaded from Google Web API.
        # Corresponds to the JSON property `googleWebClientId`
        # @return [String]
        attr_accessor :google_web_client_id
      
        # Output only. A unique identifier for the mobile application that was the
        # source of the data. This is typically the application's package name on
        # Android (e.g., `com.google.fitbit`) or the bundle ID on iOS. This field is
        # informational and helps trace data origin. This field is system-populated when
        # the data is uploaded from the Fitbit mobile application, Health Connect or
        # Health Kit.
        # Corresponds to the JSON property `packageName`
        # @return [String]
        attr_accessor :package_name
      
        # Output only. The client ID of the application that recorded the data. This ID
        # is a legacy Fitbit API client ID, which is different from a Google OAuth
        # client ID. Example format: `ABC123`. This field is system-populated and used
        # for tracing data from legacy Fitbit API integrations. This field is system-
        # populated when the data is uploaded from a legacy Fitbit API integration.
        # Corresponds to the JSON property `webClientId`
        # @return [String]
        attr_accessor :web_client_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @google_web_client_id = args[:google_web_client_id] if args.key?(:google_web_client_id)
          @package_name = args[:package_name] if args.key?(:package_name)
          @web_client_id = args[:web_client_id] if args.key?(:web_client_id)
        end
      end
      
      # Number of calories burned due to basal metabolic rate (BMR) over a period of
      # time.
      class BasalEnergyBurned
        include Google::Apis::Core::Hashable
      
        # Represents a time interval of an observed data point.
        # Corresponds to the JSON property `interval`
        # @return [Google::Apis::HealthV4::ObservationTimeInterval]
        attr_accessor :interval
      
        # Required. Number of calories burned due to basal metabolic rate in
        # kilocalories over the observed interval.
        # Corresponds to the JSON property `kcal`
        # @return [Float]
        attr_accessor :kcal
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @interval = args[:interval] if args.key?(:interval)
          @kcal = args[:kcal] if args.key?(:kcal)
        end
      end
      
      # Request to delete a batch of identifiable data points.
      class BatchDeleteDataPointsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The names of the DataPoints to delete. A maximum of 10000 data
        # points can be deleted in a single request.
        # Corresponds to the JSON property `names`
        # @return [Array<String>]
        attr_accessor :names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @names = args[:names] if args.key?(:names)
        end
      end
      
      # Body fat measurement.
      class BodyFat
        include Google::Apis::Core::Hashable
      
        # Required. Body fat percentage, in range [0, 100].
        # Corresponds to the JSON property `percentage`
        # @return [Float]
        attr_accessor :percentage
      
        # Represents a sample time of an observed data point.
        # Corresponds to the JSON property `sampleTime`
        # @return [Google::Apis::HealthV4::ObservationSampleTime]
        attr_accessor :sample_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @percentage = args[:percentage] if args.key?(:percentage)
          @sample_time = args[:sample_time] if args.key?(:sample_time)
        end
      end
      
      # Represents the result of the rollup of the body fat data type.
      class BodyFatRollupValue
        include Google::Apis::Core::Hashable
      
        # Average body fat percentage.
        # Corresponds to the JSON property `bodyFatPercentageAvg`
        # @return [Float]
        attr_accessor :body_fat_percentage_avg
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @body_fat_percentage_avg = args[:body_fat_percentage_avg] if args.key?(:body_fat_percentage_avg)
        end
      end
      
      # Represents the result of the rollup of the calories in heart rate zone data
      # type.
      class CaloriesInHeartRateZoneRollupValue
        include Google::Apis::Core::Hashable
      
        # List of calories burned in each heart rate zone.
        # Corresponds to the JSON property `caloriesInHeartRateZones`
        # @return [Array<Google::Apis::HealthV4::CaloriesInHeartRateZoneValue>]
        attr_accessor :calories_in_heart_rate_zones
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @calories_in_heart_rate_zones = args[:calories_in_heart_rate_zones] if args.key?(:calories_in_heart_rate_zones)
        end
      end
      
      # Represents the amount of kilocalories burned in a specific heart rate zone.
      class CaloriesInHeartRateZoneValue
        include Google::Apis::Core::Hashable
      
        # The heart rate zone.
        # Corresponds to the JSON property `heartRateZone`
        # @return [String]
        attr_accessor :heart_rate_zone
      
        # The amount of kilocalories burned in the specified heart rate zone.
        # Corresponds to the JSON property `kcal`
        # @return [Float]
        attr_accessor :kcal
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @heart_rate_zone = args[:heart_rate_zone] if args.key?(:heart_rate_zone)
          @kcal = args[:kcal] if args.key?(:kcal)
        end
      end
      
      # Civil time representation similar to google.type.DateTime, but ensures that
      # neither the timezone nor the UTC offset can be set to avoid confusion between
      # civil and physical time queries.
      class CivilDateTime
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::HealthV4::Date]
        attr_accessor :date
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `time`
        # @return [Google::Apis::HealthV4::TimeOfDay]
        attr_accessor :time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date = args[:date] if args.key?(:date)
          @time = args[:time] if args.key?(:time)
        end
      end
      
      # Counterpart of google.type.Interval, but using CivilDateTime.
      class CivilTimeInterval
        include Google::Apis::Core::Hashable
      
        # Civil time representation similar to google.type.DateTime, but ensures that
        # neither the timezone nor the UTC offset can be set to avoid confusion between
        # civil and physical time queries.
        # Corresponds to the JSON property `end`
        # @return [Google::Apis::HealthV4::CivilDateTime]
        attr_accessor :end
      
        # Civil time representation similar to google.type.DateTime, but ensures that
        # neither the timezone nor the UTC offset can be set to avoid confusion between
        # civil and physical time queries.
        # Corresponds to the JSON property `start`
        # @return [Google::Apis::HealthV4::CivilDateTime]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end = args[:end] if args.key?(:end)
          @start = args[:start] if args.key?(:start)
        end
      end
      
      # Payload for creating a subscriber.
      class CreateSubscriberPayload
        include Google::Apis::Core::Hashable
      
        # Authorization mechanism for a subscriber endpoint. For all requests sent by
        # the Webhooks service, the JSON payload is cryptographically signed. The
        # signature is delivered in the `X-HEALTHAPI-SIGNATURE` HTTP header. This is an
        # ECDSA (NIST P256) signature of the JSON payload. Clients must verify this
        # signature using Google Health API's public key to confirm the payload was sent
        # by the Health API.
        # Corresponds to the JSON property `endpointAuthorization`
        # @return [Google::Apis::HealthV4::EndpointAuthorization]
        attr_accessor :endpoint_authorization
      
        # Required. The full HTTPS URI where update notifications will be sent. The URI
        # must be a valid URL and use HTTPS as the scheme. This endpoint will be
        # verified during the `CreateSubscriber` call. See CreateSubscriber RPC
        # documentation for verification details.
        # Corresponds to the JSON property `endpointUri`
        # @return [String]
        attr_accessor :endpoint_uri
      
        # Optional. Configuration for the subscriber.
        # Corresponds to the JSON property `subscriberConfigs`
        # @return [Array<Google::Apis::HealthV4::SubscriberConfig>]
        attr_accessor :subscriber_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @endpoint_authorization = args[:endpoint_authorization] if args.key?(:endpoint_authorization)
          @endpoint_uri = args[:endpoint_uri] if args.key?(:endpoint_uri)
          @subscriber_configs = args[:subscriber_configs] if args.key?(:subscriber_configs)
        end
      end
      
      # Represents the daily heart rate variability data type. At least one of the
      # following fields must be set: - `average_heart_rate_variability_milliseconds` -
      # `non_rem_heart_rate_beats_per_minute` - `entropy` - `
      # deep_sleep_root_mean_square_of_successive_differences_milliseconds`
      class DailyHeartRateVariability
        include Google::Apis::Core::Hashable
      
        # Optional. A user's average heart rate variability calculated using the root
        # mean square of successive differences (RMSSD) in times between heartbeats.
        # Corresponds to the JSON property `averageHeartRateVariabilityMilliseconds`
        # @return [Float]
        attr_accessor :average_heart_rate_variability_milliseconds
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::HealthV4::Date]
        attr_accessor :date
      
        # Optional. The root mean square of successive differences (RMSSD) value during
        # deep sleep.
        # Corresponds to the JSON property `deepSleepRootMeanSquareOfSuccessiveDifferencesMilliseconds`
        # @return [Float]
        attr_accessor :deep_sleep_root_mean_square_of_successive_differences_milliseconds
      
        # Optional. The Shanon entropy of heartbeat intervals. Entropy quantifies
        # randomness or disorder in a system. High entropy indicates high HRV. Entropy
        # is measured from the histogram of time interval between successive heart beats
        # values measured during sleep.
        # Corresponds to the JSON property `entropy`
        # @return [Float]
        attr_accessor :entropy
      
        # Optional. Non-REM heart rate
        # Corresponds to the JSON property `nonRemHeartRateBeatsPerMinute`
        # @return [Fixnum]
        attr_accessor :non_rem_heart_rate_beats_per_minute
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @average_heart_rate_variability_milliseconds = args[:average_heart_rate_variability_milliseconds] if args.key?(:average_heart_rate_variability_milliseconds)
          @date = args[:date] if args.key?(:date)
          @deep_sleep_root_mean_square_of_successive_differences_milliseconds = args[:deep_sleep_root_mean_square_of_successive_differences_milliseconds] if args.key?(:deep_sleep_root_mean_square_of_successive_differences_milliseconds)
          @entropy = args[:entropy] if args.key?(:entropy)
          @non_rem_heart_rate_beats_per_minute = args[:non_rem_heart_rate_beats_per_minute] if args.key?(:non_rem_heart_rate_beats_per_minute)
        end
      end
      
      # User's heart rate zone thresholds based on the Karvonen algorithm for a
      # specific day.
      class DailyHeartRateZones
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::HealthV4::Date]
        attr_accessor :date
      
        # Required. The heart rate zones.
        # Corresponds to the JSON property `heartRateZones`
        # @return [Array<Google::Apis::HealthV4::HeartRateZone>]
        attr_accessor :heart_rate_zones
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date = args[:date] if args.key?(:date)
          @heart_rate_zones = args[:heart_rate_zones] if args.key?(:heart_rate_zones)
        end
      end
      
      # A daily oxygen saturation (SpO2) record. Represents the user's daily oxygen
      # saturation summary, typically calculated during sleep.
      class DailyOxygenSaturation
        include Google::Apis::Core::Hashable
      
        # Required. The average value of the oxygen saturation samples during the sleep.
        # Corresponds to the JSON property `averagePercentage`
        # @return [Float]
        attr_accessor :average_percentage
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::HealthV4::Date]
        attr_accessor :date
      
        # Required. The lower bound of the confidence interval of oxygen saturation
        # samples during sleep.
        # Corresponds to the JSON property `lowerBoundPercentage`
        # @return [Float]
        attr_accessor :lower_bound_percentage
      
        # Optional. Standard deviation of the daily oxygen saturation averages from the
        # past 7-30 days.
        # Corresponds to the JSON property `standardDeviationPercentage`
        # @return [Float]
        attr_accessor :standard_deviation_percentage
      
        # Required. The upper bound of the confidence interval of oxygen saturation
        # samples during sleep.
        # Corresponds to the JSON property `upperBoundPercentage`
        # @return [Float]
        attr_accessor :upper_bound_percentage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @average_percentage = args[:average_percentage] if args.key?(:average_percentage)
          @date = args[:date] if args.key?(:date)
          @lower_bound_percentage = args[:lower_bound_percentage] if args.key?(:lower_bound_percentage)
          @standard_deviation_percentage = args[:standard_deviation_percentage] if args.key?(:standard_deviation_percentage)
          @upper_bound_percentage = args[:upper_bound_percentage] if args.key?(:upper_bound_percentage)
        end
      end
      
      # A daily average respiratory rate (breaths per minute) for a day of the year.
      # One data point per day calculated for the main sleep.
      class DailyRespiratoryRate
        include Google::Apis::Core::Hashable
      
        # Required. The average number of breaths taken per minute.
        # Corresponds to the JSON property `breathsPerMinute`
        # @return [Float]
        attr_accessor :breaths_per_minute
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::HealthV4::Date]
        attr_accessor :date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @breaths_per_minute = args[:breaths_per_minute] if args.key?(:breaths_per_minute)
          @date = args[:date] if args.key?(:date)
        end
      end
      
      # Measures the daily resting heart rate for a user, calculated using the all day
      # heart rate measurements.
      class DailyRestingHeartRate
        include Google::Apis::Core::Hashable
      
        # Required. The resting heart rate value in beats per minute.
        # Corresponds to the JSON property `beatsPerMinute`
        # @return [Fixnum]
        attr_accessor :beats_per_minute
      
        # Metadata for the daily resting heart rate.
        # Corresponds to the JSON property `dailyRestingHeartRateMetadata`
        # @return [Google::Apis::HealthV4::DailyRestingHeartRateMetadata]
        attr_accessor :daily_resting_heart_rate_metadata
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::HealthV4::Date]
        attr_accessor :date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @beats_per_minute = args[:beats_per_minute] if args.key?(:beats_per_minute)
          @daily_resting_heart_rate_metadata = args[:daily_resting_heart_rate_metadata] if args.key?(:daily_resting_heart_rate_metadata)
          @date = args[:date] if args.key?(:date)
        end
      end
      
      # Metadata for the daily resting heart rate.
      class DailyRestingHeartRateMetadata
        include Google::Apis::Core::Hashable
      
        # Required. The method used to calculate the resting heart rate.
        # Corresponds to the JSON property `calculationMethod`
        # @return [String]
        attr_accessor :calculation_method
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @calculation_method = args[:calculation_method] if args.key?(:calculation_method)
        end
      end
      
      # Request to roll up data points by civil time intervals.
      class DailyRollUpDataPointsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The data source family name to roll up. If empty, data points from
        # all available data sources will be rolled up. Format: `users/me/
        # dataSourceFamilies/`data_source_family`` The supported values are: - `users/me/
        # dataSourceFamilies/all-sources` - default value - `users/me/dataSourceFamilies/
        # google-wearables` - tracker devices - `users/me/dataSourceFamilies/google-
        # sources` - Google first party sources
        # Corresponds to the JSON property `dataSourceFamily`
        # @return [String]
        attr_accessor :data_source_family
      
        # Optional. The maximum number of data points to return. If unspecified, at most
        # 1440 data points will be returned. The maximum page size is 10000; values
        # above that will be truncated accordingly.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Optional. The `next_page_token` from a previous request, if any. All other
        # request fields need to be the same as in the initial request when the page
        # token is specified.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Counterpart of google.type.Interval, but using CivilDateTime.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::HealthV4::CivilTimeInterval]
        attr_accessor :range
      
        # Optional. Aggregation window size, in number of days. Defaults to 1 if not
        # specified.
        # Corresponds to the JSON property `windowSizeDays`
        # @return [Fixnum]
        attr_accessor :window_size_days
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_source_family = args[:data_source_family] if args.key?(:data_source_family)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @range = args[:range] if args.key?(:range)
          @window_size_days = args[:window_size_days] if args.key?(:window_size_days)
        end
      end
      
      # Response containing the list of rolled up data points.
      class DailyRollUpDataPointsResponse
        include Google::Apis::Core::Hashable
      
        # Values for each aggregation time window.
        # Corresponds to the JSON property `rollupDataPoints`
        # @return [Array<Google::Apis::HealthV4::DailyRollupDataPoint>]
        attr_accessor :rollup_data_points
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rollup_data_points = args[:rollup_data_points] if args.key?(:rollup_data_points)
        end
      end
      
      # Value of a daily rollup for a single civil time interval (aggregation window)
      class DailyRollupDataPoint
        include Google::Apis::Core::Hashable
      
        # Represents the result of the rollup of the active minutes data type.
        # Corresponds to the JSON property `activeMinutes`
        # @return [Google::Apis::HealthV4::ActiveMinutesRollupValue]
        attr_accessor :active_minutes
      
        # Represents the result of the rollup of the active zone minutes data type.
        # Corresponds to the JSON property `activeZoneMinutes`
        # @return [Google::Apis::HealthV4::ActiveZoneMinutesRollupValue]
        attr_accessor :active_zone_minutes
      
        # Represents the result of the rollup of the activity level data type.
        # Corresponds to the JSON property `activityLevel`
        # @return [Google::Apis::HealthV4::ActivityLevelRollupValue]
        attr_accessor :activity_level
      
        # Represents the result of the rollup of the user's altitude.
        # Corresponds to the JSON property `altitude`
        # @return [Google::Apis::HealthV4::AltitudeRollupValue]
        attr_accessor :altitude
      
        # Represents the result of the rollup of the body fat data type.
        # Corresponds to the JSON property `bodyFat`
        # @return [Google::Apis::HealthV4::BodyFatRollupValue]
        attr_accessor :body_fat
      
        # Represents the result of the rollup of the calories in heart rate zone data
        # type.
        # Corresponds to the JSON property `caloriesInHeartRateZone`
        # @return [Google::Apis::HealthV4::CaloriesInHeartRateZoneRollupValue]
        attr_accessor :calories_in_heart_rate_zone
      
        # Civil time representation similar to google.type.DateTime, but ensures that
        # neither the timezone nor the UTC offset can be set to avoid confusion between
        # civil and physical time queries.
        # Corresponds to the JSON property `civilEndTime`
        # @return [Google::Apis::HealthV4::CivilDateTime]
        attr_accessor :civil_end_time
      
        # Civil time representation similar to google.type.DateTime, but ensures that
        # neither the timezone nor the UTC offset can be set to avoid confusion between
        # civil and physical time queries.
        # Corresponds to the JSON property `civilStartTime`
        # @return [Google::Apis::HealthV4::CivilDateTime]
        attr_accessor :civil_start_time
      
        # Result of the rollup of the user's distance.
        # Corresponds to the JSON property `distance`
        # @return [Google::Apis::HealthV4::DistanceRollupValue]
        attr_accessor :distance
      
        # Represents the result of the rollup of the user's floors.
        # Corresponds to the JSON property `floors`
        # @return [Google::Apis::HealthV4::FloorsRollupValue]
        attr_accessor :floors
      
        # Represents the result of the rollup of the heart rate data type.
        # Corresponds to the JSON property `heartRate`
        # @return [Google::Apis::HealthV4::HeartRateRollupValue]
        attr_accessor :heart_rate
      
        # Represents the result of the rollup of the user's daily heart rate variability
        # personal range.
        # Corresponds to the JSON property `heartRateVariabilityPersonalRange`
        # @return [Google::Apis::HealthV4::HeartRateVariabilityPersonalRangeRollupValue]
        attr_accessor :heart_rate_variability_personal_range
      
        # Represents the result of the rollup of the hydration log data type.
        # Corresponds to the JSON property `hydrationLog`
        # @return [Google::Apis::HealthV4::HydrationLogRollupValue]
        attr_accessor :hydration_log
      
        # Represents the rollup value for the daily resting heart rate data type.
        # Corresponds to the JSON property `restingHeartRatePersonalRange`
        # @return [Google::Apis::HealthV4::RestingHeartRatePersonalRangeRollupValue]
        attr_accessor :resting_heart_rate_personal_range
      
        # Represents the result of the rollup of the user's daily heart rate variability
        # personal range.
        # Corresponds to the JSON property `runVo2Max`
        # @return [Google::Apis::HealthV4::RunVo2MaxRollupValue]
        attr_accessor :run_vo2_max
      
        # Represents the result of the rollup of the user's sedentary periods.
        # Corresponds to the JSON property `sedentaryPeriod`
        # @return [Google::Apis::HealthV4::SedentaryPeriodRollupValue]
        attr_accessor :sedentary_period
      
        # Represents the result of the rollup of the steps data type.
        # Corresponds to the JSON property `steps`
        # @return [Google::Apis::HealthV4::StepsRollupValue]
        attr_accessor :steps
      
        # Represents the result of the rollup of the swim lengths data type.
        # Corresponds to the JSON property `swimLengthsData`
        # @return [Google::Apis::HealthV4::SwimLengthsDataRollupValue]
        attr_accessor :swim_lengths_data
      
        # Represents the result of the rollup of the time in heart rate zone data type.
        # Corresponds to the JSON property `timeInHeartRateZone`
        # @return [Google::Apis::HealthV4::TimeInHeartRateZoneRollupValue]
        attr_accessor :time_in_heart_rate_zone
      
        # Represents the result of the rollup of the user's total calories.
        # Corresponds to the JSON property `totalCalories`
        # @return [Google::Apis::HealthV4::TotalCaloriesRollupValue]
        attr_accessor :total_calories
      
        # Represents the result of the rollup of the weight data type.
        # Corresponds to the JSON property `weight`
        # @return [Google::Apis::HealthV4::WeightRollupValue]
        attr_accessor :weight
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_minutes = args[:active_minutes] if args.key?(:active_minutes)
          @active_zone_minutes = args[:active_zone_minutes] if args.key?(:active_zone_minutes)
          @activity_level = args[:activity_level] if args.key?(:activity_level)
          @altitude = args[:altitude] if args.key?(:altitude)
          @body_fat = args[:body_fat] if args.key?(:body_fat)
          @calories_in_heart_rate_zone = args[:calories_in_heart_rate_zone] if args.key?(:calories_in_heart_rate_zone)
          @civil_end_time = args[:civil_end_time] if args.key?(:civil_end_time)
          @civil_start_time = args[:civil_start_time] if args.key?(:civil_start_time)
          @distance = args[:distance] if args.key?(:distance)
          @floors = args[:floors] if args.key?(:floors)
          @heart_rate = args[:heart_rate] if args.key?(:heart_rate)
          @heart_rate_variability_personal_range = args[:heart_rate_variability_personal_range] if args.key?(:heart_rate_variability_personal_range)
          @hydration_log = args[:hydration_log] if args.key?(:hydration_log)
          @resting_heart_rate_personal_range = args[:resting_heart_rate_personal_range] if args.key?(:resting_heart_rate_personal_range)
          @run_vo2_max = args[:run_vo2_max] if args.key?(:run_vo2_max)
          @sedentary_period = args[:sedentary_period] if args.key?(:sedentary_period)
          @steps = args[:steps] if args.key?(:steps)
          @swim_lengths_data = args[:swim_lengths_data] if args.key?(:swim_lengths_data)
          @time_in_heart_rate_zone = args[:time_in_heart_rate_zone] if args.key?(:time_in_heart_rate_zone)
          @total_calories = args[:total_calories] if args.key?(:total_calories)
          @weight = args[:weight] if args.key?(:weight)
        end
      end
      
      # Provides derived sleep temperature values, calculated from skin or internal
      # device temperature readings during sleep.
      class DailySleepTemperatureDerivations
        include Google::Apis::Core::Hashable
      
        # Optional. The user's baseline skin temperature. It is the median of the user's
        # nightly skin temperature over the past 30 days.
        # Corresponds to the JSON property `baselineTemperatureCelsius`
        # @return [Float]
        attr_accessor :baseline_temperature_celsius
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::HealthV4::Date]
        attr_accessor :date
      
        # Required. The user's nightly skin temperature. It is the mean of skin
        # temperature samples taken from the user’s sleep.
        # Corresponds to the JSON property `nightlyTemperatureCelsius`
        # @return [Float]
        attr_accessor :nightly_temperature_celsius
      
        # Optional. The standard deviation of the user’s relative nightly skin
        # temperature (temperature - baseline) over the past 30 days.
        # Corresponds to the JSON property `relativeNightlyStddev30dCelsius`
        # @return [Float]
        attr_accessor :relative_nightly_stddev30d_celsius
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @baseline_temperature_celsius = args[:baseline_temperature_celsius] if args.key?(:baseline_temperature_celsius)
          @date = args[:date] if args.key?(:date)
          @nightly_temperature_celsius = args[:nightly_temperature_celsius] if args.key?(:nightly_temperature_celsius)
          @relative_nightly_stddev30d_celsius = args[:relative_nightly_stddev30d_celsius] if args.key?(:relative_nightly_stddev30d_celsius)
        end
      end
      
      # Contains a daily summary of the user's VO2 max (cardio fitness score), which
      # is the maximum rate of oxygen the body can use during exercise.
      class DailyVo2Max
        include Google::Apis::Core::Hashable
      
        # Optional. Represents the user's cardio fitness level based on their VO2 max.
        # Corresponds to the JSON property `cardioFitnessLevel`
        # @return [String]
        attr_accessor :cardio_fitness_level
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::HealthV4::Date]
        attr_accessor :date
      
        # Optional. An estimated field is added to indicate when the confidence has
        # decreased sufficiently to consider the value an estimation.
        # Corresponds to the JSON property `estimated`
        # @return [Boolean]
        attr_accessor :estimated
        alias_method :estimated?, :estimated
      
        # Required. Daily VO2 max value measured as in ml consumed oxygen / kg of body
        # weight / min.
        # Corresponds to the JSON property `vo2Max`
        # @return [Float]
        attr_accessor :vo2_max
      
        # Optional. The covariance of the VO2 max value.
        # Corresponds to the JSON property `vo2MaxCovariance`
        # @return [Float]
        attr_accessor :vo2_max_covariance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cardio_fitness_level = args[:cardio_fitness_level] if args.key?(:cardio_fitness_level)
          @date = args[:date] if args.key?(:date)
          @estimated = args[:estimated] if args.key?(:estimated)
          @vo2_max = args[:vo2_max] if args.key?(:vo2_max)
          @vo2_max_covariance = args[:vo2_max_covariance] if args.key?(:vo2_max_covariance)
        end
      end
      
      # A computed or recorded metric.
      class DataPoint
        include Google::Apis::Core::Hashable
      
        # Record of active minutes in a given time interval.
        # Corresponds to the JSON property `activeMinutes`
        # @return [Google::Apis::HealthV4::ActiveMinutes]
        attr_accessor :active_minutes
      
        # Record of active zone minutes in a given time interval.
        # Corresponds to the JSON property `activeZoneMinutes`
        # @return [Google::Apis::HealthV4::ActiveZoneMinutes]
        attr_accessor :active_zone_minutes
      
        # Internal type to capture activity level during a certain time interval.
        # Corresponds to the JSON property `activityLevel`
        # @return [Google::Apis::HealthV4::ActivityLevel]
        attr_accessor :activity_level
      
        # Captures the altitude gain (i.e. deltas), and not level above sea, for a user
        # in millimeters.
        # Corresponds to the JSON property `altitude`
        # @return [Google::Apis::HealthV4::Altitude]
        attr_accessor :altitude
      
        # Number of calories burned due to basal metabolic rate (BMR) over a period of
        # time.
        # Corresponds to the JSON property `basalEnergyBurned`
        # @return [Google::Apis::HealthV4::BasalEnergyBurned]
        attr_accessor :basal_energy_burned
      
        # Body fat measurement.
        # Corresponds to the JSON property `bodyFat`
        # @return [Google::Apis::HealthV4::BodyFat]
        attr_accessor :body_fat
      
        # Represents the daily heart rate variability data type. At least one of the
        # following fields must be set: - `average_heart_rate_variability_milliseconds` -
        # `non_rem_heart_rate_beats_per_minute` - `entropy` - `
        # deep_sleep_root_mean_square_of_successive_differences_milliseconds`
        # Corresponds to the JSON property `dailyHeartRateVariability`
        # @return [Google::Apis::HealthV4::DailyHeartRateVariability]
        attr_accessor :daily_heart_rate_variability
      
        # User's heart rate zone thresholds based on the Karvonen algorithm for a
        # specific day.
        # Corresponds to the JSON property `dailyHeartRateZones`
        # @return [Google::Apis::HealthV4::DailyHeartRateZones]
        attr_accessor :daily_heart_rate_zones
      
        # A daily oxygen saturation (SpO2) record. Represents the user's daily oxygen
        # saturation summary, typically calculated during sleep.
        # Corresponds to the JSON property `dailyOxygenSaturation`
        # @return [Google::Apis::HealthV4::DailyOxygenSaturation]
        attr_accessor :daily_oxygen_saturation
      
        # A daily average respiratory rate (breaths per minute) for a day of the year.
        # One data point per day calculated for the main sleep.
        # Corresponds to the JSON property `dailyRespiratoryRate`
        # @return [Google::Apis::HealthV4::DailyRespiratoryRate]
        attr_accessor :daily_respiratory_rate
      
        # Measures the daily resting heart rate for a user, calculated using the all day
        # heart rate measurements.
        # Corresponds to the JSON property `dailyRestingHeartRate`
        # @return [Google::Apis::HealthV4::DailyRestingHeartRate]
        attr_accessor :daily_resting_heart_rate
      
        # Provides derived sleep temperature values, calculated from skin or internal
        # device temperature readings during sleep.
        # Corresponds to the JSON property `dailySleepTemperatureDerivations`
        # @return [Google::Apis::HealthV4::DailySleepTemperatureDerivations]
        attr_accessor :daily_sleep_temperature_derivations
      
        # Contains a daily summary of the user's VO2 max (cardio fitness score), which
        # is the maximum rate of oxygen the body can use during exercise.
        # Corresponds to the JSON property `dailyVo2Max`
        # @return [Google::Apis::HealthV4::DailyVo2Max]
        attr_accessor :daily_vo2_max
      
        # Data Source definition to track the origin of data. Each health data point,
        # regardless of the complexity or data model (whether a simple step count or a
        # detailed sleep session) must retain information about its source of origin (e.
        # g. the device or app that collected it).
        # Corresponds to the JSON property `dataSource`
        # @return [Google::Apis::HealthV4::DataSource]
        attr_accessor :data_source
      
        # Distance traveled over an interval of time.
        # Corresponds to the JSON property `distance`
        # @return [Google::Apis::HealthV4::Distance]
        attr_accessor :distance
      
        # An exercise that stores information about a physical activity.
        # Corresponds to the JSON property `exercise`
        # @return [Google::Apis::HealthV4::Exercise]
        attr_accessor :exercise
      
        # Gained elevation measured in floors over the time interval
        # Corresponds to the JSON property `floors`
        # @return [Google::Apis::HealthV4::Floors]
        attr_accessor :floors
      
        # A heart rate measurement.
        # Corresponds to the JSON property `heartRate`
        # @return [Google::Apis::HealthV4::HeartRate]
        attr_accessor :heart_rate
      
        # Captures user's heart rate variability (HRV) as measured by the root mean
        # square of successive differences (RMSSD) between normal heartbeats or by
        # standard deviation of the inter-beat intervals (SDNN).
        # Corresponds to the JSON property `heartRateVariability`
        # @return [Google::Apis::HealthV4::HeartRateVariability]
        attr_accessor :heart_rate_variability
      
        # Body height measurement.
        # Corresponds to the JSON property `height`
        # @return [Google::Apis::HealthV4::Height]
        attr_accessor :height
      
        # Holds information about a user logged hydration.
        # Corresponds to the JSON property `hydrationLog`
        # @return [Google::Apis::HealthV4::HydrationLog]
        attr_accessor :hydration_log
      
        # Identifier. Data point name, only supported for the subset of identifiable
        # data types. For the majority of the data types, individual data points do not
        # need to be identified and this field would be empty. Format: `users/`user`/
        # dataTypes/`data_type`/dataPoints/`data_point`` Example: `users/abcd1234/
        # dataTypes/sleep/dataPoints/a1b2c3d4-e5f6-7890-1234-567890abcdef` The ``user``
        # ID is a system-generated identifier, as described in Identity.health_user_id.
        # The ``data_type`` ID corresponds to the kebab-case version of the field names
        # in the DataPoint data union field, e.g. `total-calories` for the `
        # total_calories` field. The ``data_point`` ID can be client-provided or system-
        # generated. If client-provided, it must be a string of 4-63 characters,
        # containing only lowercase letters, numbers, and hyphens.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Captures the user's instantaneous oxygen saturation percentage (SpO2).
        # Corresponds to the JSON property `oxygenSaturation`
        # @return [Google::Apis::HealthV4::OxygenSaturation]
        attr_accessor :oxygen_saturation
      
        # Records respiratory rate details during sleep. Can have multiple per day if
        # the user sleeps multiple times.
        # Corresponds to the JSON property `respiratoryRateSleepSummary`
        # @return [Google::Apis::HealthV4::RespiratoryRateSleepSummary]
        attr_accessor :respiratory_rate_sleep_summary
      
        # VO2 max value calculated based on the user's running activity. Value stored in
        # ml/kg/min.
        # Corresponds to the JSON property `runVo2Max`
        # @return [Google::Apis::HealthV4::RunVo2Max]
        attr_accessor :run_vo2_max
      
        # SedentaryPeriod SedentaryPeriod data represents the periods of time that the
        # user was sedentary (i.e. not moving while wearing the device).
        # Corresponds to the JSON property `sedentaryPeriod`
        # @return [Google::Apis::HealthV4::SedentaryPeriod]
        attr_accessor :sedentary_period
      
        # A sleep session possibly including stages.
        # Corresponds to the JSON property `sleep`
        # @return [Google::Apis::HealthV4::Sleep]
        attr_accessor :sleep
      
        # Step count over the time interval.
        # Corresponds to the JSON property `steps`
        # @return [Google::Apis::HealthV4::Steps]
        attr_accessor :steps
      
        # Swim lengths data over the time interval.
        # Corresponds to the JSON property `swimLengthsData`
        # @return [Google::Apis::HealthV4::SwimLengthsData]
        attr_accessor :swim_lengths_data
      
        # Time in heart rate zone record. It's an interval spent in specific heart rate
        # zone.
        # Corresponds to the JSON property `timeInHeartRateZone`
        # @return [Google::Apis::HealthV4::TimeInHeartRateZone]
        attr_accessor :time_in_heart_rate_zone
      
        # VO2 max measurement.
        # Corresponds to the JSON property `vo2Max`
        # @return [Google::Apis::HealthV4::Vo2Max]
        attr_accessor :vo2_max
      
        # Body weight measurement.
        # Corresponds to the JSON property `weight`
        # @return [Google::Apis::HealthV4::Weight]
        attr_accessor :weight
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_minutes = args[:active_minutes] if args.key?(:active_minutes)
          @active_zone_minutes = args[:active_zone_minutes] if args.key?(:active_zone_minutes)
          @activity_level = args[:activity_level] if args.key?(:activity_level)
          @altitude = args[:altitude] if args.key?(:altitude)
          @basal_energy_burned = args[:basal_energy_burned] if args.key?(:basal_energy_burned)
          @body_fat = args[:body_fat] if args.key?(:body_fat)
          @daily_heart_rate_variability = args[:daily_heart_rate_variability] if args.key?(:daily_heart_rate_variability)
          @daily_heart_rate_zones = args[:daily_heart_rate_zones] if args.key?(:daily_heart_rate_zones)
          @daily_oxygen_saturation = args[:daily_oxygen_saturation] if args.key?(:daily_oxygen_saturation)
          @daily_respiratory_rate = args[:daily_respiratory_rate] if args.key?(:daily_respiratory_rate)
          @daily_resting_heart_rate = args[:daily_resting_heart_rate] if args.key?(:daily_resting_heart_rate)
          @daily_sleep_temperature_derivations = args[:daily_sleep_temperature_derivations] if args.key?(:daily_sleep_temperature_derivations)
          @daily_vo2_max = args[:daily_vo2_max] if args.key?(:daily_vo2_max)
          @data_source = args[:data_source] if args.key?(:data_source)
          @distance = args[:distance] if args.key?(:distance)
          @exercise = args[:exercise] if args.key?(:exercise)
          @floors = args[:floors] if args.key?(:floors)
          @heart_rate = args[:heart_rate] if args.key?(:heart_rate)
          @heart_rate_variability = args[:heart_rate_variability] if args.key?(:heart_rate_variability)
          @height = args[:height] if args.key?(:height)
          @hydration_log = args[:hydration_log] if args.key?(:hydration_log)
          @name = args[:name] if args.key?(:name)
          @oxygen_saturation = args[:oxygen_saturation] if args.key?(:oxygen_saturation)
          @respiratory_rate_sleep_summary = args[:respiratory_rate_sleep_summary] if args.key?(:respiratory_rate_sleep_summary)
          @run_vo2_max = args[:run_vo2_max] if args.key?(:run_vo2_max)
          @sedentary_period = args[:sedentary_period] if args.key?(:sedentary_period)
          @sleep = args[:sleep] if args.key?(:sleep)
          @steps = args[:steps] if args.key?(:steps)
          @swim_lengths_data = args[:swim_lengths_data] if args.key?(:swim_lengths_data)
          @time_in_heart_rate_zone = args[:time_in_heart_rate_zone] if args.key?(:time_in_heart_rate_zone)
          @vo2_max = args[:vo2_max] if args.key?(:vo2_max)
          @weight = args[:weight] if args.key?(:weight)
        end
      end
      
      # Data Source definition to track the origin of data. Each health data point,
      # regardless of the complexity or data model (whether a simple step count or a
      # detailed sleep session) must retain information about its source of origin (e.
      # g. the device or app that collected it).
      class DataSource
        include Google::Apis::Core::Hashable
      
        # Optional metadata for the application that provided this data.
        # Corresponds to the JSON property `application`
        # @return [Google::Apis::HealthV4::Application]
        attr_accessor :application
      
        # Captures metadata about the device that recorded the measurement.
        # Corresponds to the JSON property `device`
        # @return [Google::Apis::HealthV4::Device]
        attr_accessor :device
      
        # Output only. Captures the platform that uploaded the data.
        # Corresponds to the JSON property `platform`
        # @return [String]
        attr_accessor :platform
      
        # Optional. Captures how the data was recorded.
        # Corresponds to the JSON property `recordingMethod`
        # @return [String]
        attr_accessor :recording_method
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application = args[:application] if args.key?(:application)
          @device = args[:device] if args.key?(:device)
          @platform = args[:platform] if args.key?(:platform)
          @recording_method = args[:recording_method] if args.key?(:recording_method)
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
      
      # Represents civil time (or occasionally physical time). This type can represent
      # a civil time in one of a few possible ways: * When utc_offset is set and
      # time_zone is unset: a civil time on a calendar day with a particular offset
      # from UTC. * When time_zone is set and utc_offset is unset: a civil time on a
      # calendar day in a particular time zone. * When neither time_zone nor
      # utc_offset is set: a civil time on a calendar day in local time. The date is
      # relative to the Proleptic Gregorian Calendar. If year, month, or day are 0,
      # the DateTime is considered not to have a specific year, month, or day
      # respectively. This type may also be used to represent a physical time if all
      # the date and time fields are set and either case of the `time_offset` oneof is
      # set. Consider using `Timestamp` message for physical time instead. If your use
      # case also would like to store the user's timezone, that can be done in another
      # field. This type is more flexible than some applications may want. Make sure
      # to document and validate your application's limitations.
      class DateTime
        include Google::Apis::Core::Hashable
      
        # Optional. Day of month. Must be from 1 to 31 and valid for the year and month,
        # or 0 if specifying a datetime without a day.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Optional. Hours of day in 24 hour format. Should be from 0 to 23, defaults to
        # 0 (midnight). An API may choose to allow the value "24:00:00" for scenarios
        # like business closing time.
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # Optional. Minutes of hour of day. Must be from 0 to 59, defaults to 0.
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        # Optional. Month of year. Must be from 1 to 12, or 0 if specifying a datetime
        # without a month.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Optional. Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999,
        # defaults to 0.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # Optional. Seconds of minutes of the time. Must normally be from 0 to 59,
        # defaults to 0. An API may allow the value 60 if it allows leap-seconds.
        # Corresponds to the JSON property `seconds`
        # @return [Fixnum]
        attr_accessor :seconds
      
        # Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/
        # time-zones).
        # Corresponds to the JSON property `timeZone`
        # @return [Google::Apis::HealthV4::TimeZone]
        attr_accessor :time_zone
      
        # UTC offset. Must be whole seconds, between -18 hours and +18 hours. For
        # example, a UTC offset of -4:00 would be represented as ` seconds: -14400 `.
        # Corresponds to the JSON property `utcOffset`
        # @return [String]
        attr_accessor :utc_offset
      
        # Optional. Year of date. Must be from 1 to 9999, or 0 if specifying a datetime
        # without a year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @hours = args[:hours] if args.key?(:hours)
          @minutes = args[:minutes] if args.key?(:minutes)
          @month = args[:month] if args.key?(:month)
          @nanos = args[:nanos] if args.key?(:nanos)
          @seconds = args[:seconds] if args.key?(:seconds)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @utc_offset = args[:utc_offset] if args.key?(:utc_offset)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # Captures metadata about the device that recorded the measurement.
      class Device
        include Google::Apis::Core::Hashable
      
        # Optional. An optional name for the device.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. Captures the form factor of the device.
        # Corresponds to the JSON property `formFactor`
        # @return [String]
        attr_accessor :form_factor
      
        # Optional. An optional manufacturer of the device.
        # Corresponds to the JSON property `manufacturer`
        # @return [String]
        attr_accessor :manufacturer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @form_factor = args[:form_factor] if args.key?(:form_factor)
          @manufacturer = args[:manufacturer] if args.key?(:manufacturer)
        end
      end
      
      # Distance traveled over an interval of time.
      class Distance
        include Google::Apis::Core::Hashable
      
        # Represents a time interval of an observed data point.
        # Corresponds to the JSON property `interval`
        # @return [Google::Apis::HealthV4::ObservationTimeInterval]
        attr_accessor :interval
      
        # Required. Distance in millimeters over the observed interval.
        # Corresponds to the JSON property `millimeters`
        # @return [Fixnum]
        attr_accessor :millimeters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @interval = args[:interval] if args.key?(:interval)
          @millimeters = args[:millimeters] if args.key?(:millimeters)
        end
      end
      
      # Result of the rollup of the user's distance.
      class DistanceRollupValue
        include Google::Apis::Core::Hashable
      
        # Sum of the distance in millimeters.
        # Corresponds to the JSON property `millimetersSum`
        # @return [Fixnum]
        attr_accessor :millimeters_sum
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @millimeters_sum = args[:millimeters_sum] if args.key?(:millimeters_sum)
        end
      end
      
      # Authorization mechanism for a subscriber endpoint. For all requests sent by
      # the Webhooks service, the JSON payload is cryptographically signed. The
      # signature is delivered in the `X-HEALTHAPI-SIGNATURE` HTTP header. This is an
      # ECDSA (NIST P256) signature of the JSON payload. Clients must verify this
      # signature using Google Health API's public key to confirm the payload was sent
      # by the Health API.
      class EndpointAuthorization
        include Google::Apis::Core::Hashable
      
        # Required. Input only. Provides a client-provided secret that will be sent with
        # each notification to the subscriber endpoint using the "Authorization" header.
        # The value must include the authorization scheme, e.g., "Bearer " or "Basic ",
        # as it will be used as the full Authorization header value. This secret is used
        # by the API to test the endpoint during `CreateSubscriber` and `
        # UpdateSubscriber` calls, and will be sent in the `Authorization` header for
        # all subsequent webhook notifications to this endpoint.
        # Corresponds to the JSON property `secret`
        # @return [String]
        attr_accessor :secret
      
        # Output only. Whether the secret is set.
        # Corresponds to the JSON property `secretSet`
        # @return [Boolean]
        attr_accessor :secret_set
        alias_method :secret_set?, :secret_set
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @secret = args[:secret] if args.key?(:secret)
          @secret_set = args[:secret_set] if args.key?(:secret_set)
        end
      end
      
      # An exercise that stores information about a physical activity.
      class Exercise
        include Google::Apis::Core::Hashable
      
        # Optional. Duration excluding pauses.
        # Corresponds to the JSON property `activeDuration`
        # @return [String]
        attr_accessor :active_duration
      
        # Output only. Represents the timestamp of the creation of the exercise.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. Exercise display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. Exercise events that happen during an exercise, such as pause &
        # restarts.
        # Corresponds to the JSON property `exerciseEvents`
        # @return [Array<Google::Apis::HealthV4::ExerciseEvent>]
        attr_accessor :exercise_events
      
        # Additional exercise metadata.
        # Corresponds to the JSON property `exerciseMetadata`
        # @return [Google::Apis::HealthV4::ExerciseMetadata]
        attr_accessor :exercise_metadata
      
        # Required. The type of activity performed during an exercise.
        # Corresponds to the JSON property `exerciseType`
        # @return [String]
        attr_accessor :exercise_type
      
        # Represents a time interval of session data point, which bundles multiple
        # observed metrics together.
        # Corresponds to the JSON property `interval`
        # @return [Google::Apis::HealthV4::SessionTimeInterval]
        attr_accessor :interval
      
        # Summary metrics for an exercise.
        # Corresponds to the JSON property `metricsSummary`
        # @return [Google::Apis::HealthV4::MetricsSummary]
        attr_accessor :metrics_summary
      
        # Optional. Standard free-form notes captured at manual logging.
        # Corresponds to the JSON property `notes`
        # @return [String]
        attr_accessor :notes
      
        # Optional. Laps or splits recorded within an exercise. Laps could be split
        # based on distance or other criteria (duration, etc.) Laps should not be
        # overlapping with each other.
        # Corresponds to the JSON property `splitSummaries`
        # @return [Array<Google::Apis::HealthV4::SplitSummary>]
        attr_accessor :split_summaries
      
        # Optional. The default split is 1 km or 1 mile. - if the movement distance is
        # less than the default, then there are no splits - if the movement distance is
        # greater than or equal to the default, then we have splits
        # Corresponds to the JSON property `splits`
        # @return [Array<Google::Apis::HealthV4::SplitSummary>]
        attr_accessor :splits
      
        # Output only. This is the timestamp of the last update to the exercise.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_duration = args[:active_duration] if args.key?(:active_duration)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @exercise_events = args[:exercise_events] if args.key?(:exercise_events)
          @exercise_metadata = args[:exercise_metadata] if args.key?(:exercise_metadata)
          @exercise_type = args[:exercise_type] if args.key?(:exercise_type)
          @interval = args[:interval] if args.key?(:interval)
          @metrics_summary = args[:metrics_summary] if args.key?(:metrics_summary)
          @notes = args[:notes] if args.key?(:notes)
          @split_summaries = args[:split_summaries] if args.key?(:split_summaries)
          @splits = args[:splits] if args.key?(:splits)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Represents instantaneous events that happen during an exercise, such as start,
      # stop, pause, split.
      class ExerciseEvent
        include Google::Apis::Core::Hashable
      
        # Required. Exercise event time
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # Required. Exercise event time offset from UTC
        # Corresponds to the JSON property `eventUtcOffset`
        # @return [String]
        attr_accessor :event_utc_offset
      
        # Required. The type of the event, such as start, stop, pause, resume.
        # Corresponds to the JSON property `exerciseEventType`
        # @return [String]
        attr_accessor :exercise_event_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_time = args[:event_time] if args.key?(:event_time)
          @event_utc_offset = args[:event_utc_offset] if args.key?(:event_utc_offset)
          @exercise_event_type = args[:exercise_event_type] if args.key?(:exercise_event_type)
        end
      end
      
      # Additional exercise metadata.
      class ExerciseMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. Whether the exercise had GPS tracking.
        # Corresponds to the JSON property `hasGps`
        # @return [Boolean]
        attr_accessor :has_gps
        alias_method :has_gps?, :has_gps
      
        # Optional. Pool length in millimeters. Only present in the swimming exercises.
        # Corresponds to the JSON property `poolLengthMillimeters`
        # @return [Fixnum]
        attr_accessor :pool_length_millimeters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @has_gps = args[:has_gps] if args.key?(:has_gps)
          @pool_length_millimeters = args[:pool_length_millimeters] if args.key?(:pool_length_millimeters)
        end
      end
      
      # Represents a Response for exporting exercise data in TCX format.
      class ExportExerciseTcxResponse
        include Google::Apis::Core::Hashable
      
        # Contains the exported TCX data.
        # Corresponds to the JSON property `tcxData`
        # @return [String]
        attr_accessor :tcx_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tcx_data = args[:tcx_data] if args.key?(:tcx_data)
        end
      end
      
      # Gained elevation measured in floors over the time interval
      class Floors
        include Google::Apis::Core::Hashable
      
        # Required. Number of floors in the recorded interval
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Represents a time interval of an observed data point.
        # Corresponds to the JSON property `interval`
        # @return [Google::Apis::HealthV4::ObservationTimeInterval]
        attr_accessor :interval
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @interval = args[:interval] if args.key?(:interval)
        end
      end
      
      # Represents the result of the rollup of the user's floors.
      class FloorsRollupValue
        include Google::Apis::Core::Hashable
      
        # Sum of the floors count.
        # Corresponds to the JSON property `countSum`
        # @return [Fixnum]
        attr_accessor :count_sum
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count_sum = args[:count_sum] if args.key?(:count_sum)
        end
      end
      
      # Represents a type of health data a user can have data points recorded for. It
      # matches the parent resource of collection containing data points of the given
      # type. Clients currently do not need to interact with this resource directly.
      class GoogleDevicesandservicesHealthV4DataType
        include Google::Apis::Core::Hashable
      
        # Identifier. The resource name of the data type. Format: `users/`user`/
        # dataTypes/`data_type`` See DataPoint.name for examples and possible values.
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
      
      # Log message for a webhook notification sent by the Google Health API to a
      # subscriber's endpoint. Includes the HTTP response received from the endpoint.
      class GoogleDevicesandservicesHealthV4WebhookNotificationCloudLog
        include Google::Apis::Core::Hashable
      
        # Represents an HTTP response.
        # Corresponds to the JSON property `httpResponse`
        # @return [Google::Apis::HealthV4::HttpResponse]
        attr_accessor :http_response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @http_response = args[:http_response] if args.key?(:http_response)
        end
      end
      
      # A heart rate measurement.
      class HeartRate
        include Google::Apis::Core::Hashable
      
        # Required. The heart rate value in beats per minute.
        # Corresponds to the JSON property `beatsPerMinute`
        # @return [Fixnum]
        attr_accessor :beats_per_minute
      
        # Heart rate metadata.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::HealthV4::HeartRateMetadata]
        attr_accessor :metadata
      
        # Represents a sample time of an observed data point.
        # Corresponds to the JSON property `sampleTime`
        # @return [Google::Apis::HealthV4::ObservationSampleTime]
        attr_accessor :sample_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @beats_per_minute = args[:beats_per_minute] if args.key?(:beats_per_minute)
          @metadata = args[:metadata] if args.key?(:metadata)
          @sample_time = args[:sample_time] if args.key?(:sample_time)
        end
      end
      
      # Heart rate metadata.
      class HeartRateMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. Indicates the user’s level of activity when the heart rate sample
        # was measured
        # Corresponds to the JSON property `motionContext`
        # @return [String]
        attr_accessor :motion_context
      
        # Optional. Indicates the location of the sensor that measured the heart rate.
        # Corresponds to the JSON property `sensorLocation`
        # @return [String]
        attr_accessor :sensor_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @motion_context = args[:motion_context] if args.key?(:motion_context)
          @sensor_location = args[:sensor_location] if args.key?(:sensor_location)
        end
      end
      
      # Represents the result of the rollup of the heart rate data type.
      class HeartRateRollupValue
        include Google::Apis::Core::Hashable
      
        # The average heart rate value in the interval.
        # Corresponds to the JSON property `beatsPerMinuteAvg`
        # @return [Float]
        attr_accessor :beats_per_minute_avg
      
        # The maximum heart rate value in the interval.
        # Corresponds to the JSON property `beatsPerMinuteMax`
        # @return [Float]
        attr_accessor :beats_per_minute_max
      
        # The minimum heart rate value in the interval.
        # Corresponds to the JSON property `beatsPerMinuteMin`
        # @return [Float]
        attr_accessor :beats_per_minute_min
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @beats_per_minute_avg = args[:beats_per_minute_avg] if args.key?(:beats_per_minute_avg)
          @beats_per_minute_max = args[:beats_per_minute_max] if args.key?(:beats_per_minute_max)
          @beats_per_minute_min = args[:beats_per_minute_min] if args.key?(:beats_per_minute_min)
        end
      end
      
      # Captures user's heart rate variability (HRV) as measured by the root mean
      # square of successive differences (RMSSD) between normal heartbeats or by
      # standard deviation of the inter-beat intervals (SDNN).
      class HeartRateVariability
        include Google::Apis::Core::Hashable
      
        # Optional. The root mean square of successive differences between normal
        # heartbeats. This is a measure of heart rate variability used by Fitbit.
        # Corresponds to the JSON property `rootMeanSquareOfSuccessiveDifferencesMilliseconds`
        # @return [Float]
        attr_accessor :root_mean_square_of_successive_differences_milliseconds
      
        # Represents a sample time of an observed data point.
        # Corresponds to the JSON property `sampleTime`
        # @return [Google::Apis::HealthV4::ObservationSampleTime]
        attr_accessor :sample_time
      
        # Optional. The standard deviation of the heart rate variability measurement.
        # Corresponds to the JSON property `standardDeviationMilliseconds`
        # @return [Float]
        attr_accessor :standard_deviation_milliseconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @root_mean_square_of_successive_differences_milliseconds = args[:root_mean_square_of_successive_differences_milliseconds] if args.key?(:root_mean_square_of_successive_differences_milliseconds)
          @sample_time = args[:sample_time] if args.key?(:sample_time)
          @standard_deviation_milliseconds = args[:standard_deviation_milliseconds] if args.key?(:standard_deviation_milliseconds)
        end
      end
      
      # Represents the result of the rollup of the user's daily heart rate variability
      # personal range.
      class HeartRateVariabilityPersonalRangeRollupValue
        include Google::Apis::Core::Hashable
      
        # The upper bound of the user's average heart rate variability personal range.
        # Corresponds to the JSON property `averageHeartRateVariabilityMillisecondsMax`
        # @return [Float]
        attr_accessor :average_heart_rate_variability_milliseconds_max
      
        # The lower bound of the user's average heart rate variability personal range.
        # Corresponds to the JSON property `averageHeartRateVariabilityMillisecondsMin`
        # @return [Float]
        attr_accessor :average_heart_rate_variability_milliseconds_min
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @average_heart_rate_variability_milliseconds_max = args[:average_heart_rate_variability_milliseconds_max] if args.key?(:average_heart_rate_variability_milliseconds_max)
          @average_heart_rate_variability_milliseconds_min = args[:average_heart_rate_variability_milliseconds_min] if args.key?(:average_heart_rate_variability_milliseconds_min)
        end
      end
      
      # The heart rate zone.
      class HeartRateZone
        include Google::Apis::Core::Hashable
      
        # Required. The heart rate zone type.
        # Corresponds to the JSON property `heartRateZoneType`
        # @return [String]
        attr_accessor :heart_rate_zone_type
      
        # Required. Maximum heart rate for this zone in beats per minute.
        # Corresponds to the JSON property `maxBeatsPerMinute`
        # @return [Fixnum]
        attr_accessor :max_beats_per_minute
      
        # Required. Minimum heart rate for this zone in beats per minute.
        # Corresponds to the JSON property `minBeatsPerMinute`
        # @return [Fixnum]
        attr_accessor :min_beats_per_minute
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @heart_rate_zone_type = args[:heart_rate_zone_type] if args.key?(:heart_rate_zone_type)
          @max_beats_per_minute = args[:max_beats_per_minute] if args.key?(:max_beats_per_minute)
          @min_beats_per_minute = args[:min_beats_per_minute] if args.key?(:min_beats_per_minute)
        end
      end
      
      # Body height measurement.
      class Height
        include Google::Apis::Core::Hashable
      
        # Required. Height of the user in millimeters.
        # Corresponds to the JSON property `heightMillimeters`
        # @return [Fixnum]
        attr_accessor :height_millimeters
      
        # Represents a sample time of an observed data point.
        # Corresponds to the JSON property `sampleTime`
        # @return [Google::Apis::HealthV4::ObservationSampleTime]
        attr_accessor :sample_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @height_millimeters = args[:height_millimeters] if args.key?(:height_millimeters)
          @sample_time = args[:sample_time] if args.key?(:sample_time)
        end
      end
      
      # Represents an HTTP header.
      class HttpHeader
        include Google::Apis::Core::Hashable
      
        # The HTTP header key. It is case insensitive.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The HTTP header value.
        # Corresponds to the JSON property `value`
        # @return [String]
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
      
      # Represents an HTTP response.
      class HttpResponse
        include Google::Apis::Core::Hashable
      
        # The HTTP response body. If the body is not expected, it should be empty.
        # Corresponds to the JSON property `body`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :body
      
        # The HTTP response headers. The ordering of the headers is significant.
        # Multiple headers with the same key may present for the response.
        # Corresponds to the JSON property `headers`
        # @return [Array<Google::Apis::HealthV4::HttpHeader>]
        attr_accessor :headers
      
        # The HTTP reason phrase, such as "OK" or "Not Found".
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # The HTTP status code, such as 200 or 404.
        # Corresponds to the JSON property `status`
        # @return [Fixnum]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @body = args[:body] if args.key?(:body)
          @headers = args[:headers] if args.key?(:headers)
          @reason = args[:reason] if args.key?(:reason)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Holds information about a user logged hydration.
      class HydrationLog
        include Google::Apis::Core::Hashable
      
        # Represents the volume quantity.
        # Corresponds to the JSON property `amountConsumed`
        # @return [Google::Apis::HealthV4::VolumeQuantity]
        attr_accessor :amount_consumed
      
        # Represents a time interval of session data point, which bundles multiple
        # observed metrics together.
        # Corresponds to the JSON property `interval`
        # @return [Google::Apis::HealthV4::SessionTimeInterval]
        attr_accessor :interval
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount_consumed = args[:amount_consumed] if args.key?(:amount_consumed)
          @interval = args[:interval] if args.key?(:interval)
        end
      end
      
      # Represents the result of the rollup of the hydration log data type.
      class HydrationLogRollupValue
        include Google::Apis::Core::Hashable
      
        # Rollup for volume quantity.
        # Corresponds to the JSON property `amountConsumed`
        # @return [Google::Apis::HealthV4::VolumeQuantityRollup]
        attr_accessor :amount_consumed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount_consumed = args[:amount_consumed] if args.key?(:amount_consumed)
        end
      end
      
      # Represents details about the Google user's identity.
      class Identity
        include Google::Apis::Core::Hashable
      
        # Output only. The Google User Identifier in the Google Health APIs. It matches
        # the ``user`` resource ID segment in the resource name paths, e.g. `users/`user`
        # /dataTypes/steps`. Valid values are strings of 1-63 characters, and valid
        # characters are lowercase and uppercase letters, numbers, and hyphens.
        # Corresponds to the JSON property `healthUserId`
        # @return [String]
        attr_accessor :health_user_id
      
        # Output only. The legacy Fitbit User identifier. This is the Fitbit ID used in
        # the legacy Fitbit APIs (v1-v3). It can be referenced by clients migrating from
        # the legacy Fitbit APIs to map their existing identifiers to the new Google
        # user ID. It **must not** be used for any other purpose. It is not of any use
        # for new clients using only the Google Health APIs. Valid values are strings of
        # 1-63 characters, and valid characters are lowercase and uppercase letters,
        # numbers, and hyphens.
        # Corresponds to the JSON property `legacyUserId`
        # @return [String]
        attr_accessor :legacy_user_id
      
        # Identifier. The resource name of this Identity resource. Format: `users/me/
        # identity`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @health_user_id = args[:health_user_id] if args.key?(:health_user_id)
          @legacy_user_id = args[:legacy_user_id] if args.key?(:legacy_user_id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Represents a time interval, encoded as a Timestamp start (inclusive) and a
      # Timestamp end (exclusive). The start must be less than or equal to the end.
      # When the start equals the end, the interval is empty (matches no time). When
      # both start and end are unspecified, the interval matches any time.
      class Interval
        include Google::Apis::Core::Hashable
      
        # Optional. Exclusive end of the interval. If specified, a Timestamp matching
        # this interval will have to be before the end.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Optional. Inclusive start of the interval. If specified, a Timestamp matching
        # this interval will have to be the same or after the start.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Response containing raw data points matching the query
      class ListDataPointsResponse
        include Google::Apis::Core::Hashable
      
        # Data points matching the query
        # Corresponds to the JSON property `dataPoints`
        # @return [Array<Google::Apis::HealthV4::DataPoint>]
        attr_accessor :data_points
      
        # Next page token, empty if the response is complete
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_points = args[:data_points] if args.key?(:data_points)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListSubscribers.
      class ListSubscribersResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Subscribers from the specified project.
        # Corresponds to the JSON property `subscribers`
        # @return [Array<Google::Apis::HealthV4::Subscriber>]
        attr_accessor :subscribers
      
        # The total number of subscribers matching the request.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @subscribers = args[:subscribers] if args.key?(:subscribers)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # Summary metrics for an exercise.
      class MetricsSummary
        include Google::Apis::Core::Hashable
      
        # Optional. Total active zone minutes for the exercise.
        # Corresponds to the JSON property `activeZoneMinutes`
        # @return [Fixnum]
        attr_accessor :active_zone_minutes
      
        # Optional. Average heart rate during the exercise.
        # Corresponds to the JSON property `averageHeartRateBeatsPerMinute`
        # @return [Fixnum]
        attr_accessor :average_heart_rate_beats_per_minute
      
        # Optional. Average pace in seconds per meter.
        # Corresponds to the JSON property `averagePaceSecondsPerMeter`
        # @return [Float]
        attr_accessor :average_pace_seconds_per_meter
      
        # Optional. Average speed in millimeters per second.
        # Corresponds to the JSON property `averageSpeedMillimetersPerSecond`
        # @return [Float]
        attr_accessor :average_speed_millimeters_per_second
      
        # Optional. Total calories burned by the user during the exercise.
        # Corresponds to the JSON property `caloriesKcal`
        # @return [Float]
        attr_accessor :calories_kcal
      
        # Optional. Total distance covered by the user during the exercise.
        # Corresponds to the JSON property `distanceMillimeters`
        # @return [Float]
        attr_accessor :distance_millimeters
      
        # Optional. Total elevation gain during the exercise.
        # Corresponds to the JSON property `elevationGainMillimeters`
        # @return [Float]
        attr_accessor :elevation_gain_millimeters
      
        # Time spent in each heart rate zone.
        # Corresponds to the JSON property `heartRateZoneDurations`
        # @return [Google::Apis::HealthV4::TimeInHeartRateZones]
        attr_accessor :heart_rate_zone_durations
      
        # Mobility workouts specific metrics
        # Corresponds to the JSON property `mobilityMetrics`
        # @return [Google::Apis::HealthV4::MobilityMetrics]
        attr_accessor :mobility_metrics
      
        # Optional. Run VO2 max value for the exercise. Only present in the running
        # exercises at the top level as in the summary of the whole exercise.
        # Corresponds to the JSON property `runVo2Max`
        # @return [Float]
        attr_accessor :run_vo2_max
      
        # Optional. Total steps taken during the exercise.
        # Corresponds to the JSON property `steps`
        # @return [Fixnum]
        attr_accessor :steps
      
        # Optional. Number of full pool lengths completed during the exercise. Only
        # present in the swimming exercises at the top level as in the summary of the
        # whole exercise.
        # Corresponds to the JSON property `totalSwimLengths`
        # @return [Float]
        attr_accessor :total_swim_lengths
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_zone_minutes = args[:active_zone_minutes] if args.key?(:active_zone_minutes)
          @average_heart_rate_beats_per_minute = args[:average_heart_rate_beats_per_minute] if args.key?(:average_heart_rate_beats_per_minute)
          @average_pace_seconds_per_meter = args[:average_pace_seconds_per_meter] if args.key?(:average_pace_seconds_per_meter)
          @average_speed_millimeters_per_second = args[:average_speed_millimeters_per_second] if args.key?(:average_speed_millimeters_per_second)
          @calories_kcal = args[:calories_kcal] if args.key?(:calories_kcal)
          @distance_millimeters = args[:distance_millimeters] if args.key?(:distance_millimeters)
          @elevation_gain_millimeters = args[:elevation_gain_millimeters] if args.key?(:elevation_gain_millimeters)
          @heart_rate_zone_durations = args[:heart_rate_zone_durations] if args.key?(:heart_rate_zone_durations)
          @mobility_metrics = args[:mobility_metrics] if args.key?(:mobility_metrics)
          @run_vo2_max = args[:run_vo2_max] if args.key?(:run_vo2_max)
          @steps = args[:steps] if args.key?(:steps)
          @total_swim_lengths = args[:total_swim_lengths] if args.key?(:total_swim_lengths)
        end
      end
      
      # Mobility workouts specific metrics
      class MobilityMetrics
        include Google::Apis::Core::Hashable
      
        # Optional. Cadence is a measure of the frequency of your foot strikes. Steps /
        # min in real time during workout.
        # Corresponds to the JSON property `avgCadenceStepsPerMinute`
        # @return [Float]
        attr_accessor :avg_cadence_steps_per_minute
      
        # Optional. The ground contact time for a particular stride is the amount of
        # time for which the foot was in contact with the ground on that stride
        # Corresponds to the JSON property `avgGroundContactTimeDuration`
        # @return [String]
        attr_accessor :avg_ground_contact_time_duration
      
        # Optional. Stride length is a measure of the distance covered by a single
        # stride
        # Corresponds to the JSON property `avgStrideLengthMillimeters`
        # @return [Fixnum]
        attr_accessor :avg_stride_length_millimeters
      
        # Optional. Distance off the ground your center of mass moves with each stride
        # while running
        # Corresponds to the JSON property `avgVerticalOscillationMillimeters`
        # @return [Fixnum]
        attr_accessor :avg_vertical_oscillation_millimeters
      
        # Optional. Vertical oscillation/stride length between [5.0, 11.0].
        # Corresponds to the JSON property `avgVerticalRatio`
        # @return [Float]
        attr_accessor :avg_vertical_ratio
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @avg_cadence_steps_per_minute = args[:avg_cadence_steps_per_minute] if args.key?(:avg_cadence_steps_per_minute)
          @avg_ground_contact_time_duration = args[:avg_ground_contact_time_duration] if args.key?(:avg_ground_contact_time_duration)
          @avg_stride_length_millimeters = args[:avg_stride_length_millimeters] if args.key?(:avg_stride_length_millimeters)
          @avg_vertical_oscillation_millimeters = args[:avg_vertical_oscillation_millimeters] if args.key?(:avg_vertical_oscillation_millimeters)
          @avg_vertical_ratio = args[:avg_vertical_ratio] if args.key?(:avg_vertical_ratio)
        end
      end
      
      # Represents a sample time of an observed data point.
      class ObservationSampleTime
        include Google::Apis::Core::Hashable
      
        # Civil time representation similar to google.type.DateTime, but ensures that
        # neither the timezone nor the UTC offset can be set to avoid confusion between
        # civil and physical time queries.
        # Corresponds to the JSON property `civilTime`
        # @return [Google::Apis::HealthV4::CivilDateTime]
        attr_accessor :civil_time
      
        # Required. The time of the observation.
        # Corresponds to the JSON property `physicalTime`
        # @return [String]
        attr_accessor :physical_time
      
        # Required. The offset of the user's local time during the observation relative
        # to the Coordinated Universal Time (UTC).
        # Corresponds to the JSON property `utcOffset`
        # @return [String]
        attr_accessor :utc_offset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @civil_time = args[:civil_time] if args.key?(:civil_time)
          @physical_time = args[:physical_time] if args.key?(:physical_time)
          @utc_offset = args[:utc_offset] if args.key?(:utc_offset)
        end
      end
      
      # Represents a time interval of an observed data point.
      class ObservationTimeInterval
        include Google::Apis::Core::Hashable
      
        # Civil time representation similar to google.type.DateTime, but ensures that
        # neither the timezone nor the UTC offset can be set to avoid confusion between
        # civil and physical time queries.
        # Corresponds to the JSON property `civilEndTime`
        # @return [Google::Apis::HealthV4::CivilDateTime]
        attr_accessor :civil_end_time
      
        # Civil time representation similar to google.type.DateTime, but ensures that
        # neither the timezone nor the UTC offset can be set to avoid confusion between
        # civil and physical time queries.
        # Corresponds to the JSON property `civilStartTime`
        # @return [Google::Apis::HealthV4::CivilDateTime]
        attr_accessor :civil_start_time
      
        # Required. Observed interval end time.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Required. The offset of the user's local time at the end of the observation
        # relative to the Coordinated Universal Time (UTC).
        # Corresponds to the JSON property `endUtcOffset`
        # @return [String]
        attr_accessor :end_utc_offset
      
        # Required. Observed interval start time.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Required. The offset of the user's local time at the start of the observation
        # relative to the Coordinated Universal Time (UTC).
        # Corresponds to the JSON property `startUtcOffset`
        # @return [String]
        attr_accessor :start_utc_offset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @civil_end_time = args[:civil_end_time] if args.key?(:civil_end_time)
          @civil_start_time = args[:civil_start_time] if args.key?(:civil_start_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @end_utc_offset = args[:end_utc_offset] if args.key?(:end_utc_offset)
          @start_time = args[:start_time] if args.key?(:start_time)
          @start_utc_offset = args[:start_utc_offset] if args.key?(:start_utc_offset)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::HealthV4::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as `Delete`, the response is `google.protobuf.
        # Empty`. If the original method is standard `Get`/`Create`/`Update`, the
        # response should be the resource. For other methods, the response should have
        # the type `XxxResponse`, where `Xxx` is the original method name. For example,
        # if the original method name is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
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
      
      # A time interval to represent an out-of-bed segment.
      class OutOfBedSegment
        include Google::Apis::Core::Hashable
      
        # Required. Segment end time.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Required. The offset of the user's local time at the end of the segment
        # relative to the Coordinated Universal Time (UTC).
        # Corresponds to the JSON property `endUtcOffset`
        # @return [String]
        attr_accessor :end_utc_offset
      
        # Required. Segment tart time.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Required. The offset of the user's local time at the start of the segment
        # relative to the Coordinated Universal Time (UTC).
        # Corresponds to the JSON property `startUtcOffset`
        # @return [String]
        attr_accessor :start_utc_offset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @end_utc_offset = args[:end_utc_offset] if args.key?(:end_utc_offset)
          @start_time = args[:start_time] if args.key?(:start_time)
          @start_utc_offset = args[:start_utc_offset] if args.key?(:start_utc_offset)
        end
      end
      
      # Captures the user's instantaneous oxygen saturation percentage (SpO2).
      class OxygenSaturation
        include Google::Apis::Core::Hashable
      
        # Required. The oxygen saturation percentage. Valid values are from 0 to 100.
        # Corresponds to the JSON property `percentage`
        # @return [Float]
        attr_accessor :percentage
      
        # Represents a sample time of an observed data point.
        # Corresponds to the JSON property `sampleTime`
        # @return [Google::Apis::HealthV4::ObservationSampleTime]
        attr_accessor :sample_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @percentage = args[:percentage] if args.key?(:percentage)
          @sample_time = args[:sample_time] if args.key?(:sample_time)
        end
      end
      
      # Profile details.
      class Profile
        include Google::Apis::Core::Hashable
      
        # Optional. The age in years based on the user's birth date. Updates to this
        # field are currently not supported.
        # Corresponds to the JSON property `age`
        # @return [Fixnum]
        attr_accessor :age
      
        # Output only. The automatically calculated running stride length, in
        # millimeters. The user must consent to one of the following access scopes to
        # access this field: - `https://www.googleapis.com/auth/googlehealth.
        # activity_and_fitness.readonly` - `https://www.googleapis.com/auth/googlehealth.
        # activity_and_fitness`
        # Corresponds to the JSON property `autoRunningStrideLengthMm`
        # @return [Fixnum]
        attr_accessor :auto_running_stride_length_mm
      
        # Output only. The automatically calculated walking stride length, in
        # millimeters. The user must consent to one of the following access scopes to
        # access this field: - `https://www.googleapis.com/auth/googlehealth.
        # activity_and_fitness.readonly` - `https://www.googleapis.com/auth/googlehealth.
        # activity_and_fitness`
        # Corresponds to the JSON property `autoWalkingStrideLengthMm`
        # @return [Fixnum]
        attr_accessor :auto_walking_stride_length_mm
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `membershipStartDate`
        # @return [Google::Apis::HealthV4::Date]
        attr_accessor :membership_start_date
      
        # Identifier. The resource name of this Profile resource. Format: `users/`user`/
        # profile` Example: `users/1234567890/profile` or `users/me/profile` The `user`
        # ID is a system-generated Google Health API user ID, a string of 1-63
        # characters consisting of lowercase and uppercase letters, numbers, and hyphens.
        # The literal `me` can also be used to refer to the authenticated user.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The user's user configured running stride length, in millimeters.
        # The user must consent to one of the following access scopes to access this
        # field: - `https://www.googleapis.com/auth/googlehealth.activity_and_fitness.
        # readonly` - `https://www.googleapis.com/auth/googlehealth.activity_and_fitness`
        # Corresponds to the JSON property `userConfiguredRunningStrideLengthMm`
        # @return [Fixnum]
        attr_accessor :user_configured_running_stride_length_mm
      
        # Optional. The user's user configured walking stride length, in millimeters.
        # The user must consent to one of the following access scopes to access this
        # field: - `https://www.googleapis.com/auth/googlehealth.activity_and_fitness.
        # readonly` - `https://www.googleapis.com/auth/googlehealth.activity_and_fitness`
        # Corresponds to the JSON property `userConfiguredWalkingStrideLengthMm`
        # @return [Fixnum]
        attr_accessor :user_configured_walking_stride_length_mm
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @age = args[:age] if args.key?(:age)
          @auto_running_stride_length_mm = args[:auto_running_stride_length_mm] if args.key?(:auto_running_stride_length_mm)
          @auto_walking_stride_length_mm = args[:auto_walking_stride_length_mm] if args.key?(:auto_walking_stride_length_mm)
          @membership_start_date = args[:membership_start_date] if args.key?(:membership_start_date)
          @name = args[:name] if args.key?(:name)
          @user_configured_running_stride_length_mm = args[:user_configured_running_stride_length_mm] if args.key?(:user_configured_running_stride_length_mm)
          @user_configured_walking_stride_length_mm = args[:user_configured_walking_stride_length_mm] if args.key?(:user_configured_walking_stride_length_mm)
        end
      end
      
      # Response containing the list of reconciled DataPoints.
      class ReconcileDataPointsResponse
        include Google::Apis::Core::Hashable
      
        # Data points matching the query
        # Corresponds to the JSON property `dataPoints`
        # @return [Array<Google::Apis::HealthV4::ReconciledDataPoint>]
        attr_accessor :data_points
      
        # Next page token, empty if the response is complete
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_points = args[:data_points] if args.key?(:data_points)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A reconciled computed or recorded metric.
      class ReconciledDataPoint
        include Google::Apis::Core::Hashable
      
        # Record of active minutes in a given time interval.
        # Corresponds to the JSON property `activeMinutes`
        # @return [Google::Apis::HealthV4::ActiveMinutes]
        attr_accessor :active_minutes
      
        # Record of active zone minutes in a given time interval.
        # Corresponds to the JSON property `activeZoneMinutes`
        # @return [Google::Apis::HealthV4::ActiveZoneMinutes]
        attr_accessor :active_zone_minutes
      
        # Internal type to capture activity level during a certain time interval.
        # Corresponds to the JSON property `activityLevel`
        # @return [Google::Apis::HealthV4::ActivityLevel]
        attr_accessor :activity_level
      
        # Captures the altitude gain (i.e. deltas), and not level above sea, for a user
        # in millimeters.
        # Corresponds to the JSON property `altitude`
        # @return [Google::Apis::HealthV4::Altitude]
        attr_accessor :altitude
      
        # Number of calories burned due to basal metabolic rate (BMR) over a period of
        # time.
        # Corresponds to the JSON property `basalEnergyBurned`
        # @return [Google::Apis::HealthV4::BasalEnergyBurned]
        attr_accessor :basal_energy_burned
      
        # Body fat measurement.
        # Corresponds to the JSON property `bodyFat`
        # @return [Google::Apis::HealthV4::BodyFat]
        attr_accessor :body_fat
      
        # Represents the daily heart rate variability data type. At least one of the
        # following fields must be set: - `average_heart_rate_variability_milliseconds` -
        # `non_rem_heart_rate_beats_per_minute` - `entropy` - `
        # deep_sleep_root_mean_square_of_successive_differences_milliseconds`
        # Corresponds to the JSON property `dailyHeartRateVariability`
        # @return [Google::Apis::HealthV4::DailyHeartRateVariability]
        attr_accessor :daily_heart_rate_variability
      
        # User's heart rate zone thresholds based on the Karvonen algorithm for a
        # specific day.
        # Corresponds to the JSON property `dailyHeartRateZones`
        # @return [Google::Apis::HealthV4::DailyHeartRateZones]
        attr_accessor :daily_heart_rate_zones
      
        # A daily oxygen saturation (SpO2) record. Represents the user's daily oxygen
        # saturation summary, typically calculated during sleep.
        # Corresponds to the JSON property `dailyOxygenSaturation`
        # @return [Google::Apis::HealthV4::DailyOxygenSaturation]
        attr_accessor :daily_oxygen_saturation
      
        # A daily average respiratory rate (breaths per minute) for a day of the year.
        # One data point per day calculated for the main sleep.
        # Corresponds to the JSON property `dailyRespiratoryRate`
        # @return [Google::Apis::HealthV4::DailyRespiratoryRate]
        attr_accessor :daily_respiratory_rate
      
        # Measures the daily resting heart rate for a user, calculated using the all day
        # heart rate measurements.
        # Corresponds to the JSON property `dailyRestingHeartRate`
        # @return [Google::Apis::HealthV4::DailyRestingHeartRate]
        attr_accessor :daily_resting_heart_rate
      
        # Provides derived sleep temperature values, calculated from skin or internal
        # device temperature readings during sleep.
        # Corresponds to the JSON property `dailySleepTemperatureDerivations`
        # @return [Google::Apis::HealthV4::DailySleepTemperatureDerivations]
        attr_accessor :daily_sleep_temperature_derivations
      
        # Contains a daily summary of the user's VO2 max (cardio fitness score), which
        # is the maximum rate of oxygen the body can use during exercise.
        # Corresponds to the JSON property `dailyVo2Max`
        # @return [Google::Apis::HealthV4::DailyVo2Max]
        attr_accessor :daily_vo2_max
      
        # Identifier. Data point name, only supported for the subset of identifiable
        # data types. For the majority of the data types, individual data points do not
        # need to be identified and this field would be empty. Format: `users/`user`/
        # dataTypes/`data_type`/dataPoints/`data_point`` Example: `users/abcd1234/
        # dataTypes/sleep/dataPoints/a1b2c3d4-e5f6-7890-1234-567890abcdef` The ``user``
        # ID is a system-generated identifier, as described in Identity.health_user_id.
        # The ``data_type`` ID corresponds to the kebab-case version of the field names
        # in the DataPoint data union field, e.g. `total-calories` for the `
        # total_calories` field. The ``data_point`` ID can be client-provided or system-
        # generated. If client-provided, it must be a string of 4-63 characters,
        # containing only lowercase letters, numbers, and hyphens.
        # Corresponds to the JSON property `dataPointName`
        # @return [String]
        attr_accessor :data_point_name
      
        # Distance traveled over an interval of time.
        # Corresponds to the JSON property `distance`
        # @return [Google::Apis::HealthV4::Distance]
        attr_accessor :distance
      
        # An exercise that stores information about a physical activity.
        # Corresponds to the JSON property `exercise`
        # @return [Google::Apis::HealthV4::Exercise]
        attr_accessor :exercise
      
        # Gained elevation measured in floors over the time interval
        # Corresponds to the JSON property `floors`
        # @return [Google::Apis::HealthV4::Floors]
        attr_accessor :floors
      
        # A heart rate measurement.
        # Corresponds to the JSON property `heartRate`
        # @return [Google::Apis::HealthV4::HeartRate]
        attr_accessor :heart_rate
      
        # Captures user's heart rate variability (HRV) as measured by the root mean
        # square of successive differences (RMSSD) between normal heartbeats or by
        # standard deviation of the inter-beat intervals (SDNN).
        # Corresponds to the JSON property `heartRateVariability`
        # @return [Google::Apis::HealthV4::HeartRateVariability]
        attr_accessor :heart_rate_variability
      
        # Body height measurement.
        # Corresponds to the JSON property `height`
        # @return [Google::Apis::HealthV4::Height]
        attr_accessor :height
      
        # Holds information about a user logged hydration.
        # Corresponds to the JSON property `hydrationLog`
        # @return [Google::Apis::HealthV4::HydrationLog]
        attr_accessor :hydration_log
      
        # Captures the user's instantaneous oxygen saturation percentage (SpO2).
        # Corresponds to the JSON property `oxygenSaturation`
        # @return [Google::Apis::HealthV4::OxygenSaturation]
        attr_accessor :oxygen_saturation
      
        # Records respiratory rate details during sleep. Can have multiple per day if
        # the user sleeps multiple times.
        # Corresponds to the JSON property `respiratoryRateSleepSummary`
        # @return [Google::Apis::HealthV4::RespiratoryRateSleepSummary]
        attr_accessor :respiratory_rate_sleep_summary
      
        # VO2 max value calculated based on the user's running activity. Value stored in
        # ml/kg/min.
        # Corresponds to the JSON property `runVo2Max`
        # @return [Google::Apis::HealthV4::RunVo2Max]
        attr_accessor :run_vo2_max
      
        # SedentaryPeriod SedentaryPeriod data represents the periods of time that the
        # user was sedentary (i.e. not moving while wearing the device).
        # Corresponds to the JSON property `sedentaryPeriod`
        # @return [Google::Apis::HealthV4::SedentaryPeriod]
        attr_accessor :sedentary_period
      
        # A sleep session possibly including stages.
        # Corresponds to the JSON property `sleep`
        # @return [Google::Apis::HealthV4::Sleep]
        attr_accessor :sleep
      
        # Step count over the time interval.
        # Corresponds to the JSON property `steps`
        # @return [Google::Apis::HealthV4::Steps]
        attr_accessor :steps
      
        # Swim lengths data over the time interval.
        # Corresponds to the JSON property `swimLengthsData`
        # @return [Google::Apis::HealthV4::SwimLengthsData]
        attr_accessor :swim_lengths_data
      
        # Time in heart rate zone record. It's an interval spent in specific heart rate
        # zone.
        # Corresponds to the JSON property `timeInHeartRateZone`
        # @return [Google::Apis::HealthV4::TimeInHeartRateZone]
        attr_accessor :time_in_heart_rate_zone
      
        # VO2 max measurement.
        # Corresponds to the JSON property `vo2Max`
        # @return [Google::Apis::HealthV4::Vo2Max]
        attr_accessor :vo2_max
      
        # Body weight measurement.
        # Corresponds to the JSON property `weight`
        # @return [Google::Apis::HealthV4::Weight]
        attr_accessor :weight
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_minutes = args[:active_minutes] if args.key?(:active_minutes)
          @active_zone_minutes = args[:active_zone_minutes] if args.key?(:active_zone_minutes)
          @activity_level = args[:activity_level] if args.key?(:activity_level)
          @altitude = args[:altitude] if args.key?(:altitude)
          @basal_energy_burned = args[:basal_energy_burned] if args.key?(:basal_energy_burned)
          @body_fat = args[:body_fat] if args.key?(:body_fat)
          @daily_heart_rate_variability = args[:daily_heart_rate_variability] if args.key?(:daily_heart_rate_variability)
          @daily_heart_rate_zones = args[:daily_heart_rate_zones] if args.key?(:daily_heart_rate_zones)
          @daily_oxygen_saturation = args[:daily_oxygen_saturation] if args.key?(:daily_oxygen_saturation)
          @daily_respiratory_rate = args[:daily_respiratory_rate] if args.key?(:daily_respiratory_rate)
          @daily_resting_heart_rate = args[:daily_resting_heart_rate] if args.key?(:daily_resting_heart_rate)
          @daily_sleep_temperature_derivations = args[:daily_sleep_temperature_derivations] if args.key?(:daily_sleep_temperature_derivations)
          @daily_vo2_max = args[:daily_vo2_max] if args.key?(:daily_vo2_max)
          @data_point_name = args[:data_point_name] if args.key?(:data_point_name)
          @distance = args[:distance] if args.key?(:distance)
          @exercise = args[:exercise] if args.key?(:exercise)
          @floors = args[:floors] if args.key?(:floors)
          @heart_rate = args[:heart_rate] if args.key?(:heart_rate)
          @heart_rate_variability = args[:heart_rate_variability] if args.key?(:heart_rate_variability)
          @height = args[:height] if args.key?(:height)
          @hydration_log = args[:hydration_log] if args.key?(:hydration_log)
          @oxygen_saturation = args[:oxygen_saturation] if args.key?(:oxygen_saturation)
          @respiratory_rate_sleep_summary = args[:respiratory_rate_sleep_summary] if args.key?(:respiratory_rate_sleep_summary)
          @run_vo2_max = args[:run_vo2_max] if args.key?(:run_vo2_max)
          @sedentary_period = args[:sedentary_period] if args.key?(:sedentary_period)
          @sleep = args[:sleep] if args.key?(:sleep)
          @steps = args[:steps] if args.key?(:steps)
          @swim_lengths_data = args[:swim_lengths_data] if args.key?(:swim_lengths_data)
          @time_in_heart_rate_zone = args[:time_in_heart_rate_zone] if args.key?(:time_in_heart_rate_zone)
          @vo2_max = args[:vo2_max] if args.key?(:vo2_max)
          @weight = args[:weight] if args.key?(:weight)
        end
      end
      
      # Records respiratory rate details during sleep. Can have multiple per day if
      # the user sleeps multiple times.
      class RespiratoryRateSleepSummary
        include Google::Apis::Core::Hashable
      
        # Respiratory rate statistics for a given sleep stage.
        # Corresponds to the JSON property `deepSleepStats`
        # @return [Google::Apis::HealthV4::RespiratoryRateSleepSummaryStatistics]
        attr_accessor :deep_sleep_stats
      
        # Respiratory rate statistics for a given sleep stage.
        # Corresponds to the JSON property `fullSleepStats`
        # @return [Google::Apis::HealthV4::RespiratoryRateSleepSummaryStatistics]
        attr_accessor :full_sleep_stats
      
        # Respiratory rate statistics for a given sleep stage.
        # Corresponds to the JSON property `lightSleepStats`
        # @return [Google::Apis::HealthV4::RespiratoryRateSleepSummaryStatistics]
        attr_accessor :light_sleep_stats
      
        # Respiratory rate statistics for a given sleep stage.
        # Corresponds to the JSON property `remSleepStats`
        # @return [Google::Apis::HealthV4::RespiratoryRateSleepSummaryStatistics]
        attr_accessor :rem_sleep_stats
      
        # Represents a sample time of an observed data point.
        # Corresponds to the JSON property `sampleTime`
        # @return [Google::Apis::HealthV4::ObservationSampleTime]
        attr_accessor :sample_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deep_sleep_stats = args[:deep_sleep_stats] if args.key?(:deep_sleep_stats)
          @full_sleep_stats = args[:full_sleep_stats] if args.key?(:full_sleep_stats)
          @light_sleep_stats = args[:light_sleep_stats] if args.key?(:light_sleep_stats)
          @rem_sleep_stats = args[:rem_sleep_stats] if args.key?(:rem_sleep_stats)
          @sample_time = args[:sample_time] if args.key?(:sample_time)
        end
      end
      
      # Respiratory rate statistics for a given sleep stage.
      class RespiratoryRateSleepSummaryStatistics
        include Google::Apis::Core::Hashable
      
        # Required. Average breaths per minute.
        # Corresponds to the JSON property `breathsPerMinute`
        # @return [Float]
        attr_accessor :breaths_per_minute
      
        # Optional. How trustworthy the data is for the computation.
        # Corresponds to the JSON property `signalToNoise`
        # @return [Float]
        attr_accessor :signal_to_noise
      
        # Optional. Standard deviation of the respiratory rate during sleep.
        # Corresponds to the JSON property `standardDeviation`
        # @return [Float]
        attr_accessor :standard_deviation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @breaths_per_minute = args[:breaths_per_minute] if args.key?(:breaths_per_minute)
          @signal_to_noise = args[:signal_to_noise] if args.key?(:signal_to_noise)
          @standard_deviation = args[:standard_deviation] if args.key?(:standard_deviation)
        end
      end
      
      # Represents the rollup value for the daily resting heart rate data type.
      class RestingHeartRatePersonalRangeRollupValue
        include Google::Apis::Core::Hashable
      
        # The upper bound of the user's daily resting heart rate personal range.
        # Corresponds to the JSON property `beatsPerMinuteMax`
        # @return [Float]
        attr_accessor :beats_per_minute_max
      
        # The lower bound of the user's daily resting heart rate personal range.
        # Corresponds to the JSON property `beatsPerMinuteMin`
        # @return [Float]
        attr_accessor :beats_per_minute_min
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @beats_per_minute_max = args[:beats_per_minute_max] if args.key?(:beats_per_minute_max)
          @beats_per_minute_min = args[:beats_per_minute_min] if args.key?(:beats_per_minute_min)
        end
      end
      
      # Request to roll up data points by physical time intervals.
      class RollUpDataPointsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The data source family name to roll up. If empty, data points from
        # all available data sources will be rolled up. Format: `users/me/
        # dataSourceFamilies/`data_source_family`` The supported values are: - `users/me/
        # dataSourceFamilies/all-sources` - default value - `users/me/dataSourceFamilies/
        # google-wearables` - tracker devices - `users/me/dataSourceFamilies/google-
        # sources` - Google first party sources
        # Corresponds to the JSON property `dataSourceFamily`
        # @return [String]
        attr_accessor :data_source_family
      
        # Optional. The maximum number of data points to return. If unspecified, at most
        # 1440 data points will be returned. The maximum page size is 10000; values
        # above that will be truncated accordingly.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Optional. The next_page_token from a previous request, if any. All other
        # request fields need to be the same as in the initial request when the page
        # token is specified.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Represents a time interval, encoded as a Timestamp start (inclusive) and a
        # Timestamp end (exclusive). The start must be less than or equal to the end.
        # When the start equals the end, the interval is empty (matches no time). When
        # both start and end are unspecified, the interval matches any time.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::HealthV4::Interval]
        attr_accessor :range
      
        # Required. The size of the time window to group data points into before
        # applying the aggregation functions.
        # Corresponds to the JSON property `windowSize`
        # @return [String]
        attr_accessor :window_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_source_family = args[:data_source_family] if args.key?(:data_source_family)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @range = args[:range] if args.key?(:range)
          @window_size = args[:window_size] if args.key?(:window_size)
        end
      end
      
      # Response containing the list of rolled up data points.
      class RollUpDataPointsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Values for each aggregation time window.
        # Corresponds to the JSON property `rollupDataPoints`
        # @return [Array<Google::Apis::HealthV4::RollupDataPoint>]
        attr_accessor :rollup_data_points
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @rollup_data_points = args[:rollup_data_points] if args.key?(:rollup_data_points)
        end
      end
      
      # Value of a rollup for a single physical time interval (aggregation window)
      class RollupDataPoint
        include Google::Apis::Core::Hashable
      
        # Represents the result of the rollup of the active minutes data type.
        # Corresponds to the JSON property `activeMinutes`
        # @return [Google::Apis::HealthV4::ActiveMinutesRollupValue]
        attr_accessor :active_minutes
      
        # Represents the result of the rollup of the active zone minutes data type.
        # Corresponds to the JSON property `activeZoneMinutes`
        # @return [Google::Apis::HealthV4::ActiveZoneMinutesRollupValue]
        attr_accessor :active_zone_minutes
      
        # Represents the result of the rollup of the activity level data type.
        # Corresponds to the JSON property `activityLevel`
        # @return [Google::Apis::HealthV4::ActivityLevelRollupValue]
        attr_accessor :activity_level
      
        # Represents the result of the rollup of the user's altitude.
        # Corresponds to the JSON property `altitude`
        # @return [Google::Apis::HealthV4::AltitudeRollupValue]
        attr_accessor :altitude
      
        # Represents the result of the rollup of the body fat data type.
        # Corresponds to the JSON property `bodyFat`
        # @return [Google::Apis::HealthV4::BodyFatRollupValue]
        attr_accessor :body_fat
      
        # Represents the result of the rollup of the calories in heart rate zone data
        # type.
        # Corresponds to the JSON property `caloriesInHeartRateZone`
        # @return [Google::Apis::HealthV4::CaloriesInHeartRateZoneRollupValue]
        attr_accessor :calories_in_heart_rate_zone
      
        # Result of the rollup of the user's distance.
        # Corresponds to the JSON property `distance`
        # @return [Google::Apis::HealthV4::DistanceRollupValue]
        attr_accessor :distance
      
        # End time of the window this value aggregates over
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Represents the result of the rollup of the user's floors.
        # Corresponds to the JSON property `floors`
        # @return [Google::Apis::HealthV4::FloorsRollupValue]
        attr_accessor :floors
      
        # Represents the result of the rollup of the heart rate data type.
        # Corresponds to the JSON property `heartRate`
        # @return [Google::Apis::HealthV4::HeartRateRollupValue]
        attr_accessor :heart_rate
      
        # Represents the result of the rollup of the hydration log data type.
        # Corresponds to the JSON property `hydrationLog`
        # @return [Google::Apis::HealthV4::HydrationLogRollupValue]
        attr_accessor :hydration_log
      
        # Represents the result of the rollup of the user's daily heart rate variability
        # personal range.
        # Corresponds to the JSON property `runVo2Max`
        # @return [Google::Apis::HealthV4::RunVo2MaxRollupValue]
        attr_accessor :run_vo2_max
      
        # Represents the result of the rollup of the user's sedentary periods.
        # Corresponds to the JSON property `sedentaryPeriod`
        # @return [Google::Apis::HealthV4::SedentaryPeriodRollupValue]
        attr_accessor :sedentary_period
      
        # Start time of the window this value aggregates over
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Represents the result of the rollup of the steps data type.
        # Corresponds to the JSON property `steps`
        # @return [Google::Apis::HealthV4::StepsRollupValue]
        attr_accessor :steps
      
        # Represents the result of the rollup of the swim lengths data type.
        # Corresponds to the JSON property `swimLengthsData`
        # @return [Google::Apis::HealthV4::SwimLengthsDataRollupValue]
        attr_accessor :swim_lengths_data
      
        # Represents the result of the rollup of the time in heart rate zone data type.
        # Corresponds to the JSON property `timeInHeartRateZone`
        # @return [Google::Apis::HealthV4::TimeInHeartRateZoneRollupValue]
        attr_accessor :time_in_heart_rate_zone
      
        # Represents the result of the rollup of the user's total calories.
        # Corresponds to the JSON property `totalCalories`
        # @return [Google::Apis::HealthV4::TotalCaloriesRollupValue]
        attr_accessor :total_calories
      
        # Represents the result of the rollup of the weight data type.
        # Corresponds to the JSON property `weight`
        # @return [Google::Apis::HealthV4::WeightRollupValue]
        attr_accessor :weight
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_minutes = args[:active_minutes] if args.key?(:active_minutes)
          @active_zone_minutes = args[:active_zone_minutes] if args.key?(:active_zone_minutes)
          @activity_level = args[:activity_level] if args.key?(:activity_level)
          @altitude = args[:altitude] if args.key?(:altitude)
          @body_fat = args[:body_fat] if args.key?(:body_fat)
          @calories_in_heart_rate_zone = args[:calories_in_heart_rate_zone] if args.key?(:calories_in_heart_rate_zone)
          @distance = args[:distance] if args.key?(:distance)
          @end_time = args[:end_time] if args.key?(:end_time)
          @floors = args[:floors] if args.key?(:floors)
          @heart_rate = args[:heart_rate] if args.key?(:heart_rate)
          @hydration_log = args[:hydration_log] if args.key?(:hydration_log)
          @run_vo2_max = args[:run_vo2_max] if args.key?(:run_vo2_max)
          @sedentary_period = args[:sedentary_period] if args.key?(:sedentary_period)
          @start_time = args[:start_time] if args.key?(:start_time)
          @steps = args[:steps] if args.key?(:steps)
          @swim_lengths_data = args[:swim_lengths_data] if args.key?(:swim_lengths_data)
          @time_in_heart_rate_zone = args[:time_in_heart_rate_zone] if args.key?(:time_in_heart_rate_zone)
          @total_calories = args[:total_calories] if args.key?(:total_calories)
          @weight = args[:weight] if args.key?(:weight)
        end
      end
      
      # VO2 max value calculated based on the user's running activity. Value stored in
      # ml/kg/min.
      class RunVo2Max
        include Google::Apis::Core::Hashable
      
        # Required. Run VO2 max value in ml/kg/min.
        # Corresponds to the JSON property `runVo2Max`
        # @return [Float]
        attr_accessor :run_vo2_max
      
        # Represents a sample time of an observed data point.
        # Corresponds to the JSON property `sampleTime`
        # @return [Google::Apis::HealthV4::ObservationSampleTime]
        attr_accessor :sample_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @run_vo2_max = args[:run_vo2_max] if args.key?(:run_vo2_max)
          @sample_time = args[:sample_time] if args.key?(:sample_time)
        end
      end
      
      # Represents the result of the rollup of the user's daily heart rate variability
      # personal range.
      class RunVo2MaxRollupValue
        include Google::Apis::Core::Hashable
      
        # Average value of run VO2 max in the interval.
        # Corresponds to the JSON property `rateAvg`
        # @return [Float]
        attr_accessor :rate_avg
      
        # Maximum value of run VO2 max in the interval.
        # Corresponds to the JSON property `rateMax`
        # @return [Float]
        attr_accessor :rate_max
      
        # Minimum value of run VO2 max in the interval..
        # Corresponds to the JSON property `rateMin`
        # @return [Float]
        attr_accessor :rate_min
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rate_avg = args[:rate_avg] if args.key?(:rate_avg)
          @rate_max = args[:rate_max] if args.key?(:rate_max)
          @rate_min = args[:rate_min] if args.key?(:rate_min)
        end
      end
      
      # SedentaryPeriod SedentaryPeriod data represents the periods of time that the
      # user was sedentary (i.e. not moving while wearing the device).
      class SedentaryPeriod
        include Google::Apis::Core::Hashable
      
        # Represents a time interval of an observed data point.
        # Corresponds to the JSON property `interval`
        # @return [Google::Apis::HealthV4::ObservationTimeInterval]
        attr_accessor :interval
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @interval = args[:interval] if args.key?(:interval)
        end
      end
      
      # Represents the result of the rollup of the user's sedentary periods.
      class SedentaryPeriodRollupValue
        include Google::Apis::Core::Hashable
      
        # The total time user spent sedentary during the interval.
        # Corresponds to the JSON property `durationSum`
        # @return [String]
        attr_accessor :duration_sum
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration_sum = args[:duration_sum] if args.key?(:duration_sum)
        end
      end
      
      # Represents a time interval of session data point, which bundles multiple
      # observed metrics together.
      class SessionTimeInterval
        include Google::Apis::Core::Hashable
      
        # Civil time representation similar to google.type.DateTime, but ensures that
        # neither the timezone nor the UTC offset can be set to avoid confusion between
        # civil and physical time queries.
        # Corresponds to the JSON property `civilEndTime`
        # @return [Google::Apis::HealthV4::CivilDateTime]
        attr_accessor :civil_end_time
      
        # Civil time representation similar to google.type.DateTime, but ensures that
        # neither the timezone nor the UTC offset can be set to avoid confusion between
        # civil and physical time queries.
        # Corresponds to the JSON property `civilStartTime`
        # @return [Google::Apis::HealthV4::CivilDateTime]
        attr_accessor :civil_start_time
      
        # Required. The end time of the observed session.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Required. The offset of the user's local time at the end of the session
        # relative to the Coordinated Universal Time (UTC).
        # Corresponds to the JSON property `endUtcOffset`
        # @return [String]
        attr_accessor :end_utc_offset
      
        # Required. The start time of the observed session.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Required. The offset of the user's local time at the start of the session
        # relative to the Coordinated Universal Time (UTC).
        # Corresponds to the JSON property `startUtcOffset`
        # @return [String]
        attr_accessor :start_utc_offset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @civil_end_time = args[:civil_end_time] if args.key?(:civil_end_time)
          @civil_start_time = args[:civil_start_time] if args.key?(:civil_start_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @end_utc_offset = args[:end_utc_offset] if args.key?(:end_utc_offset)
          @start_time = args[:start_time] if args.key?(:start_time)
          @start_utc_offset = args[:start_utc_offset] if args.key?(:start_utc_offset)
        end
      end
      
      # Settings details.
      class Settings
        include Google::Apis::Core::Hashable
      
        # Optional. True if the user's stride length is determined automatically.
        # Updates to this field are currently not supported.
        # Corresponds to the JSON property `autoStrideEnabled`
        # @return [Boolean]
        attr_accessor :auto_stride_enabled
        alias_method :auto_stride_enabled?, :auto_stride_enabled
      
        # Optional. The measurement unit defined in the user's account settings. Updates
        # to this field are currently not supported.
        # Corresponds to the JSON property `distanceUnit`
        # @return [String]
        attr_accessor :distance_unit
      
        # Optional. The measurement unit defined in the user's account settings.
        # Corresponds to the JSON property `glucoseUnit`
        # @return [String]
        attr_accessor :glucose_unit
      
        # Optional. The measurement unit defined in the user's account settings.
        # Corresponds to the JSON property `heightUnit`
        # @return [String]
        attr_accessor :height_unit
      
        # Optional. The locale defined in the user's account settings. Updates to this
        # field are currently not supported.
        # Corresponds to the JSON property `languageLocale`
        # @return [String]
        attr_accessor :language_locale
      
        # Identifier. The resource name of this Settings resource. Format: `users/`user`/
        # settings` Example: `users/1234567890/settings` or `users/me/settings` The `
        # user` ID is a system-generated Google Health API user ID, a string of 1-63
        # characters consisting of lowercase and uppercase letters, numbers, and hyphens.
        # The literal `me` can also be used to refer to the authenticated user.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The stride length type defined in the user's account settings for
        # running. Updates to this field are currently not supported.
        # Corresponds to the JSON property `strideLengthRunningType`
        # @return [String]
        attr_accessor :stride_length_running_type
      
        # Optional. The stride length type defined in the user's account settings for
        # walking. Updates to this field are currently not supported.
        # Corresponds to the JSON property `strideLengthWalkingType`
        # @return [String]
        attr_accessor :stride_length_walking_type
      
        # Optional. The measurement unit defined in the user's account settings.
        # Corresponds to the JSON property `swimUnit`
        # @return [String]
        attr_accessor :swim_unit
      
        # Optional. The measurement unit defined in the user's account settings.
        # Corresponds to the JSON property `temperatureUnit`
        # @return [String]
        attr_accessor :temperature_unit
      
        # Optional. The timezone defined in the user's account settings. This follows
        # the IANA [Time Zone Database](https://www.iana.org/time-zones). Updates to
        # this field are currently not supported.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        # Optional. The user's timezone offset relative to UTC. Updates to this field
        # are currently not supported.
        # Corresponds to the JSON property `utcOffset`
        # @return [String]
        attr_accessor :utc_offset
      
        # Optional. The measurement unit defined in the user's account settings.
        # Corresponds to the JSON property `waterUnit`
        # @return [String]
        attr_accessor :water_unit
      
        # Optional. The measurement unit defined in the user's account settings.
        # Corresponds to the JSON property `weightUnit`
        # @return [String]
        attr_accessor :weight_unit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_stride_enabled = args[:auto_stride_enabled] if args.key?(:auto_stride_enabled)
          @distance_unit = args[:distance_unit] if args.key?(:distance_unit)
          @glucose_unit = args[:glucose_unit] if args.key?(:glucose_unit)
          @height_unit = args[:height_unit] if args.key?(:height_unit)
          @language_locale = args[:language_locale] if args.key?(:language_locale)
          @name = args[:name] if args.key?(:name)
          @stride_length_running_type = args[:stride_length_running_type] if args.key?(:stride_length_running_type)
          @stride_length_walking_type = args[:stride_length_walking_type] if args.key?(:stride_length_walking_type)
          @swim_unit = args[:swim_unit] if args.key?(:swim_unit)
          @temperature_unit = args[:temperature_unit] if args.key?(:temperature_unit)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @utc_offset = args[:utc_offset] if args.key?(:utc_offset)
          @water_unit = args[:water_unit] if args.key?(:water_unit)
          @weight_unit = args[:weight_unit] if args.key?(:weight_unit)
        end
      end
      
      # A sleep session possibly including stages.
      class Sleep
        include Google::Apis::Core::Hashable
      
        # Output only. Creation time of this sleep observation.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Represents a time interval of session data point, which bundles multiple
        # observed metrics together.
        # Corresponds to the JSON property `interval`
        # @return [Google::Apis::HealthV4::SessionTimeInterval]
        attr_accessor :interval
      
        # Additional information about how the sleep was processed.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::HealthV4::SleepMetadata]
        attr_accessor :metadata
      
        # Optional. “Out of bed” segments that can overlap with sleep stages.
        # Corresponds to the JSON property `outOfBedSegments`
        # @return [Array<Google::Apis::HealthV4::OutOfBedSegment>]
        attr_accessor :out_of_bed_segments
      
        # Optional. List of non-overlapping contiguous sleep stage segments that cover
        # the sleep period.
        # Corresponds to the JSON property `stages`
        # @return [Array<Google::Apis::HealthV4::SleepStage>]
        attr_accessor :stages
      
        # Sleep summary: metrics and stages summary.
        # Corresponds to the JSON property `summary`
        # @return [Google::Apis::HealthV4::SleepSummary]
        attr_accessor :summary
      
        # Optional. SleepType: classic or stages.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. Last update time of this sleep observation.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @interval = args[:interval] if args.key?(:interval)
          @metadata = args[:metadata] if args.key?(:metadata)
          @out_of_bed_segments = args[:out_of_bed_segments] if args.key?(:out_of_bed_segments)
          @stages = args[:stages] if args.key?(:stages)
          @summary = args[:summary] if args.key?(:summary)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Additional information about how the sleep was processed.
      class SleepMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. Sleep identifier relevant in the context of the data source.
        # Corresponds to the JSON property `externalId`
        # @return [String]
        attr_accessor :external_id
      
        # Output only. Some sleeps autodetected by algorithms can be manually edited by
        # users.
        # Corresponds to the JSON property `manuallyEdited`
        # @return [Boolean]
        attr_accessor :manually_edited
        alias_method :manually_edited?, :manually_edited
      
        # Output only. Naps are sleeps without stages and relatively short durations.
        # Corresponds to the JSON property `nap`
        # @return [Boolean]
        attr_accessor :nap
        alias_method :nap?, :nap
      
        # Output only. Sleep and sleep stages algorithms finished processing.
        # Corresponds to the JSON property `processed`
        # @return [Boolean]
        attr_accessor :processed
        alias_method :processed?, :processed
      
        # Output only. Sleep stages algorithm processing status.
        # Corresponds to the JSON property `stagesStatus`
        # @return [String]
        attr_accessor :stages_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @external_id = args[:external_id] if args.key?(:external_id)
          @manually_edited = args[:manually_edited] if args.key?(:manually_edited)
          @nap = args[:nap] if args.key?(:nap)
          @processed = args[:processed] if args.key?(:processed)
          @stages_status = args[:stages_status] if args.key?(:stages_status)
        end
      end
      
      # Sleep stage segment.
      class SleepStage
        include Google::Apis::Core::Hashable
      
        # Output only. Creation time of this sleep stages segment.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. Sleep stage end time.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Required. The offset of the user's local time at the end of the sleep stage
        # relative to the Coordinated Universal Time (UTC).
        # Corresponds to the JSON property `endUtcOffset`
        # @return [String]
        attr_accessor :end_utc_offset
      
        # Required. Sleep stage start time.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Required. The offset of the user's local time at the start of the sleep stage
        # relative to the Coordinated Universal Time (UTC).
        # Corresponds to the JSON property `startUtcOffset`
        # @return [String]
        attr_accessor :start_utc_offset
      
        # Required. Sleep stage type: AWAKE, DEEP, REM, LIGHT etc.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. Last update time of this sleep stages segment.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @end_utc_offset = args[:end_utc_offset] if args.key?(:end_utc_offset)
          @start_time = args[:start_time] if args.key?(:start_time)
          @start_utc_offset = args[:start_utc_offset] if args.key?(:start_utc_offset)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Sleep summary: metrics and stages summary.
      class SleepSummary
        include Google::Apis::Core::Hashable
      
        # Output only. Minutes after wake up calculated by restlessness algorithm.
        # Corresponds to the JSON property `minutesAfterWakeUp`
        # @return [Fixnum]
        attr_accessor :minutes_after_wake_up
      
        # Output only. Total number of minutes asleep. For classic sleep it is the sum
        # of ASLEEP stages (excluding AWAKE and RESTLESS). For "stages" sleep it is the
        # sum of LIGHT, REM and DEEP stages (excluding AWAKE).
        # Corresponds to the JSON property `minutesAsleep`
        # @return [Fixnum]
        attr_accessor :minutes_asleep
      
        # Output only. Total number of minutes awake. It is a sum of all AWAKE stages.
        # Corresponds to the JSON property `minutesAwake`
        # @return [Fixnum]
        attr_accessor :minutes_awake
      
        # Output only. Delta between wake time and bedtime. It is the sum of all stages.
        # Corresponds to the JSON property `minutesInSleepPeriod`
        # @return [Fixnum]
        attr_accessor :minutes_in_sleep_period
      
        # Output only. Minutes to fall asleep calculated by restlessness algorithm.
        # Corresponds to the JSON property `minutesToFallAsleep`
        # @return [Fixnum]
        attr_accessor :minutes_to_fall_asleep
      
        # Output only. List of summaries (total duration and segment count) per each
        # sleep stage type.
        # Corresponds to the JSON property `stagesSummary`
        # @return [Array<Google::Apis::HealthV4::StageSummary>]
        attr_accessor :stages_summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @minutes_after_wake_up = args[:minutes_after_wake_up] if args.key?(:minutes_after_wake_up)
          @minutes_asleep = args[:minutes_asleep] if args.key?(:minutes_asleep)
          @minutes_awake = args[:minutes_awake] if args.key?(:minutes_awake)
          @minutes_in_sleep_period = args[:minutes_in_sleep_period] if args.key?(:minutes_in_sleep_period)
          @minutes_to_fall_asleep = args[:minutes_to_fall_asleep] if args.key?(:minutes_to_fall_asleep)
          @stages_summary = args[:stages_summary] if args.key?(:stages_summary)
        end
      end
      
      # Represents splits or laps recorded within an exercise. Lap events partition a
      # workout into segments based on criteria like distance, time, or calories.
      class SplitSummary
        include Google::Apis::Core::Hashable
      
        # Output only. Lap time excluding the pauses.
        # Corresponds to the JSON property `activeDuration`
        # @return [String]
        attr_accessor :active_duration
      
        # Required. Lap end time
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Required. Lap end time offset from UTC
        # Corresponds to the JSON property `endUtcOffset`
        # @return [String]
        attr_accessor :end_utc_offset
      
        # Summary metrics for an exercise.
        # Corresponds to the JSON property `metricsSummary`
        # @return [Google::Apis::HealthV4::MetricsSummary]
        attr_accessor :metrics_summary
      
        # Required. Method used to split the exercise laps. Users may manually mark the
        # lap as complete even if the tracking is automatic.
        # Corresponds to the JSON property `splitType`
        # @return [String]
        attr_accessor :split_type
      
        # Required. Lap start time
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Required. Lap start time offset from UTC
        # Corresponds to the JSON property `startUtcOffset`
        # @return [String]
        attr_accessor :start_utc_offset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_duration = args[:active_duration] if args.key?(:active_duration)
          @end_time = args[:end_time] if args.key?(:end_time)
          @end_utc_offset = args[:end_utc_offset] if args.key?(:end_utc_offset)
          @metrics_summary = args[:metrics_summary] if args.key?(:metrics_summary)
          @split_type = args[:split_type] if args.key?(:split_type)
          @start_time = args[:start_time] if args.key?(:start_time)
          @start_utc_offset = args[:start_utc_offset] if args.key?(:start_utc_offset)
        end
      end
      
      # Total duration and segment count for a stage.
      class StageSummary
        include Google::Apis::Core::Hashable
      
        # Output only. Number of sleep stages segments.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Output only. Total duration in minutes of a sleep stage.
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        # Output only. Sleep stage type: AWAKE, DEEP, REM, LIGHT etc.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @minutes = args[:minutes] if args.key?(:minutes)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
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
      
      # Step count over the time interval.
      class Steps
        include Google::Apis::Core::Hashable
      
        # Required. Number of steps in the recorded interval.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Represents a time interval of an observed data point.
        # Corresponds to the JSON property `interval`
        # @return [Google::Apis::HealthV4::ObservationTimeInterval]
        attr_accessor :interval
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @interval = args[:interval] if args.key?(:interval)
        end
      end
      
      # Represents the result of the rollup of the steps data type.
      class StepsRollupValue
        include Google::Apis::Core::Hashable
      
        # Total number of steps in the interval.
        # Corresponds to the JSON property `countSum`
        # @return [Fixnum]
        attr_accessor :count_sum
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count_sum = args[:count_sum] if args.key?(:count_sum)
        end
      end
      
      # -- Resource Messages -- A subscriber receives notifications from Google Health
      # API.
      class Subscriber
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which the subscriber was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Authorization mechanism for a subscriber endpoint. For all requests sent by
        # the Webhooks service, the JSON payload is cryptographically signed. The
        # signature is delivered in the `X-HEALTHAPI-SIGNATURE` HTTP header. This is an
        # ECDSA (NIST P256) signature of the JSON payload. Clients must verify this
        # signature using Google Health API's public key to confirm the payload was sent
        # by the Health API.
        # Corresponds to the JSON property `endpointAuthorization`
        # @return [Google::Apis::HealthV4::EndpointAuthorization]
        attr_accessor :endpoint_authorization
      
        # Required. The full HTTPS URI where update notifications will be sent. The URI
        # must be a valid URL and use HTTPS as the scheme. This endpoint will be
        # verified during CreateSubscriber and UpdateSubscriber calls. See RPC
        # documentation for verification details.
        # Corresponds to the JSON property `endpointUri`
        # @return [String]
        attr_accessor :endpoint_uri
      
        # Identifier. The resource name of the Subscriber. Format: projects/`project`/
        # subscribers/`subscriber` The `project` ID is a Google Cloud Project ID or
        # Project Number. The `subscriber` ID is user-settable (4-36 characters,
        # matching /[a-z]([a-z0-9-]`2,34`[a-z0-9])/) if provided during creation, or
        # system-generated otherwise (e.g., a UUID). Example (User-settable subscriber
        # ID): projects/my-project/subscribers/my-sub-123 Example (System-generated
        # subscriber ID): projects/my-project/subscribers/a1b2c3d4-e5f6-7890-1234-
        # 567890abcdef
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The state of the subscriber.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Optional. Configuration for the subscriber.
        # Corresponds to the JSON property `subscriberConfigs`
        # @return [Array<Google::Apis::HealthV4::SubscriberConfig>]
        attr_accessor :subscriber_configs
      
        # Output only. The time at which the subscriber was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @endpoint_authorization = args[:endpoint_authorization] if args.key?(:endpoint_authorization)
          @endpoint_uri = args[:endpoint_uri] if args.key?(:endpoint_uri)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @subscriber_configs = args[:subscriber_configs] if args.key?(:subscriber_configs)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Configuration for a subscriber. A notification is sent to a subscription ONLY
      # if the subscriber has a config for the data type.
      class SubscriberConfig
        include Google::Apis::Core::Hashable
      
        # Required. Supported data types are: "altitude", "distance", "floors", "sleep",
        # "steps", "weight". Values should be in kebab-case.
        # Corresponds to the JSON property `dataTypes`
        # @return [Array<String>]
        attr_accessor :data_types
      
        # Required. Policy for subscription creation.
        # Corresponds to the JSON property `subscriptionCreatePolicy`
        # @return [String]
        attr_accessor :subscription_create_policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_types = args[:data_types] if args.key?(:data_types)
          @subscription_create_policy = args[:subscription_create_policy] if args.key?(:subscription_create_policy)
        end
      end
      
      # Swim lengths data over the time interval.
      class SwimLengthsData
        include Google::Apis::Core::Hashable
      
        # Represents a time interval of an observed data point.
        # Corresponds to the JSON property `interval`
        # @return [Google::Apis::HealthV4::ObservationTimeInterval]
        attr_accessor :interval
      
        # Required. Number of strokes in the lap.
        # Corresponds to the JSON property `strokeCount`
        # @return [Fixnum]
        attr_accessor :stroke_count
      
        # Required. Swim stroke type.
        # Corresponds to the JSON property `swimStrokeType`
        # @return [String]
        attr_accessor :swim_stroke_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @interval = args[:interval] if args.key?(:interval)
          @stroke_count = args[:stroke_count] if args.key?(:stroke_count)
          @swim_stroke_type = args[:swim_stroke_type] if args.key?(:swim_stroke_type)
        end
      end
      
      # Represents the result of the rollup of the swim lengths data type.
      class SwimLengthsDataRollupValue
        include Google::Apis::Core::Hashable
      
        # Total number of swim strokes in the interval.
        # Corresponds to the JSON property `strokeCountSum`
        # @return [Fixnum]
        attr_accessor :stroke_count_sum
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @stroke_count_sum = args[:stroke_count_sum] if args.key?(:stroke_count_sum)
        end
      end
      
      # Time in heart rate zone record. It's an interval spent in specific heart rate
      # zone.
      class TimeInHeartRateZone
        include Google::Apis::Core::Hashable
      
        # Required. Heart rate zone type.
        # Corresponds to the JSON property `heartRateZoneType`
        # @return [String]
        attr_accessor :heart_rate_zone_type
      
        # Represents a time interval of an observed data point.
        # Corresponds to the JSON property `interval`
        # @return [Google::Apis::HealthV4::ObservationTimeInterval]
        attr_accessor :interval
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @heart_rate_zone_type = args[:heart_rate_zone_type] if args.key?(:heart_rate_zone_type)
          @interval = args[:interval] if args.key?(:interval)
        end
      end
      
      # Represents the result of the rollup of the time in heart rate zone data type.
      class TimeInHeartRateZoneRollupValue
        include Google::Apis::Core::Hashable
      
        # List of time spent in each heart rate zone.
        # Corresponds to the JSON property `timeInHeartRateZones`
        # @return [Array<Google::Apis::HealthV4::TimeInHeartRateZoneValue>]
        attr_accessor :time_in_heart_rate_zones
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @time_in_heart_rate_zones = args[:time_in_heart_rate_zones] if args.key?(:time_in_heart_rate_zones)
        end
      end
      
      # Represents the total time spent in a specific heart rate zone.
      class TimeInHeartRateZoneValue
        include Google::Apis::Core::Hashable
      
        # The total time spent in the specified heart rate zone.
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # The heart rate zone.
        # Corresponds to the JSON property `heartRateZone`
        # @return [String]
        attr_accessor :heart_rate_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration = args[:duration] if args.key?(:duration)
          @heart_rate_zone = args[:heart_rate_zone] if args.key?(:heart_rate_zone)
        end
      end
      
      # Time spent in each heart rate zone.
      class TimeInHeartRateZones
        include Google::Apis::Core::Hashable
      
        # Optional. Time spent in light heart rate zone.
        # Corresponds to the JSON property `lightTime`
        # @return [String]
        attr_accessor :light_time
      
        # Optional. Time spent in moderate heart rate zone.
        # Corresponds to the JSON property `moderateTime`
        # @return [String]
        attr_accessor :moderate_time
      
        # Optional. Time spent in peak heart rate zone.
        # Corresponds to the JSON property `peakTime`
        # @return [String]
        attr_accessor :peak_time
      
        # Optional. Time spent in vigorous heart rate zone.
        # Corresponds to the JSON property `vigorousTime`
        # @return [String]
        attr_accessor :vigorous_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @light_time = args[:light_time] if args.key?(:light_time)
          @moderate_time = args[:moderate_time] if args.key?(:moderate_time)
          @peak_time = args[:peak_time] if args.key?(:peak_time)
          @vigorous_time = args[:vigorous_time] if args.key?(:vigorous_time)
        end
      end
      
      # Represents a time of day. The date and time zone are either not significant or
      # are specified elsewhere. An API may choose to allow leap seconds. Related
      # types are google.type.Date and `google.protobuf.Timestamp`.
      class TimeOfDay
        include Google::Apis::Core::Hashable
      
        # Hours of a day in 24 hour format. Must be greater than or equal to 0 and
        # typically must be less than or equal to 23. An API may choose to allow the
        # value "24:00:00" for scenarios like business closing time.
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # Minutes of an hour. Must be greater than or equal to 0 and less than or equal
        # to 59.
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        # Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and
        # less than or equal to 999,999,999.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # Seconds of a minute. Must be greater than or equal to 0 and typically must be
        # less than or equal to 59. An API may allow the value 60 if it allows leap-
        # seconds.
        # Corresponds to the JSON property `seconds`
        # @return [Fixnum]
        attr_accessor :seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hours = args[:hours] if args.key?(:hours)
          @minutes = args[:minutes] if args.key?(:minutes)
          @nanos = args[:nanos] if args.key?(:nanos)
          @seconds = args[:seconds] if args.key?(:seconds)
        end
      end
      
      # Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/
      # time-zones).
      class TimeZone
        include Google::Apis::Core::Hashable
      
        # IANA Time Zone Database time zone. For example "America/New_York".
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. IANA Time Zone Database version number. For example "2019a".
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Represents the result of the rollup of the user's total calories.
      class TotalCaloriesRollupValue
        include Google::Apis::Core::Hashable
      
        # Sum of the total calories in kilocalories.
        # Corresponds to the JSON property `kcalSum`
        # @return [Float]
        attr_accessor :kcal_sum
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kcal_sum = args[:kcal_sum] if args.key?(:kcal_sum)
        end
      end
      
      # VO2 max measurement.
      class Vo2Max
        include Google::Apis::Core::Hashable
      
        # Optional. The method used to measure the VO2 max value.
        # Corresponds to the JSON property `measurementMethod`
        # @return [String]
        attr_accessor :measurement_method
      
        # Represents a sample time of an observed data point.
        # Corresponds to the JSON property `sampleTime`
        # @return [Google::Apis::HealthV4::ObservationSampleTime]
        attr_accessor :sample_time
      
        # Required. VO2 max value measured as in ml consumed oxygen / kg of body weight /
        # min.
        # Corresponds to the JSON property `vo2Max`
        # @return [Float]
        attr_accessor :vo2_max
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @measurement_method = args[:measurement_method] if args.key?(:measurement_method)
          @sample_time = args[:sample_time] if args.key?(:sample_time)
          @vo2_max = args[:vo2_max] if args.key?(:vo2_max)
        end
      end
      
      # Represents the volume quantity.
      class VolumeQuantity
        include Google::Apis::Core::Hashable
      
        # Required. Value representing the volume in milliliters.
        # Corresponds to the JSON property `milliliters`
        # @return [Float]
        attr_accessor :milliliters
      
        # Optional. Value representing the user provided unit.
        # Corresponds to the JSON property `userProvidedUnit`
        # @return [String]
        attr_accessor :user_provided_unit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @milliliters = args[:milliliters] if args.key?(:milliliters)
          @user_provided_unit = args[:user_provided_unit] if args.key?(:user_provided_unit)
        end
      end
      
      # Rollup for volume quantity.
      class VolumeQuantityRollup
        include Google::Apis::Core::Hashable
      
        # Required. The sum of volume in milliliters.
        # Corresponds to the JSON property `millilitersSum`
        # @return [Float]
        attr_accessor :milliliters_sum
      
        # Optional. The user provided unit on the last element.
        # Corresponds to the JSON property `userProvidedUnitLast`
        # @return [String]
        attr_accessor :user_provided_unit_last
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @milliliters_sum = args[:milliliters_sum] if args.key?(:milliliters_sum)
          @user_provided_unit_last = args[:user_provided_unit_last] if args.key?(:user_provided_unit_last)
        end
      end
      
      # Body weight measurement.
      class Weight
        include Google::Apis::Core::Hashable
      
        # Optional. Standard free-form notes captured at manual logging.
        # Corresponds to the JSON property `notes`
        # @return [String]
        attr_accessor :notes
      
        # Represents a sample time of an observed data point.
        # Corresponds to the JSON property `sampleTime`
        # @return [Google::Apis::HealthV4::ObservationSampleTime]
        attr_accessor :sample_time
      
        # Required. Weight of a user in grams.
        # Corresponds to the JSON property `weightGrams`
        # @return [Float]
        attr_accessor :weight_grams
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @notes = args[:notes] if args.key?(:notes)
          @sample_time = args[:sample_time] if args.key?(:sample_time)
          @weight_grams = args[:weight_grams] if args.key?(:weight_grams)
        end
      end
      
      # Represents the result of the rollup of the weight data type.
      class WeightRollupValue
        include Google::Apis::Core::Hashable
      
        # Average weight in grams.
        # Corresponds to the JSON property `weightGramsAvg`
        # @return [Float]
        attr_accessor :weight_grams_avg
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @weight_grams_avg = args[:weight_grams_avg] if args.key?(:weight_grams_avg)
        end
      end
    end
  end
end
