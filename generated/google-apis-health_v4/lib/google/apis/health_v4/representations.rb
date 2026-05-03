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
      
      class ActiveMinutes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActiveMinutesByActivityLevel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActiveMinutesRollupByActivityLevel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActiveMinutesRollupValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActiveZoneMinutes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActiveZoneMinutesRollupValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActivityLevel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActivityLevelRollupByActivityLevelType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActivityLevelRollupValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Altitude
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AltitudeRollupValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Application
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BasalEnergyBurned
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchDeleteDataPointsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BodyFat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BodyFatRollupValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CaloriesInHeartRateZoneRollupValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CaloriesInHeartRateZoneValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CivilDateTime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CivilTimeInterval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateSubscriberPayload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DailyHeartRateVariability
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DailyHeartRateZones
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DailyOxygenSaturation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DailyRespiratoryRate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DailyRestingHeartRate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DailyRestingHeartRateMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DailyRollUpDataPointsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DailyRollUpDataPointsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DailyRollupDataPoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DailySleepTemperatureDerivations
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DailyVo2Max
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataPoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DateTime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Device
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Distance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DistanceRollupValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EndpointAuthorization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Exercise
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExerciseEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExerciseMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportExerciseTcxResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Floors
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FloorsRollupValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevicesandservicesHealthV4DataType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevicesandservicesHealthV4WebhookNotificationCloudLog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HeartRate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HeartRateMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HeartRateRollupValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HeartRateVariability
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HeartRateVariabilityPersonalRangeRollupValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HeartRateZone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Height
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HydrationLog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HydrationLogRollupValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Identity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Interval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDataPointsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSubscribersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricsSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MobilityMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ObservationSampleTime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ObservationTimeInterval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OutOfBedSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OxygenSaturation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Profile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReconcileDataPointsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReconciledDataPoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RespiratoryRateSleepSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RespiratoryRateSleepSummaryStatistics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestingHeartRatePersonalRangeRollupValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RollUpDataPointsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RollUpDataPointsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RollupDataPoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunVo2Max
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunVo2MaxRollupValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SedentaryPeriod
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SedentaryPeriodRollupValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SessionTimeInterval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Settings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Sleep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SleepMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SleepStage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SleepSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SplitSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StageSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Steps
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StepsRollupValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Subscriber
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubscriberConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SwimLengthsData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SwimLengthsDataRollupValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeInHeartRateZone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeInHeartRateZoneRollupValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeInHeartRateZoneValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeInHeartRateZones
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeOfDay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeZone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TotalCaloriesRollupValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Vo2Max
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VolumeQuantity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VolumeQuantityRollup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Weight
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WeightRollupValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActiveMinutes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :active_minutes_by_activity_level, as: 'activeMinutesByActivityLevel', class: Google::Apis::HealthV4::ActiveMinutesByActivityLevel, decorator: Google::Apis::HealthV4::ActiveMinutesByActivityLevel::Representation
      
          property :interval, as: 'interval', class: Google::Apis::HealthV4::ObservationTimeInterval, decorator: Google::Apis::HealthV4::ObservationTimeInterval::Representation
      
        end
      end
      
      class ActiveMinutesByActivityLevel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_minutes, :numeric_string => true, as: 'activeMinutes'
          property :activity_level, as: 'activityLevel'
        end
      end
      
      class ActiveMinutesRollupByActivityLevel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_minutes_sum, :numeric_string => true, as: 'activeMinutesSum'
          property :activity_level, as: 'activityLevel'
        end
      end
      
      class ActiveMinutesRollupValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :active_minutes_rollup_by_activity_level, as: 'activeMinutesRollupByActivityLevel', class: Google::Apis::HealthV4::ActiveMinutesRollupByActivityLevel, decorator: Google::Apis::HealthV4::ActiveMinutesRollupByActivityLevel::Representation
      
        end
      end
      
      class ActiveZoneMinutes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_zone_minutes, :numeric_string => true, as: 'activeZoneMinutes'
          property :heart_rate_zone, as: 'heartRateZone'
          property :interval, as: 'interval', class: Google::Apis::HealthV4::ObservationTimeInterval, decorator: Google::Apis::HealthV4::ObservationTimeInterval::Representation
      
        end
      end
      
      class ActiveZoneMinutesRollupValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sum_in_cardio_heart_zone, :numeric_string => true, as: 'sumInCardioHeartZone'
          property :sum_in_fat_burn_heart_zone, :numeric_string => true, as: 'sumInFatBurnHeartZone'
          property :sum_in_peak_heart_zone, :numeric_string => true, as: 'sumInPeakHeartZone'
        end
      end
      
      class ActivityLevel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :activity_level_type, as: 'activityLevelType'
          property :interval, as: 'interval', class: Google::Apis::HealthV4::ObservationTimeInterval, decorator: Google::Apis::HealthV4::ObservationTimeInterval::Representation
      
        end
      end
      
      class ActivityLevelRollupByActivityLevelType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :activity_level_type, as: 'activityLevelType'
          property :total_duration, as: 'totalDuration'
        end
      end
      
      class ActivityLevelRollupValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :activity_level_rollups_by_activity_level_type, as: 'activityLevelRollupsByActivityLevelType', class: Google::Apis::HealthV4::ActivityLevelRollupByActivityLevelType, decorator: Google::Apis::HealthV4::ActivityLevelRollupByActivityLevelType::Representation
      
        end
      end
      
      class Altitude
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gain_millimeters, :numeric_string => true, as: 'gainMillimeters'
          property :interval, as: 'interval', class: Google::Apis::HealthV4::ObservationTimeInterval, decorator: Google::Apis::HealthV4::ObservationTimeInterval::Representation
      
        end
      end
      
      class AltitudeRollupValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gain_millimeters_sum, :numeric_string => true, as: 'gainMillimetersSum'
        end
      end
      
      class Application
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :google_web_client_id, as: 'googleWebClientId'
          property :package_name, as: 'packageName'
          property :web_client_id, as: 'webClientId'
        end
      end
      
      class BasalEnergyBurned
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :interval, as: 'interval', class: Google::Apis::HealthV4::ObservationTimeInterval, decorator: Google::Apis::HealthV4::ObservationTimeInterval::Representation
      
          property :kcal, as: 'kcal'
        end
      end
      
      class BatchDeleteDataPointsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :names, as: 'names'
        end
      end
      
      class BodyFat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :percentage, as: 'percentage'
          property :sample_time, as: 'sampleTime', class: Google::Apis::HealthV4::ObservationSampleTime, decorator: Google::Apis::HealthV4::ObservationSampleTime::Representation
      
        end
      end
      
      class BodyFatRollupValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :body_fat_percentage_avg, as: 'bodyFatPercentageAvg'
        end
      end
      
      class CaloriesInHeartRateZoneRollupValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :calories_in_heart_rate_zones, as: 'caloriesInHeartRateZones', class: Google::Apis::HealthV4::CaloriesInHeartRateZoneValue, decorator: Google::Apis::HealthV4::CaloriesInHeartRateZoneValue::Representation
      
        end
      end
      
      class CaloriesInHeartRateZoneValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :heart_rate_zone, as: 'heartRateZone'
          property :kcal, as: 'kcal'
        end
      end
      
      class CivilDateTime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date, as: 'date', class: Google::Apis::HealthV4::Date, decorator: Google::Apis::HealthV4::Date::Representation
      
          property :time, as: 'time', class: Google::Apis::HealthV4::TimeOfDay, decorator: Google::Apis::HealthV4::TimeOfDay::Representation
      
        end
      end
      
      class CivilTimeInterval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end, as: 'end', class: Google::Apis::HealthV4::CivilDateTime, decorator: Google::Apis::HealthV4::CivilDateTime::Representation
      
          property :start, as: 'start', class: Google::Apis::HealthV4::CivilDateTime, decorator: Google::Apis::HealthV4::CivilDateTime::Representation
      
        end
      end
      
      class CreateSubscriberPayload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :endpoint_authorization, as: 'endpointAuthorization', class: Google::Apis::HealthV4::EndpointAuthorization, decorator: Google::Apis::HealthV4::EndpointAuthorization::Representation
      
          property :endpoint_uri, as: 'endpointUri'
          collection :subscriber_configs, as: 'subscriberConfigs', class: Google::Apis::HealthV4::SubscriberConfig, decorator: Google::Apis::HealthV4::SubscriberConfig::Representation
      
        end
      end
      
      class DailyHeartRateVariability
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :average_heart_rate_variability_milliseconds, as: 'averageHeartRateVariabilityMilliseconds'
          property :date, as: 'date', class: Google::Apis::HealthV4::Date, decorator: Google::Apis::HealthV4::Date::Representation
      
          property :deep_sleep_root_mean_square_of_successive_differences_milliseconds, as: 'deepSleepRootMeanSquareOfSuccessiveDifferencesMilliseconds'
          property :entropy, as: 'entropy'
          property :non_rem_heart_rate_beats_per_minute, :numeric_string => true, as: 'nonRemHeartRateBeatsPerMinute'
        end
      end
      
      class DailyHeartRateZones
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date, as: 'date', class: Google::Apis::HealthV4::Date, decorator: Google::Apis::HealthV4::Date::Representation
      
          collection :heart_rate_zones, as: 'heartRateZones', class: Google::Apis::HealthV4::HeartRateZone, decorator: Google::Apis::HealthV4::HeartRateZone::Representation
      
        end
      end
      
      class DailyOxygenSaturation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :average_percentage, as: 'averagePercentage'
          property :date, as: 'date', class: Google::Apis::HealthV4::Date, decorator: Google::Apis::HealthV4::Date::Representation
      
          property :lower_bound_percentage, as: 'lowerBoundPercentage'
          property :standard_deviation_percentage, as: 'standardDeviationPercentage'
          property :upper_bound_percentage, as: 'upperBoundPercentage'
        end
      end
      
      class DailyRespiratoryRate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :breaths_per_minute, as: 'breathsPerMinute'
          property :date, as: 'date', class: Google::Apis::HealthV4::Date, decorator: Google::Apis::HealthV4::Date::Representation
      
        end
      end
      
      class DailyRestingHeartRate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :beats_per_minute, :numeric_string => true, as: 'beatsPerMinute'
          property :daily_resting_heart_rate_metadata, as: 'dailyRestingHeartRateMetadata', class: Google::Apis::HealthV4::DailyRestingHeartRateMetadata, decorator: Google::Apis::HealthV4::DailyRestingHeartRateMetadata::Representation
      
          property :date, as: 'date', class: Google::Apis::HealthV4::Date, decorator: Google::Apis::HealthV4::Date::Representation
      
        end
      end
      
      class DailyRestingHeartRateMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :calculation_method, as: 'calculationMethod'
        end
      end
      
      class DailyRollUpDataPointsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_source_family, as: 'dataSourceFamily'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :range, as: 'range', class: Google::Apis::HealthV4::CivilTimeInterval, decorator: Google::Apis::HealthV4::CivilTimeInterval::Representation
      
          property :window_size_days, as: 'windowSizeDays'
        end
      end
      
      class DailyRollUpDataPointsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rollup_data_points, as: 'rollupDataPoints', class: Google::Apis::HealthV4::DailyRollupDataPoint, decorator: Google::Apis::HealthV4::DailyRollupDataPoint::Representation
      
        end
      end
      
      class DailyRollupDataPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_minutes, as: 'activeMinutes', class: Google::Apis::HealthV4::ActiveMinutesRollupValue, decorator: Google::Apis::HealthV4::ActiveMinutesRollupValue::Representation
      
          property :active_zone_minutes, as: 'activeZoneMinutes', class: Google::Apis::HealthV4::ActiveZoneMinutesRollupValue, decorator: Google::Apis::HealthV4::ActiveZoneMinutesRollupValue::Representation
      
          property :activity_level, as: 'activityLevel', class: Google::Apis::HealthV4::ActivityLevelRollupValue, decorator: Google::Apis::HealthV4::ActivityLevelRollupValue::Representation
      
          property :altitude, as: 'altitude', class: Google::Apis::HealthV4::AltitudeRollupValue, decorator: Google::Apis::HealthV4::AltitudeRollupValue::Representation
      
          property :body_fat, as: 'bodyFat', class: Google::Apis::HealthV4::BodyFatRollupValue, decorator: Google::Apis::HealthV4::BodyFatRollupValue::Representation
      
          property :calories_in_heart_rate_zone, as: 'caloriesInHeartRateZone', class: Google::Apis::HealthV4::CaloriesInHeartRateZoneRollupValue, decorator: Google::Apis::HealthV4::CaloriesInHeartRateZoneRollupValue::Representation
      
          property :civil_end_time, as: 'civilEndTime', class: Google::Apis::HealthV4::CivilDateTime, decorator: Google::Apis::HealthV4::CivilDateTime::Representation
      
          property :civil_start_time, as: 'civilStartTime', class: Google::Apis::HealthV4::CivilDateTime, decorator: Google::Apis::HealthV4::CivilDateTime::Representation
      
          property :distance, as: 'distance', class: Google::Apis::HealthV4::DistanceRollupValue, decorator: Google::Apis::HealthV4::DistanceRollupValue::Representation
      
          property :floors, as: 'floors', class: Google::Apis::HealthV4::FloorsRollupValue, decorator: Google::Apis::HealthV4::FloorsRollupValue::Representation
      
          property :heart_rate, as: 'heartRate', class: Google::Apis::HealthV4::HeartRateRollupValue, decorator: Google::Apis::HealthV4::HeartRateRollupValue::Representation
      
          property :heart_rate_variability_personal_range, as: 'heartRateVariabilityPersonalRange', class: Google::Apis::HealthV4::HeartRateVariabilityPersonalRangeRollupValue, decorator: Google::Apis::HealthV4::HeartRateVariabilityPersonalRangeRollupValue::Representation
      
          property :hydration_log, as: 'hydrationLog', class: Google::Apis::HealthV4::HydrationLogRollupValue, decorator: Google::Apis::HealthV4::HydrationLogRollupValue::Representation
      
          property :resting_heart_rate_personal_range, as: 'restingHeartRatePersonalRange', class: Google::Apis::HealthV4::RestingHeartRatePersonalRangeRollupValue, decorator: Google::Apis::HealthV4::RestingHeartRatePersonalRangeRollupValue::Representation
      
          property :run_vo2_max, as: 'runVo2Max', class: Google::Apis::HealthV4::RunVo2MaxRollupValue, decorator: Google::Apis::HealthV4::RunVo2MaxRollupValue::Representation
      
          property :sedentary_period, as: 'sedentaryPeriod', class: Google::Apis::HealthV4::SedentaryPeriodRollupValue, decorator: Google::Apis::HealthV4::SedentaryPeriodRollupValue::Representation
      
          property :steps, as: 'steps', class: Google::Apis::HealthV4::StepsRollupValue, decorator: Google::Apis::HealthV4::StepsRollupValue::Representation
      
          property :swim_lengths_data, as: 'swimLengthsData', class: Google::Apis::HealthV4::SwimLengthsDataRollupValue, decorator: Google::Apis::HealthV4::SwimLengthsDataRollupValue::Representation
      
          property :time_in_heart_rate_zone, as: 'timeInHeartRateZone', class: Google::Apis::HealthV4::TimeInHeartRateZoneRollupValue, decorator: Google::Apis::HealthV4::TimeInHeartRateZoneRollupValue::Representation
      
          property :total_calories, as: 'totalCalories', class: Google::Apis::HealthV4::TotalCaloriesRollupValue, decorator: Google::Apis::HealthV4::TotalCaloriesRollupValue::Representation
      
          property :weight, as: 'weight', class: Google::Apis::HealthV4::WeightRollupValue, decorator: Google::Apis::HealthV4::WeightRollupValue::Representation
      
        end
      end
      
      class DailySleepTemperatureDerivations
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :baseline_temperature_celsius, as: 'baselineTemperatureCelsius'
          property :date, as: 'date', class: Google::Apis::HealthV4::Date, decorator: Google::Apis::HealthV4::Date::Representation
      
          property :nightly_temperature_celsius, as: 'nightlyTemperatureCelsius'
          property :relative_nightly_stddev30d_celsius, as: 'relativeNightlyStddev30dCelsius'
        end
      end
      
      class DailyVo2Max
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cardio_fitness_level, as: 'cardioFitnessLevel'
          property :date, as: 'date', class: Google::Apis::HealthV4::Date, decorator: Google::Apis::HealthV4::Date::Representation
      
          property :estimated, as: 'estimated'
          property :vo2_max, as: 'vo2Max'
          property :vo2_max_covariance, as: 'vo2MaxCovariance'
        end
      end
      
      class DataPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_minutes, as: 'activeMinutes', class: Google::Apis::HealthV4::ActiveMinutes, decorator: Google::Apis::HealthV4::ActiveMinutes::Representation
      
          property :active_zone_minutes, as: 'activeZoneMinutes', class: Google::Apis::HealthV4::ActiveZoneMinutes, decorator: Google::Apis::HealthV4::ActiveZoneMinutes::Representation
      
          property :activity_level, as: 'activityLevel', class: Google::Apis::HealthV4::ActivityLevel, decorator: Google::Apis::HealthV4::ActivityLevel::Representation
      
          property :altitude, as: 'altitude', class: Google::Apis::HealthV4::Altitude, decorator: Google::Apis::HealthV4::Altitude::Representation
      
          property :basal_energy_burned, as: 'basalEnergyBurned', class: Google::Apis::HealthV4::BasalEnergyBurned, decorator: Google::Apis::HealthV4::BasalEnergyBurned::Representation
      
          property :body_fat, as: 'bodyFat', class: Google::Apis::HealthV4::BodyFat, decorator: Google::Apis::HealthV4::BodyFat::Representation
      
          property :daily_heart_rate_variability, as: 'dailyHeartRateVariability', class: Google::Apis::HealthV4::DailyHeartRateVariability, decorator: Google::Apis::HealthV4::DailyHeartRateVariability::Representation
      
          property :daily_heart_rate_zones, as: 'dailyHeartRateZones', class: Google::Apis::HealthV4::DailyHeartRateZones, decorator: Google::Apis::HealthV4::DailyHeartRateZones::Representation
      
          property :daily_oxygen_saturation, as: 'dailyOxygenSaturation', class: Google::Apis::HealthV4::DailyOxygenSaturation, decorator: Google::Apis::HealthV4::DailyOxygenSaturation::Representation
      
          property :daily_respiratory_rate, as: 'dailyRespiratoryRate', class: Google::Apis::HealthV4::DailyRespiratoryRate, decorator: Google::Apis::HealthV4::DailyRespiratoryRate::Representation
      
          property :daily_resting_heart_rate, as: 'dailyRestingHeartRate', class: Google::Apis::HealthV4::DailyRestingHeartRate, decorator: Google::Apis::HealthV4::DailyRestingHeartRate::Representation
      
          property :daily_sleep_temperature_derivations, as: 'dailySleepTemperatureDerivations', class: Google::Apis::HealthV4::DailySleepTemperatureDerivations, decorator: Google::Apis::HealthV4::DailySleepTemperatureDerivations::Representation
      
          property :daily_vo2_max, as: 'dailyVo2Max', class: Google::Apis::HealthV4::DailyVo2Max, decorator: Google::Apis::HealthV4::DailyVo2Max::Representation
      
          property :data_source, as: 'dataSource', class: Google::Apis::HealthV4::DataSource, decorator: Google::Apis::HealthV4::DataSource::Representation
      
          property :distance, as: 'distance', class: Google::Apis::HealthV4::Distance, decorator: Google::Apis::HealthV4::Distance::Representation
      
          property :exercise, as: 'exercise', class: Google::Apis::HealthV4::Exercise, decorator: Google::Apis::HealthV4::Exercise::Representation
      
          property :floors, as: 'floors', class: Google::Apis::HealthV4::Floors, decorator: Google::Apis::HealthV4::Floors::Representation
      
          property :heart_rate, as: 'heartRate', class: Google::Apis::HealthV4::HeartRate, decorator: Google::Apis::HealthV4::HeartRate::Representation
      
          property :heart_rate_variability, as: 'heartRateVariability', class: Google::Apis::HealthV4::HeartRateVariability, decorator: Google::Apis::HealthV4::HeartRateVariability::Representation
      
          property :height, as: 'height', class: Google::Apis::HealthV4::Height, decorator: Google::Apis::HealthV4::Height::Representation
      
          property :hydration_log, as: 'hydrationLog', class: Google::Apis::HealthV4::HydrationLog, decorator: Google::Apis::HealthV4::HydrationLog::Representation
      
          property :name, as: 'name'
          property :oxygen_saturation, as: 'oxygenSaturation', class: Google::Apis::HealthV4::OxygenSaturation, decorator: Google::Apis::HealthV4::OxygenSaturation::Representation
      
          property :respiratory_rate_sleep_summary, as: 'respiratoryRateSleepSummary', class: Google::Apis::HealthV4::RespiratoryRateSleepSummary, decorator: Google::Apis::HealthV4::RespiratoryRateSleepSummary::Representation
      
          property :run_vo2_max, as: 'runVo2Max', class: Google::Apis::HealthV4::RunVo2Max, decorator: Google::Apis::HealthV4::RunVo2Max::Representation
      
          property :sedentary_period, as: 'sedentaryPeriod', class: Google::Apis::HealthV4::SedentaryPeriod, decorator: Google::Apis::HealthV4::SedentaryPeriod::Representation
      
          property :sleep, as: 'sleep', class: Google::Apis::HealthV4::Sleep, decorator: Google::Apis::HealthV4::Sleep::Representation
      
          property :steps, as: 'steps', class: Google::Apis::HealthV4::Steps, decorator: Google::Apis::HealthV4::Steps::Representation
      
          property :swim_lengths_data, as: 'swimLengthsData', class: Google::Apis::HealthV4::SwimLengthsData, decorator: Google::Apis::HealthV4::SwimLengthsData::Representation
      
          property :time_in_heart_rate_zone, as: 'timeInHeartRateZone', class: Google::Apis::HealthV4::TimeInHeartRateZone, decorator: Google::Apis::HealthV4::TimeInHeartRateZone::Representation
      
          property :vo2_max, as: 'vo2Max', class: Google::Apis::HealthV4::Vo2Max, decorator: Google::Apis::HealthV4::Vo2Max::Representation
      
          property :weight, as: 'weight', class: Google::Apis::HealthV4::Weight, decorator: Google::Apis::HealthV4::Weight::Representation
      
        end
      end
      
      class DataSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application, as: 'application', class: Google::Apis::HealthV4::Application, decorator: Google::Apis::HealthV4::Application::Representation
      
          property :device, as: 'device', class: Google::Apis::HealthV4::Device, decorator: Google::Apis::HealthV4::Device::Representation
      
          property :platform, as: 'platform'
          property :recording_method, as: 'recordingMethod'
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
      
      class DateTime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :hours, as: 'hours'
          property :minutes, as: 'minutes'
          property :month, as: 'month'
          property :nanos, as: 'nanos'
          property :seconds, as: 'seconds'
          property :time_zone, as: 'timeZone', class: Google::Apis::HealthV4::TimeZone, decorator: Google::Apis::HealthV4::TimeZone::Representation
      
          property :utc_offset, as: 'utcOffset'
          property :year, as: 'year'
        end
      end
      
      class Device
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :form_factor, as: 'formFactor'
          property :manufacturer, as: 'manufacturer'
        end
      end
      
      class Distance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :interval, as: 'interval', class: Google::Apis::HealthV4::ObservationTimeInterval, decorator: Google::Apis::HealthV4::ObservationTimeInterval::Representation
      
          property :millimeters, :numeric_string => true, as: 'millimeters'
        end
      end
      
      class DistanceRollupValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :millimeters_sum, :numeric_string => true, as: 'millimetersSum'
        end
      end
      
      class EndpointAuthorization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :secret, as: 'secret'
          property :secret_set, as: 'secretSet'
        end
      end
      
      class Exercise
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_duration, as: 'activeDuration'
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          collection :exercise_events, as: 'exerciseEvents', class: Google::Apis::HealthV4::ExerciseEvent, decorator: Google::Apis::HealthV4::ExerciseEvent::Representation
      
          property :exercise_metadata, as: 'exerciseMetadata', class: Google::Apis::HealthV4::ExerciseMetadata, decorator: Google::Apis::HealthV4::ExerciseMetadata::Representation
      
          property :exercise_type, as: 'exerciseType'
          property :interval, as: 'interval', class: Google::Apis::HealthV4::SessionTimeInterval, decorator: Google::Apis::HealthV4::SessionTimeInterval::Representation
      
          property :metrics_summary, as: 'metricsSummary', class: Google::Apis::HealthV4::MetricsSummary, decorator: Google::Apis::HealthV4::MetricsSummary::Representation
      
          property :notes, as: 'notes'
          collection :split_summaries, as: 'splitSummaries', class: Google::Apis::HealthV4::SplitSummary, decorator: Google::Apis::HealthV4::SplitSummary::Representation
      
          collection :splits, as: 'splits', class: Google::Apis::HealthV4::SplitSummary, decorator: Google::Apis::HealthV4::SplitSummary::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class ExerciseEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_time, as: 'eventTime'
          property :event_utc_offset, as: 'eventUtcOffset'
          property :exercise_event_type, as: 'exerciseEventType'
        end
      end
      
      class ExerciseMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :has_gps, as: 'hasGps'
          property :pool_length_millimeters, :numeric_string => true, as: 'poolLengthMillimeters'
        end
      end
      
      class ExportExerciseTcxResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tcx_data, as: 'tcxData'
        end
      end
      
      class Floors
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :interval, as: 'interval', class: Google::Apis::HealthV4::ObservationTimeInterval, decorator: Google::Apis::HealthV4::ObservationTimeInterval::Representation
      
        end
      end
      
      class FloorsRollupValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count_sum, :numeric_string => true, as: 'countSum'
        end
      end
      
      class GoogleDevicesandservicesHealthV4DataType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GoogleDevicesandservicesHealthV4WebhookNotificationCloudLog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :http_response, as: 'httpResponse', class: Google::Apis::HealthV4::HttpResponse, decorator: Google::Apis::HealthV4::HttpResponse::Representation
      
        end
      end
      
      class HeartRate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :beats_per_minute, :numeric_string => true, as: 'beatsPerMinute'
          property :metadata, as: 'metadata', class: Google::Apis::HealthV4::HeartRateMetadata, decorator: Google::Apis::HealthV4::HeartRateMetadata::Representation
      
          property :sample_time, as: 'sampleTime', class: Google::Apis::HealthV4::ObservationSampleTime, decorator: Google::Apis::HealthV4::ObservationSampleTime::Representation
      
        end
      end
      
      class HeartRateMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :motion_context, as: 'motionContext'
          property :sensor_location, as: 'sensorLocation'
        end
      end
      
      class HeartRateRollupValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :beats_per_minute_avg, as: 'beatsPerMinuteAvg'
          property :beats_per_minute_max, as: 'beatsPerMinuteMax'
          property :beats_per_minute_min, as: 'beatsPerMinuteMin'
        end
      end
      
      class HeartRateVariability
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :root_mean_square_of_successive_differences_milliseconds, as: 'rootMeanSquareOfSuccessiveDifferencesMilliseconds'
          property :sample_time, as: 'sampleTime', class: Google::Apis::HealthV4::ObservationSampleTime, decorator: Google::Apis::HealthV4::ObservationSampleTime::Representation
      
          property :standard_deviation_milliseconds, as: 'standardDeviationMilliseconds'
        end
      end
      
      class HeartRateVariabilityPersonalRangeRollupValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :average_heart_rate_variability_milliseconds_max, as: 'averageHeartRateVariabilityMillisecondsMax'
          property :average_heart_rate_variability_milliseconds_min, as: 'averageHeartRateVariabilityMillisecondsMin'
        end
      end
      
      class HeartRateZone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :heart_rate_zone_type, as: 'heartRateZoneType'
          property :max_beats_per_minute, :numeric_string => true, as: 'maxBeatsPerMinute'
          property :min_beats_per_minute, :numeric_string => true, as: 'minBeatsPerMinute'
        end
      end
      
      class Height
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :height_millimeters, :numeric_string => true, as: 'heightMillimeters'
          property :sample_time, as: 'sampleTime', class: Google::Apis::HealthV4::ObservationSampleTime, decorator: Google::Apis::HealthV4::ObservationSampleTime::Representation
      
        end
      end
      
      class HttpHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class HttpResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :body, :base64 => true, as: 'body'
          collection :headers, as: 'headers', class: Google::Apis::HealthV4::HttpHeader, decorator: Google::Apis::HealthV4::HttpHeader::Representation
      
          property :reason, as: 'reason'
          property :status, as: 'status'
        end
      end
      
      class HydrationLog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount_consumed, as: 'amountConsumed', class: Google::Apis::HealthV4::VolumeQuantity, decorator: Google::Apis::HealthV4::VolumeQuantity::Representation
      
          property :interval, as: 'interval', class: Google::Apis::HealthV4::SessionTimeInterval, decorator: Google::Apis::HealthV4::SessionTimeInterval::Representation
      
        end
      end
      
      class HydrationLogRollupValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount_consumed, as: 'amountConsumed', class: Google::Apis::HealthV4::VolumeQuantityRollup, decorator: Google::Apis::HealthV4::VolumeQuantityRollup::Representation
      
        end
      end
      
      class Identity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :health_user_id, as: 'healthUserId'
          property :legacy_user_id, as: 'legacyUserId'
          property :name, as: 'name'
        end
      end
      
      class Interval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class ListDataPointsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_points, as: 'dataPoints', class: Google::Apis::HealthV4::DataPoint, decorator: Google::Apis::HealthV4::DataPoint::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListSubscribersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :subscribers, as: 'subscribers', class: Google::Apis::HealthV4::Subscriber, decorator: Google::Apis::HealthV4::Subscriber::Representation
      
          property :total_size, as: 'totalSize'
        end
      end
      
      class MetricsSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_zone_minutes, :numeric_string => true, as: 'activeZoneMinutes'
          property :average_heart_rate_beats_per_minute, :numeric_string => true, as: 'averageHeartRateBeatsPerMinute'
          property :average_pace_seconds_per_meter, as: 'averagePaceSecondsPerMeter'
          property :average_speed_millimeters_per_second, as: 'averageSpeedMillimetersPerSecond'
          property :calories_kcal, as: 'caloriesKcal'
          property :distance_millimeters, as: 'distanceMillimeters'
          property :elevation_gain_millimeters, as: 'elevationGainMillimeters'
          property :heart_rate_zone_durations, as: 'heartRateZoneDurations', class: Google::Apis::HealthV4::TimeInHeartRateZones, decorator: Google::Apis::HealthV4::TimeInHeartRateZones::Representation
      
          property :mobility_metrics, as: 'mobilityMetrics', class: Google::Apis::HealthV4::MobilityMetrics, decorator: Google::Apis::HealthV4::MobilityMetrics::Representation
      
          property :run_vo2_max, as: 'runVo2Max'
          property :steps, :numeric_string => true, as: 'steps'
          property :total_swim_lengths, as: 'totalSwimLengths'
        end
      end
      
      class MobilityMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :avg_cadence_steps_per_minute, as: 'avgCadenceStepsPerMinute'
          property :avg_ground_contact_time_duration, as: 'avgGroundContactTimeDuration'
          property :avg_stride_length_millimeters, :numeric_string => true, as: 'avgStrideLengthMillimeters'
          property :avg_vertical_oscillation_millimeters, :numeric_string => true, as: 'avgVerticalOscillationMillimeters'
          property :avg_vertical_ratio, as: 'avgVerticalRatio'
        end
      end
      
      class ObservationSampleTime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :civil_time, as: 'civilTime', class: Google::Apis::HealthV4::CivilDateTime, decorator: Google::Apis::HealthV4::CivilDateTime::Representation
      
          property :physical_time, as: 'physicalTime'
          property :utc_offset, as: 'utcOffset'
        end
      end
      
      class ObservationTimeInterval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :civil_end_time, as: 'civilEndTime', class: Google::Apis::HealthV4::CivilDateTime, decorator: Google::Apis::HealthV4::CivilDateTime::Representation
      
          property :civil_start_time, as: 'civilStartTime', class: Google::Apis::HealthV4::CivilDateTime, decorator: Google::Apis::HealthV4::CivilDateTime::Representation
      
          property :end_time, as: 'endTime'
          property :end_utc_offset, as: 'endUtcOffset'
          property :start_time, as: 'startTime'
          property :start_utc_offset, as: 'startUtcOffset'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::HealthV4::Status, decorator: Google::Apis::HealthV4::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OutOfBedSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :end_utc_offset, as: 'endUtcOffset'
          property :start_time, as: 'startTime'
          property :start_utc_offset, as: 'startUtcOffset'
        end
      end
      
      class OxygenSaturation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :percentage, as: 'percentage'
          property :sample_time, as: 'sampleTime', class: Google::Apis::HealthV4::ObservationSampleTime, decorator: Google::Apis::HealthV4::ObservationSampleTime::Representation
      
        end
      end
      
      class Profile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :age, as: 'age'
          property :auto_running_stride_length_mm, as: 'autoRunningStrideLengthMm'
          property :auto_walking_stride_length_mm, as: 'autoWalkingStrideLengthMm'
          property :membership_start_date, as: 'membershipStartDate', class: Google::Apis::HealthV4::Date, decorator: Google::Apis::HealthV4::Date::Representation
      
          property :name, as: 'name'
          property :user_configured_running_stride_length_mm, as: 'userConfiguredRunningStrideLengthMm'
          property :user_configured_walking_stride_length_mm, as: 'userConfiguredWalkingStrideLengthMm'
        end
      end
      
      class ReconcileDataPointsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_points, as: 'dataPoints', class: Google::Apis::HealthV4::ReconciledDataPoint, decorator: Google::Apis::HealthV4::ReconciledDataPoint::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ReconciledDataPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_minutes, as: 'activeMinutes', class: Google::Apis::HealthV4::ActiveMinutes, decorator: Google::Apis::HealthV4::ActiveMinutes::Representation
      
          property :active_zone_minutes, as: 'activeZoneMinutes', class: Google::Apis::HealthV4::ActiveZoneMinutes, decorator: Google::Apis::HealthV4::ActiveZoneMinutes::Representation
      
          property :activity_level, as: 'activityLevel', class: Google::Apis::HealthV4::ActivityLevel, decorator: Google::Apis::HealthV4::ActivityLevel::Representation
      
          property :altitude, as: 'altitude', class: Google::Apis::HealthV4::Altitude, decorator: Google::Apis::HealthV4::Altitude::Representation
      
          property :basal_energy_burned, as: 'basalEnergyBurned', class: Google::Apis::HealthV4::BasalEnergyBurned, decorator: Google::Apis::HealthV4::BasalEnergyBurned::Representation
      
          property :body_fat, as: 'bodyFat', class: Google::Apis::HealthV4::BodyFat, decorator: Google::Apis::HealthV4::BodyFat::Representation
      
          property :daily_heart_rate_variability, as: 'dailyHeartRateVariability', class: Google::Apis::HealthV4::DailyHeartRateVariability, decorator: Google::Apis::HealthV4::DailyHeartRateVariability::Representation
      
          property :daily_heart_rate_zones, as: 'dailyHeartRateZones', class: Google::Apis::HealthV4::DailyHeartRateZones, decorator: Google::Apis::HealthV4::DailyHeartRateZones::Representation
      
          property :daily_oxygen_saturation, as: 'dailyOxygenSaturation', class: Google::Apis::HealthV4::DailyOxygenSaturation, decorator: Google::Apis::HealthV4::DailyOxygenSaturation::Representation
      
          property :daily_respiratory_rate, as: 'dailyRespiratoryRate', class: Google::Apis::HealthV4::DailyRespiratoryRate, decorator: Google::Apis::HealthV4::DailyRespiratoryRate::Representation
      
          property :daily_resting_heart_rate, as: 'dailyRestingHeartRate', class: Google::Apis::HealthV4::DailyRestingHeartRate, decorator: Google::Apis::HealthV4::DailyRestingHeartRate::Representation
      
          property :daily_sleep_temperature_derivations, as: 'dailySleepTemperatureDerivations', class: Google::Apis::HealthV4::DailySleepTemperatureDerivations, decorator: Google::Apis::HealthV4::DailySleepTemperatureDerivations::Representation
      
          property :daily_vo2_max, as: 'dailyVo2Max', class: Google::Apis::HealthV4::DailyVo2Max, decorator: Google::Apis::HealthV4::DailyVo2Max::Representation
      
          property :data_point_name, as: 'dataPointName'
          property :distance, as: 'distance', class: Google::Apis::HealthV4::Distance, decorator: Google::Apis::HealthV4::Distance::Representation
      
          property :exercise, as: 'exercise', class: Google::Apis::HealthV4::Exercise, decorator: Google::Apis::HealthV4::Exercise::Representation
      
          property :floors, as: 'floors', class: Google::Apis::HealthV4::Floors, decorator: Google::Apis::HealthV4::Floors::Representation
      
          property :heart_rate, as: 'heartRate', class: Google::Apis::HealthV4::HeartRate, decorator: Google::Apis::HealthV4::HeartRate::Representation
      
          property :heart_rate_variability, as: 'heartRateVariability', class: Google::Apis::HealthV4::HeartRateVariability, decorator: Google::Apis::HealthV4::HeartRateVariability::Representation
      
          property :height, as: 'height', class: Google::Apis::HealthV4::Height, decorator: Google::Apis::HealthV4::Height::Representation
      
          property :hydration_log, as: 'hydrationLog', class: Google::Apis::HealthV4::HydrationLog, decorator: Google::Apis::HealthV4::HydrationLog::Representation
      
          property :oxygen_saturation, as: 'oxygenSaturation', class: Google::Apis::HealthV4::OxygenSaturation, decorator: Google::Apis::HealthV4::OxygenSaturation::Representation
      
          property :respiratory_rate_sleep_summary, as: 'respiratoryRateSleepSummary', class: Google::Apis::HealthV4::RespiratoryRateSleepSummary, decorator: Google::Apis::HealthV4::RespiratoryRateSleepSummary::Representation
      
          property :run_vo2_max, as: 'runVo2Max', class: Google::Apis::HealthV4::RunVo2Max, decorator: Google::Apis::HealthV4::RunVo2Max::Representation
      
          property :sedentary_period, as: 'sedentaryPeriod', class: Google::Apis::HealthV4::SedentaryPeriod, decorator: Google::Apis::HealthV4::SedentaryPeriod::Representation
      
          property :sleep, as: 'sleep', class: Google::Apis::HealthV4::Sleep, decorator: Google::Apis::HealthV4::Sleep::Representation
      
          property :steps, as: 'steps', class: Google::Apis::HealthV4::Steps, decorator: Google::Apis::HealthV4::Steps::Representation
      
          property :swim_lengths_data, as: 'swimLengthsData', class: Google::Apis::HealthV4::SwimLengthsData, decorator: Google::Apis::HealthV4::SwimLengthsData::Representation
      
          property :time_in_heart_rate_zone, as: 'timeInHeartRateZone', class: Google::Apis::HealthV4::TimeInHeartRateZone, decorator: Google::Apis::HealthV4::TimeInHeartRateZone::Representation
      
          property :vo2_max, as: 'vo2Max', class: Google::Apis::HealthV4::Vo2Max, decorator: Google::Apis::HealthV4::Vo2Max::Representation
      
          property :weight, as: 'weight', class: Google::Apis::HealthV4::Weight, decorator: Google::Apis::HealthV4::Weight::Representation
      
        end
      end
      
      class RespiratoryRateSleepSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deep_sleep_stats, as: 'deepSleepStats', class: Google::Apis::HealthV4::RespiratoryRateSleepSummaryStatistics, decorator: Google::Apis::HealthV4::RespiratoryRateSleepSummaryStatistics::Representation
      
          property :full_sleep_stats, as: 'fullSleepStats', class: Google::Apis::HealthV4::RespiratoryRateSleepSummaryStatistics, decorator: Google::Apis::HealthV4::RespiratoryRateSleepSummaryStatistics::Representation
      
          property :light_sleep_stats, as: 'lightSleepStats', class: Google::Apis::HealthV4::RespiratoryRateSleepSummaryStatistics, decorator: Google::Apis::HealthV4::RespiratoryRateSleepSummaryStatistics::Representation
      
          property :rem_sleep_stats, as: 'remSleepStats', class: Google::Apis::HealthV4::RespiratoryRateSleepSummaryStatistics, decorator: Google::Apis::HealthV4::RespiratoryRateSleepSummaryStatistics::Representation
      
          property :sample_time, as: 'sampleTime', class: Google::Apis::HealthV4::ObservationSampleTime, decorator: Google::Apis::HealthV4::ObservationSampleTime::Representation
      
        end
      end
      
      class RespiratoryRateSleepSummaryStatistics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :breaths_per_minute, as: 'breathsPerMinute'
          property :signal_to_noise, as: 'signalToNoise'
          property :standard_deviation, as: 'standardDeviation'
        end
      end
      
      class RestingHeartRatePersonalRangeRollupValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :beats_per_minute_max, as: 'beatsPerMinuteMax'
          property :beats_per_minute_min, as: 'beatsPerMinuteMin'
        end
      end
      
      class RollUpDataPointsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_source_family, as: 'dataSourceFamily'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :range, as: 'range', class: Google::Apis::HealthV4::Interval, decorator: Google::Apis::HealthV4::Interval::Representation
      
          property :window_size, as: 'windowSize'
        end
      end
      
      class RollUpDataPointsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :rollup_data_points, as: 'rollupDataPoints', class: Google::Apis::HealthV4::RollupDataPoint, decorator: Google::Apis::HealthV4::RollupDataPoint::Representation
      
        end
      end
      
      class RollupDataPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_minutes, as: 'activeMinutes', class: Google::Apis::HealthV4::ActiveMinutesRollupValue, decorator: Google::Apis::HealthV4::ActiveMinutesRollupValue::Representation
      
          property :active_zone_minutes, as: 'activeZoneMinutes', class: Google::Apis::HealthV4::ActiveZoneMinutesRollupValue, decorator: Google::Apis::HealthV4::ActiveZoneMinutesRollupValue::Representation
      
          property :activity_level, as: 'activityLevel', class: Google::Apis::HealthV4::ActivityLevelRollupValue, decorator: Google::Apis::HealthV4::ActivityLevelRollupValue::Representation
      
          property :altitude, as: 'altitude', class: Google::Apis::HealthV4::AltitudeRollupValue, decorator: Google::Apis::HealthV4::AltitudeRollupValue::Representation
      
          property :body_fat, as: 'bodyFat', class: Google::Apis::HealthV4::BodyFatRollupValue, decorator: Google::Apis::HealthV4::BodyFatRollupValue::Representation
      
          property :calories_in_heart_rate_zone, as: 'caloriesInHeartRateZone', class: Google::Apis::HealthV4::CaloriesInHeartRateZoneRollupValue, decorator: Google::Apis::HealthV4::CaloriesInHeartRateZoneRollupValue::Representation
      
          property :distance, as: 'distance', class: Google::Apis::HealthV4::DistanceRollupValue, decorator: Google::Apis::HealthV4::DistanceRollupValue::Representation
      
          property :end_time, as: 'endTime'
          property :floors, as: 'floors', class: Google::Apis::HealthV4::FloorsRollupValue, decorator: Google::Apis::HealthV4::FloorsRollupValue::Representation
      
          property :heart_rate, as: 'heartRate', class: Google::Apis::HealthV4::HeartRateRollupValue, decorator: Google::Apis::HealthV4::HeartRateRollupValue::Representation
      
          property :hydration_log, as: 'hydrationLog', class: Google::Apis::HealthV4::HydrationLogRollupValue, decorator: Google::Apis::HealthV4::HydrationLogRollupValue::Representation
      
          property :run_vo2_max, as: 'runVo2Max', class: Google::Apis::HealthV4::RunVo2MaxRollupValue, decorator: Google::Apis::HealthV4::RunVo2MaxRollupValue::Representation
      
          property :sedentary_period, as: 'sedentaryPeriod', class: Google::Apis::HealthV4::SedentaryPeriodRollupValue, decorator: Google::Apis::HealthV4::SedentaryPeriodRollupValue::Representation
      
          property :start_time, as: 'startTime'
          property :steps, as: 'steps', class: Google::Apis::HealthV4::StepsRollupValue, decorator: Google::Apis::HealthV4::StepsRollupValue::Representation
      
          property :swim_lengths_data, as: 'swimLengthsData', class: Google::Apis::HealthV4::SwimLengthsDataRollupValue, decorator: Google::Apis::HealthV4::SwimLengthsDataRollupValue::Representation
      
          property :time_in_heart_rate_zone, as: 'timeInHeartRateZone', class: Google::Apis::HealthV4::TimeInHeartRateZoneRollupValue, decorator: Google::Apis::HealthV4::TimeInHeartRateZoneRollupValue::Representation
      
          property :total_calories, as: 'totalCalories', class: Google::Apis::HealthV4::TotalCaloriesRollupValue, decorator: Google::Apis::HealthV4::TotalCaloriesRollupValue::Representation
      
          property :weight, as: 'weight', class: Google::Apis::HealthV4::WeightRollupValue, decorator: Google::Apis::HealthV4::WeightRollupValue::Representation
      
        end
      end
      
      class RunVo2Max
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :run_vo2_max, as: 'runVo2Max'
          property :sample_time, as: 'sampleTime', class: Google::Apis::HealthV4::ObservationSampleTime, decorator: Google::Apis::HealthV4::ObservationSampleTime::Representation
      
        end
      end
      
      class RunVo2MaxRollupValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rate_avg, as: 'rateAvg'
          property :rate_max, as: 'rateMax'
          property :rate_min, as: 'rateMin'
        end
      end
      
      class SedentaryPeriod
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :interval, as: 'interval', class: Google::Apis::HealthV4::ObservationTimeInterval, decorator: Google::Apis::HealthV4::ObservationTimeInterval::Representation
      
        end
      end
      
      class SedentaryPeriodRollupValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration_sum, as: 'durationSum'
        end
      end
      
      class SessionTimeInterval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :civil_end_time, as: 'civilEndTime', class: Google::Apis::HealthV4::CivilDateTime, decorator: Google::Apis::HealthV4::CivilDateTime::Representation
      
          property :civil_start_time, as: 'civilStartTime', class: Google::Apis::HealthV4::CivilDateTime, decorator: Google::Apis::HealthV4::CivilDateTime::Representation
      
          property :end_time, as: 'endTime'
          property :end_utc_offset, as: 'endUtcOffset'
          property :start_time, as: 'startTime'
          property :start_utc_offset, as: 'startUtcOffset'
        end
      end
      
      class Settings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_stride_enabled, as: 'autoStrideEnabled'
          property :distance_unit, as: 'distanceUnit'
          property :glucose_unit, as: 'glucoseUnit'
          property :height_unit, as: 'heightUnit'
          property :language_locale, as: 'languageLocale'
          property :name, as: 'name'
          property :stride_length_running_type, as: 'strideLengthRunningType'
          property :stride_length_walking_type, as: 'strideLengthWalkingType'
          property :swim_unit, as: 'swimUnit'
          property :temperature_unit, as: 'temperatureUnit'
          property :time_zone, as: 'timeZone'
          property :utc_offset, as: 'utcOffset'
          property :water_unit, as: 'waterUnit'
          property :weight_unit, as: 'weightUnit'
        end
      end
      
      class Sleep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :interval, as: 'interval', class: Google::Apis::HealthV4::SessionTimeInterval, decorator: Google::Apis::HealthV4::SessionTimeInterval::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::HealthV4::SleepMetadata, decorator: Google::Apis::HealthV4::SleepMetadata::Representation
      
          collection :out_of_bed_segments, as: 'outOfBedSegments', class: Google::Apis::HealthV4::OutOfBedSegment, decorator: Google::Apis::HealthV4::OutOfBedSegment::Representation
      
          collection :stages, as: 'stages', class: Google::Apis::HealthV4::SleepStage, decorator: Google::Apis::HealthV4::SleepStage::Representation
      
          property :summary, as: 'summary', class: Google::Apis::HealthV4::SleepSummary, decorator: Google::Apis::HealthV4::SleepSummary::Representation
      
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class SleepMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :external_id, as: 'externalId'
          property :manually_edited, as: 'manuallyEdited'
          property :nap, as: 'nap'
          property :processed, as: 'processed'
          property :stages_status, as: 'stagesStatus'
        end
      end
      
      class SleepStage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :end_utc_offset, as: 'endUtcOffset'
          property :start_time, as: 'startTime'
          property :start_utc_offset, as: 'startUtcOffset'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class SleepSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :minutes_after_wake_up, :numeric_string => true, as: 'minutesAfterWakeUp'
          property :minutes_asleep, :numeric_string => true, as: 'minutesAsleep'
          property :minutes_awake, :numeric_string => true, as: 'minutesAwake'
          property :minutes_in_sleep_period, :numeric_string => true, as: 'minutesInSleepPeriod'
          property :minutes_to_fall_asleep, :numeric_string => true, as: 'minutesToFallAsleep'
          collection :stages_summary, as: 'stagesSummary', class: Google::Apis::HealthV4::StageSummary, decorator: Google::Apis::HealthV4::StageSummary::Representation
      
        end
      end
      
      class SplitSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_duration, as: 'activeDuration'
          property :end_time, as: 'endTime'
          property :end_utc_offset, as: 'endUtcOffset'
          property :metrics_summary, as: 'metricsSummary', class: Google::Apis::HealthV4::MetricsSummary, decorator: Google::Apis::HealthV4::MetricsSummary::Representation
      
          property :split_type, as: 'splitType'
          property :start_time, as: 'startTime'
          property :start_utc_offset, as: 'startUtcOffset'
        end
      end
      
      class StageSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :minutes, :numeric_string => true, as: 'minutes'
          property :type, as: 'type'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class Steps
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :interval, as: 'interval', class: Google::Apis::HealthV4::ObservationTimeInterval, decorator: Google::Apis::HealthV4::ObservationTimeInterval::Representation
      
        end
      end
      
      class StepsRollupValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count_sum, :numeric_string => true, as: 'countSum'
        end
      end
      
      class Subscriber
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :endpoint_authorization, as: 'endpointAuthorization', class: Google::Apis::HealthV4::EndpointAuthorization, decorator: Google::Apis::HealthV4::EndpointAuthorization::Representation
      
          property :endpoint_uri, as: 'endpointUri'
          property :name, as: 'name'
          property :state, as: 'state'
          collection :subscriber_configs, as: 'subscriberConfigs', class: Google::Apis::HealthV4::SubscriberConfig, decorator: Google::Apis::HealthV4::SubscriberConfig::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class SubscriberConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_types, as: 'dataTypes'
          property :subscription_create_policy, as: 'subscriptionCreatePolicy'
        end
      end
      
      class SwimLengthsData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :interval, as: 'interval', class: Google::Apis::HealthV4::ObservationTimeInterval, decorator: Google::Apis::HealthV4::ObservationTimeInterval::Representation
      
          property :stroke_count, :numeric_string => true, as: 'strokeCount'
          property :swim_stroke_type, as: 'swimStrokeType'
        end
      end
      
      class SwimLengthsDataRollupValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :stroke_count_sum, :numeric_string => true, as: 'strokeCountSum'
        end
      end
      
      class TimeInHeartRateZone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :heart_rate_zone_type, as: 'heartRateZoneType'
          property :interval, as: 'interval', class: Google::Apis::HealthV4::ObservationTimeInterval, decorator: Google::Apis::HealthV4::ObservationTimeInterval::Representation
      
        end
      end
      
      class TimeInHeartRateZoneRollupValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :time_in_heart_rate_zones, as: 'timeInHeartRateZones', class: Google::Apis::HealthV4::TimeInHeartRateZoneValue, decorator: Google::Apis::HealthV4::TimeInHeartRateZoneValue::Representation
      
        end
      end
      
      class TimeInHeartRateZoneValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration, as: 'duration'
          property :heart_rate_zone, as: 'heartRateZone'
        end
      end
      
      class TimeInHeartRateZones
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :light_time, as: 'lightTime'
          property :moderate_time, as: 'moderateTime'
          property :peak_time, as: 'peakTime'
          property :vigorous_time, as: 'vigorousTime'
        end
      end
      
      class TimeOfDay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hours, as: 'hours'
          property :minutes, as: 'minutes'
          property :nanos, as: 'nanos'
          property :seconds, as: 'seconds'
        end
      end
      
      class TimeZone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :version, as: 'version'
        end
      end
      
      class TotalCaloriesRollupValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kcal_sum, as: 'kcalSum'
        end
      end
      
      class Vo2Max
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :measurement_method, as: 'measurementMethod'
          property :sample_time, as: 'sampleTime', class: Google::Apis::HealthV4::ObservationSampleTime, decorator: Google::Apis::HealthV4::ObservationSampleTime::Representation
      
          property :vo2_max, as: 'vo2Max'
        end
      end
      
      class VolumeQuantity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :milliliters, as: 'milliliters'
          property :user_provided_unit, as: 'userProvidedUnit'
        end
      end
      
      class VolumeQuantityRollup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :milliliters_sum, as: 'millilitersSum'
          property :user_provided_unit_last, as: 'userProvidedUnitLast'
        end
      end
      
      class Weight
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :notes, as: 'notes'
          property :sample_time, as: 'sampleTime', class: Google::Apis::HealthV4::ObservationSampleTime, decorator: Google::Apis::HealthV4::ObservationSampleTime::Representation
      
          property :weight_grams, as: 'weightGrams'
        end
      end
      
      class WeightRollupValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :weight_grams_avg, as: 'weightGramsAvg'
        end
      end
    end
  end
end
