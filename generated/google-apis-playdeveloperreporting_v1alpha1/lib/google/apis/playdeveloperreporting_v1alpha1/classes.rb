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
    module PlaydeveloperreportingV1alpha1
      
      # Represents an anomaly detected in a dataset. Our anomaly detection systems
      # flag datapoints in a time series that fall outside of and expected range
      # derived from historical data. Although those expected ranges have an upper and
      # a lower bound, we only flag anomalies when the data has become unexpectedly
      # _worse_, which usually corresponds to the case where the metric crosses the
      # upper bound. Multiple contiguous datapoints in a timeline outside of the
      # expected range will be grouped into a single anomaly. Therefore, an anomaly
      # represents effectively a segment of a metric's timeline. The information
      # stored in the `timeline_spec`, `dimensions` and `metric` can be used to fetch
      # a full timeline with extended ragne for context. **Required permissions**: to
      # access this resource, the calling user needs the _View app information (read-
      # only)_ permission for the app.
      class GooglePlayDeveloperReportingV1alpha1Anomaly
        include Google::Apis::Core::Hashable
      
        # Combination of dimensions in which the anomaly was detected.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1DimensionValue>]
        attr_accessor :dimensions
      
        # Represents the value of a metric.
        # Corresponds to the JSON property `metric`
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1MetricValue]
        attr_accessor :metric
      
        # Metric set resource where the anomaly was detected.
        # Corresponds to the JSON property `metricSet`
        # @return [String]
        attr_accessor :metric_set
      
        # Name of the anomaly. Format: apps/`app`/anomalies/`anomaly`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Specification of the time-related aggregation parameters of a timeline.
        # Timelines have an aggregation period (`DAILY`, `HOURLY`, etc) which defines
        # how events are aggregated in metrics. The points in a timeline are defined by
        # the starting DateTime of the aggregation period. The duration is implicit in
        # the AggregationPeriod. Hourly aggregation periods, when supported by a metric
        # set, are always specified in UTC to avoid ambiguities around daylight saving
        # time transitions, where an hour is skipped when adopting DST, and repeated
        # when abandoning DST. For example, the timestamp '2021-11-07 01:00:00 America/
        # Los_Angeles' is ambiguous since it can correspond to '2021-11-07 08:00:00 UTC'
        # or '2021-11-07 09:00:00 UTC'. Daily aggregation periods require specifying a
        # timezone which will determine the precise instants of the start and the end of
        # the day. Not all metric sets support all timezones, so make sure to check
        # which timezones are supported by the metric set you want to query.
        # Corresponds to the JSON property `timelineSpec`
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1TimelineSpec]
        attr_accessor :timeline_spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @metric = args[:metric] if args.key?(:metric)
          @metric_set = args[:metric_set] if args.key?(:metric_set)
          @name = args[:name] if args.key?(:name)
          @timeline_spec = args[:timeline_spec] if args.key?(:timeline_spec)
        end
      end
      
      # Singleton resource representing the set of ANR (Application not responding)
      # metrics. This metric set contains ANRs data combined with usage data to
      # produce a normalized metric independent of user counts. **Supported
      # aggregation periods:** * DAILY: metrics are aggregated in calendar date
      # intervals. Due to historical constraints, the only supported timezone is `
      # America/Los_Angeles`. * HOURLY: metrics are aggregated in hourly intervals.
      # The default and only supported timezone is `UTC`. **Supported metrics:** * `
      # anrRate` (`google.type.Decimal`): Percentage of distinct users in the
      # aggregation period that experienced at least one ANR. * `anrRate7dUserWeighted`
      # (`google.type.Decimal`): Rolling average value of `anrRate` in the last 7
      # days. The daily values are weighted by the count of distinct users for the day.
      # Not supported in HOURLY granularity. * `anrRate28dUserWeighted` (`google.type.
      # Decimal`): Rolling average value of `anrRate` in the last 28 days. The daily
      # values are weighted by the count of distinct users for the day. Not supported
      # in HOURLY granularity. * `userPerceivedAnrRate` (`google.type.Decimal`):
      # Percentage of distinct users in the aggregation period that experienced at
      # least one user-perceived ANR. User-perceived ANRs are currently those of '
      # Input dispatching' type. * `userPerceivedAnrRate7dUserWeighted` (`google.type.
      # Decimal`): Rolling average value of `userPerceivedAnrRate` in the last 7 days.
      # The daily values are weighted by the count of distinct users for the day. Not
      # supported in HOURLY granularity. * `userPerceivedAnrRate28dUserWeighted` (`
      # google.type.Decimal`): Rolling average value of `userPerceivedAnrRate` in the
      # last 28 days. The daily values are weighted by the count of distinct users for
      # the day. * `distinctUsers` (`google.type.Decimal`): Count of distinct users in
      # the aggregation period that were used as normalization value for the `anrRate`
      # and `userPerceivedAnrRate` metrics. A user is counted in this metric if they
      # used the app in the foreground during the aggregation period. Care must be
      # taken not to aggregate this count further, as it may result in users being
      # counted multiple times. The value is rounded to the nearest multiple of 10,
      # 100, 1,000 or 1,000,000, depending on the magnitude of the value. **Supported
      # dimensions:** * `apiLevel` (string): the API level of Android that was running
      # on the user's device, e.g., 26. * `versionCode` (int64): version of the app
      # that was running on the user's device. * `deviceModel` (string): unique
      # identifier of the user's device model. The form of the identifier is '
      # deviceBrand/device', where deviceBrand corresponds to Build.BRAND and device
      # corresponds to Build.DEVICE, e.g., google/coral. * `deviceBrand` (string):
      # unique identifier of the user's device brand, e.g., google. * `deviceType` (
      # string): the type (also known as form factor) of the user's device, e.g.,
      # PHONE. * `countryCode` (string): the country or region of the user's device
      # based on their IP address, represented as a 2-letter ISO-3166 code (e.g. US
      # for the United States). * `deviceRamBucket` (int64): RAM of the device, in MB,
      # in buckets (3GB, 4GB, etc.). * `deviceSocMake` (string): Make of the device's
      # primary system-on-chip, e.g., Samsung. [Reference](https://developer.android.
      # com/reference/android/os/Build#SOC_MANUFACTURER) * `deviceSocModel` (string):
      # Model of the device's primary system-on-chip, e.g., "Exynos 2100". [Reference](
      # https://developer.android.com/reference/android/os/Build#SOC_MODEL) * `
      # deviceCpuMake` (string): Make of the device's CPU, e.g., Qualcomm. * `
      # deviceCpuModel` (string): Model of the device's CPU, e.g., "Kryo 240". * `
      # deviceGpuMake` (string): Make of the device's GPU, e.g., ARM. * `
      # deviceGpuModel` (string): Model of the device's GPU, e.g., Mali. * `
      # deviceGpuVersion` (string): Version of the device's GPU, e.g., T750. * `
      # deviceVulkanVersion` (string): Vulkan version of the device, e.g., "4198400". *
      # `deviceGlEsVersion` (string): OpenGL ES version of the device, e.g., "196610".
      # * `deviceScreenSize` (string): Screen size of the device, e.g., NORMAL, LARGE.
      # * `deviceScreenDpi` (string): Screen density of the device, e.g., mdpi, hdpi.
      # **Required permissions**: to access this resource, the calling user needs the
      # _View app information (read-only)_ permission for the app. **Related metric
      # sets:** * vitals.errors contains unnormalized version (absolute counts) of
      # crashes. * vitals.errors contains normalized metrics about crashes, another
      # stability metric.
      class GooglePlayDeveloperReportingV1alpha1AnrRateMetricSet
        include Google::Apis::Core::Hashable
      
        # Represents the latest available time that can be requested in a TimelineSpec.
        # Different aggregation periods have different freshness. For example, `DAILY`
        # aggregation may lag behind `HOURLY` in cases where such aggregation is
        # computed only once at the end of the day.
        # Corresponds to the JSON property `freshnessInfo`
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1FreshnessInfo]
        attr_accessor :freshness_info
      
        # The resource name. Format: apps/`app`/anrRateMetricSet
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @freshness_info = args[:freshness_info] if args.key?(:freshness_info)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A representation of an app in the Play Store.
      class GooglePlayDeveloperReportingV1alpha1App
        include Google::Apis::Core::Hashable
      
        # Title of the app. This is the latest title as set in the Play Console and may
        # not yet have been reviewed, so might not match the Play Store. Example: `
        # Google Maps`.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The resource name. Format: apps/`app`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Package name of the app. Example: `com.example.app123`.
        # Corresponds to the JSON property `packageName`
        # @return [String]
        attr_accessor :package_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @package_name = args[:package_name] if args.key?(:package_name)
        end
      end
      
      # Representations of an app version.
      class GooglePlayDeveloperReportingV1alpha1AppVersion
        include Google::Apis::Core::Hashable
      
        # Numeric version code of the app version (set by the app's developer).
        # Corresponds to the JSON property `versionCode`
        # @return [Fixnum]
        attr_accessor :version_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @version_code = args[:version_code] if args.key?(:version_code)
        end
      end
      
      # Singleton resource representing the set of crashrate metrics. This metric set
      # contains crashes data combined with usage data to produce a normalized metric
      # independent of user counts. **Supported aggregation periods:** * DAILY:
      # metrics are aggregated in calendar date intervals. Due to historical
      # constraints, the only supported timezone is `America/Los_Angeles`. * HOURLY:
      # metrics are aggregated in hourly intervals. The default and only supported
      # timezone is `UTC`. **Supported metrics:** * `crashRate` (`google.type.Decimal`)
      # : Percentage of distinct users in the aggregation period that experienced at
      # least one crash. * `crashRate7dUserWeighted` (`google.type.Decimal`): Rolling
      # average value of `crashRate` in the last 7 days. The daily values are weighted
      # by the count of distinct users for the day. Not supported in HOURLY
      # granularity. * `crashRate28dUserWeighted` (`google.type.Decimal`): Rolling
      # average value of `crashRate` in the last 28 days. The daily values are
      # weighted by the count of distinct users for the day. Not supported in HOURLY
      # granularity. * `userPerceivedCrashRate` (`google.type.Decimal`): Percentage of
      # distinct users in the aggregation period that experienced at least one crash
      # while they were actively using your app (a user-perceived crash). An app is
      # considered to be in active use if it is displaying any activity or executing
      # any foreground service. * `userPerceivedCrashRate7dUserWeighted` (`google.type.
      # Decimal`): Rolling average value of `userPerceivedCrashRate` in the last 7
      # days. The daily values are weighted by the count of distinct users for the day.
      # Not supported in HOURLY granularity. * `userPerceivedCrashRate28dUserWeighted`
      # (`google.type.Decimal`): Rolling average value of `userPerceivedCrashRate` in
      # the last 28 days. The daily values are weighted by the count of distinct users
      # for the day. Not supported in HOURLY granularity. * `distinctUsers` (`google.
      # type.Decimal`): Count of distinct users in the aggregation period that were
      # used as normalization value for the `crashRate` and `userPerceivedCrashRate`
      # metrics. A user is counted in this metric if they used the app actively during
      # the aggregation period. An app is considered to be in active use if it is
      # displaying any activity or executing any foreground service. Care must be
      # taken not to aggregate this count further, as it may result in users being
      # counted multiple times. The value is rounded to the nearest multiple of 10,
      # 100, 1,000 or 1,000,000, depending on the magnitude of the value. **Supported
      # dimensions:** * `apiLevel` (string): the API level of Android that was running
      # on the user's device, e.g., 26. * `versionCode` (int64): version of the app
      # that was running on the user's device. * `deviceModel` (string): unique
      # identifier of the user's device model. The form of the identifier is '
      # deviceBrand/device', where deviceBrand corresponds to Build.BRAND and device
      # corresponds to Build.DEVICE, e.g., google/coral. * `deviceBrand` (string):
      # unique identifier of the user's device brand, e.g., google. * `deviceType` (
      # string): the type (also known as form factor) of the user's device, e.g.,
      # PHONE. * `countryCode` (string): the country or region of the user's device
      # based on their IP address, represented as a 2-letter ISO-3166 code (e.g. US
      # for the United States). * `deviceRamBucket` (int64): RAM of the device, in MB,
      # in buckets (3GB, 4GB, etc.). * `deviceSocMake` (string): Make of the device's
      # primary system-on-chip, e.g., Samsung. [Reference](https://developer.android.
      # com/reference/android/os/Build#SOC_MANUFACTURER) * `deviceSocModel` (string):
      # Model of the device's primary system-on-chip, e.g., "Exynos 2100". [Reference](
      # https://developer.android.com/reference/android/os/Build#SOC_MODEL) * `
      # deviceCpuMake` (string): Make of the device's CPU, e.g., Qualcomm. * `
      # deviceCpuModel` (string): Model of the device's CPU, e.g., "Kryo 240". * `
      # deviceGpuMake` (string): Make of the device's GPU, e.g., ARM. * `
      # deviceGpuModel` (string): Model of the device's GPU, e.g., Mali. * `
      # deviceGpuVersion` (string): Version of the device's GPU, e.g., T750. * `
      # deviceVulkanVersion` (string): Vulkan version of the device, e.g., "4198400". *
      # `deviceGlEsVersion` (string): OpenGL ES version of the device, e.g., "196610".
      # * `deviceScreenSize` (string): Screen size of the device, e.g., NORMAL, LARGE.
      # * `deviceScreenDpi` (string): Screen density of the device, e.g., mdpi, hdpi.
      # **Required permissions**: to access this resource, the calling user needs the
      # _View app information (read-only)_ permission for the app. **Related metric
      # sets:** * vitals.errors contains unnormalized version (absolute counts) of
      # crashes. * vitals.errors contains normalized metrics about ANRs, another
      # stability metric.
      class GooglePlayDeveloperReportingV1alpha1CrashRateMetricSet
        include Google::Apis::Core::Hashable
      
        # Represents the latest available time that can be requested in a TimelineSpec.
        # Different aggregation periods have different freshness. For example, `DAILY`
        # aggregation may lag behind `HOURLY` in cases where such aggregation is
        # computed only once at the end of the day.
        # Corresponds to the JSON property `freshnessInfo`
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1FreshnessInfo]
        attr_accessor :freshness_info
      
        # The resource name. Format: apps/`app`/crashRateMetricSet
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @freshness_info = args[:freshness_info] if args.key?(:freshness_info)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Represents the confidence interval of a metric.
      class GooglePlayDeveloperReportingV1alpha1DecimalConfidenceInterval
        include Google::Apis::Core::Hashable
      
        # A representation of a decimal value, such as 2.5. Clients may convert values
        # into language-native decimal formats, such as Java's BigDecimal or Python's
        # decimal.Decimal. [BigDecimal]: https://docs.oracle.com/en/java/javase/11/docs/
        # api/java.base/java/math/BigDecimal.html [decimal.Decimal]: https://docs.python.
        # org/3/library/decimal.html
        # Corresponds to the JSON property `lowerBound`
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GoogleTypeDecimal]
        attr_accessor :lower_bound
      
        # A representation of a decimal value, such as 2.5. Clients may convert values
        # into language-native decimal formats, such as Java's BigDecimal or Python's
        # decimal.Decimal. [BigDecimal]: https://docs.oracle.com/en/java/javase/11/docs/
        # api/java.base/java/math/BigDecimal.html [decimal.Decimal]: https://docs.python.
        # org/3/library/decimal.html
        # Corresponds to the JSON property `upperBound`
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GoogleTypeDecimal]
        attr_accessor :upper_bound
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lower_bound = args[:lower_bound] if args.key?(:lower_bound)
          @upper_bound = args[:upper_bound] if args.key?(:upper_bound)
        end
      end
      
      # Identifier of a device.
      class GooglePlayDeveloperReportingV1alpha1DeviceId
        include Google::Apis::Core::Hashable
      
        # Value of Build.BRAND.
        # Corresponds to the JSON property `buildBrand`
        # @return [String]
        attr_accessor :build_brand
      
        # Value of Build.DEVICE.
        # Corresponds to the JSON property `buildDevice`
        # @return [String]
        attr_accessor :build_device
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @build_brand = args[:build_brand] if args.key?(:build_brand)
          @build_device = args[:build_device] if args.key?(:build_device)
        end
      end
      
      # Summary of a device
      class GooglePlayDeveloperReportingV1alpha1DeviceModelSummary
        include Google::Apis::Core::Hashable
      
        # Identifier of a device.
        # Corresponds to the JSON property `deviceId`
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1DeviceId]
        attr_accessor :device_id
      
        # Link to the device in Play Device Catalog.
        # Corresponds to the JSON property `deviceUri`
        # @return [String]
        attr_accessor :device_uri
      
        # Display name of the device.
        # Corresponds to the JSON property `marketingName`
        # @return [String]
        attr_accessor :marketing_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_id = args[:device_id] if args.key?(:device_id)
          @device_uri = args[:device_uri] if args.key?(:device_uri)
          @marketing_name = args[:marketing_name] if args.key?(:marketing_name)
        end
      end
      
      # Represents the value of a single dimension.
      class GooglePlayDeveloperReportingV1alpha1DimensionValue
        include Google::Apis::Core::Hashable
      
        # Name of the dimension.
        # Corresponds to the JSON property `dimension`
        # @return [String]
        attr_accessor :dimension
      
        # Actual value, represented as an int64.
        # Corresponds to the JSON property `int64Value`
        # @return [Fixnum]
        attr_accessor :int64_value
      
        # Actual value, represented as a string.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        # Optional. Human-friendly label for the value, always in English. For example, '
        # Spain' for the 'ES' country code. Whereas the dimension value is stable, this
        # value label is subject to change. Do not assume that the (value, value_label)
        # relationship is stable. For example, the ISO country code 'MK' changed its
        # name recently to 'North Macedonia'.
        # Corresponds to the JSON property `valueLabel`
        # @return [String]
        attr_accessor :value_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension = args[:dimension] if args.key?(:dimension)
          @int64_value = args[:int64_value] if args.key?(:int64_value)
          @string_value = args[:string_value] if args.key?(:string_value)
          @value_label = args[:value_label] if args.key?(:value_label)
        end
      end
      
      # Singleton resource representing the set of error report metrics. This metric
      # set contains un-normalized error report counts. **Supported aggregation
      # periods:** * DAILY: metrics are aggregated in calendar date intervals. The
      # default and only supported timezone is `America/Los_Angeles`. **Supported
      # metrics:** * `errorReportCount` (`google.type.Decimal`): Absolute count of
      # individual error reports that have been received for an app. * `distinctUsers`
      # (`google.type.Decimal`): Count of distinct users for which reports have been
      # received. Care must be taken not to aggregate this count further, as it may
      # result in users being counted multiple times. This value is not rounded,
      # however it may be an approximation. **Required dimension:** This dimension
      # must be always specified in all requests in the `dimensions` field in query
      # requests. * `reportType` (string): the type of error. The value should
      # correspond to one of the possible values in ErrorType. **Supported dimensions:*
      # * * `apiLevel` (string): the API level of Android that was running on the user'
      # s device, e.g., 26. * `versionCode` (int64): version of the app that was
      # running on the user's device. * `deviceModel` (string): unique identifier of
      # the user's device model. The form of the identifier is 'deviceBrand/device',
      # where deviceBrand corresponds to Build.BRAND and device corresponds to Build.
      # DEVICE, e.g., google/coral. * `deviceType` (string): identifier of the device'
      # s form factor, e.g., PHONE. * `issueId` (string): the id an error was assigned
      # to. The value should correspond to the ``issue`` component of the issue name. *
      # `deviceRamBucket` (int64): RAM of the device, in MB, in buckets (3GB, 4GB,
      # etc.). * `deviceSocMake` (string): Make of the device's primary system-on-chip,
      # e.g., Samsung. [Reference](https://developer.android.com/reference/android/os/
      # Build#SOC_MANUFACTURER) * `deviceSocModel` (string): Model of the device's
      # primary system-on-chip, e.g., "Exynos 2100". [Reference](https://developer.
      # android.com/reference/android/os/Build#SOC_MODEL) * `deviceCpuMake` (string):
      # Make of the device's CPU, e.g., Qualcomm. * `deviceCpuModel` (string): Model
      # of the device's CPU, e.g., "Kryo 240". * `deviceGpuMake` (string): Make of the
      # device's GPU, e.g., ARM. * `deviceGpuModel` (string): Model of the device's
      # GPU, e.g., Mali. * `deviceGpuVersion` (string): Version of the device's GPU, e.
      # g., T750. * `deviceVulkanVersion` (string): Vulkan version of the device, e.g.,
      # "4198400". * `deviceGlEsVersion` (string): OpenGL ES version of the device, e.
      # g., "196610". * `deviceScreenSize` (string): Screen size of the device, e.g.,
      # NORMAL, LARGE. * `deviceScreenDpi` (string): Screen density of the device, e.g.
      # , mdpi, hdpi. **Required permissions**: to access this resource, the calling
      # user needs the _View app information (read-only)_ permission for the app. **
      # Related metric sets:** * vitals.errors.counts contains normalized metrics
      # about Crashes, another stability metric. * vitals.errors.counts contains
      # normalized metrics about ANRs, another stability metric.
      class GooglePlayDeveloperReportingV1alpha1ErrorCountMetricSet
        include Google::Apis::Core::Hashable
      
        # Represents the latest available time that can be requested in a TimelineSpec.
        # Different aggregation periods have different freshness. For example, `DAILY`
        # aggregation may lag behind `HOURLY` in cases where such aggregation is
        # computed only once at the end of the day.
        # Corresponds to the JSON property `freshnessInfo`
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1FreshnessInfo]
        attr_accessor :freshness_info
      
        # The resource name. Format: apps/`app`/errorCountMetricSet
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @freshness_info = args[:freshness_info] if args.key?(:freshness_info)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A group of related ErrorReports received for an app. Similar error reports are
      # grouped together into issues with a likely identical root cause. **Please note:
      # ** this resource is currently in Alpha. There could be changes to the issue
      # grouping that would result in similar but more recent error reports being
      # assigned to different issues. This could also cause some issues disappearing
      # entirely and being replaced by new ones. **Required permissions**: to access
      # this resource, the calling user needs the _View app information (read-only)_
      # permission for the app.
      class GooglePlayDeveloperReportingV1alpha1ErrorIssue
        include Google::Apis::Core::Hashable
      
        # Cause of the issue. Depending on the type this can be either: *
        # APPLICATION_NOT_RESPONDING: the type of ANR that occurred, e.g., 'Input
        # dispatching timed out'. * CRASH: for Java unhandled exception errors, the type
        # of the innermost exception that was thrown, e.g., IllegalArgumentException.
        # For signals in native code, the signal that was raised, e.g. SIGSEGV.
        # Corresponds to the JSON property `cause`
        # @return [String]
        attr_accessor :cause
      
        # An estimate of the number of unique users who have experienced this issue (
        # only considering occurrences matching the filters and within the requested
        # time period).
        # Corresponds to the JSON property `distinctUsers`
        # @return [Fixnum]
        attr_accessor :distinct_users
      
        # A representation of a decimal value, such as 2.5. Clients may convert values
        # into language-native decimal formats, such as Java's BigDecimal or Python's
        # decimal.Decimal. [BigDecimal]: https://docs.oracle.com/en/java/javase/11/docs/
        # api/java.base/java/math/BigDecimal.html [decimal.Decimal]: https://docs.python.
        # org/3/library/decimal.html
        # Corresponds to the JSON property `distinctUsersPercent`
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GoogleTypeDecimal]
        attr_accessor :distinct_users_percent
      
        # The total number of error reports in this issue (only considering occurrences
        # matching the filters and within the requested time period).
        # Corresponds to the JSON property `errorReportCount`
        # @return [Fixnum]
        attr_accessor :error_report_count
      
        # Representations of an app version.
        # Corresponds to the JSON property `firstAppVersion`
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1AppVersion]
        attr_accessor :first_app_version
      
        # Representation of an OS version.
        # Corresponds to the JSON property `firstOsVersion`
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1OsVersion]
        attr_accessor :first_os_version
      
        # Link to the issue in Android vitals in the Play Console.
        # Corresponds to the JSON property `issueUri`
        # @return [String]
        attr_accessor :issue_uri
      
        # Representations of an app version.
        # Corresponds to the JSON property `lastAppVersion`
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1AppVersion]
        attr_accessor :last_app_version
      
        # Start of the hour during which the last error report in this issue occurred.
        # Corresponds to the JSON property `lastErrorReportTime`
        # @return [String]
        attr_accessor :last_error_report_time
      
        # Representation of an OS version.
        # Corresponds to the JSON property `lastOsVersion`
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1OsVersion]
        attr_accessor :last_os_version
      
        # Location where the issue happened. Depending on the type this can be either: *
        # APPLICATION_NOT_RESPONDING: the name of the activity or service that stopped
        # responding. * CRASH: the likely method name that caused the error.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The resource name of the issue. Format: apps/`app`/errorIssues/`issue`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Type of the errors grouped in this issue.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cause = args[:cause] if args.key?(:cause)
          @distinct_users = args[:distinct_users] if args.key?(:distinct_users)
          @distinct_users_percent = args[:distinct_users_percent] if args.key?(:distinct_users_percent)
          @error_report_count = args[:error_report_count] if args.key?(:error_report_count)
          @first_app_version = args[:first_app_version] if args.key?(:first_app_version)
          @first_os_version = args[:first_os_version] if args.key?(:first_os_version)
          @issue_uri = args[:issue_uri] if args.key?(:issue_uri)
          @last_app_version = args[:last_app_version] if args.key?(:last_app_version)
          @last_error_report_time = args[:last_error_report_time] if args.key?(:last_error_report_time)
          @last_os_version = args[:last_os_version] if args.key?(:last_os_version)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # An error report received for an app. There reports are produced by the Android
      # platform code when a (potentially fatal) error condition is detected.
      # Identical reports from many users will be deduplicated and coalesced into a
      # single ErrorReport. **Required permissions**: to access this resource, the
      # calling user needs the _View app information (read-only)_ permission for the
      # app.
      class GooglePlayDeveloperReportingV1alpha1ErrorReport
        include Google::Apis::Core::Hashable
      
        # Summary of a device
        # Corresponds to the JSON property `deviceModel`
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1DeviceModelSummary]
        attr_accessor :device_model
      
        # Start of the hour during which the latest event in this error report occurred.
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # The issue this report was associated with. **Please note:** this resource is
        # currently in Alpha. There could be changes to the issue grouping that would
        # result in similar but more recent error reports being assigned to a different
        # issue.
        # Corresponds to the JSON property `issue`
        # @return [String]
        attr_accessor :issue
      
        # The resource name of the report. Format: apps/`app`/errorReports/`report`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Representation of an OS version.
        # Corresponds to the JSON property `osVersion`
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1OsVersion]
        attr_accessor :os_version
      
        # Textual representation of the error report. These textual reports are produced
        # by the platform. The reports are then sanitized and filtered to remove any
        # potentially sensitive information. Although their format is fairly stable,
        # they are not entirely meant for machine consumption and we cannot guarantee
        # that there won't be subtle changes to the formatting that may break systems
        # trying to parse information out of the reports.
        # Corresponds to the JSON property `reportText`
        # @return [String]
        attr_accessor :report_text
      
        # Type of the error for which this report was generated.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_model = args[:device_model] if args.key?(:device_model)
          @event_time = args[:event_time] if args.key?(:event_time)
          @issue = args[:issue] if args.key?(:issue)
          @name = args[:name] if args.key?(:name)
          @os_version = args[:os_version] if args.key?(:os_version)
          @report_text = args[:report_text] if args.key?(:report_text)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Singleton resource representing the set of Excessive Weakeups metrics. This
      # metric set contains AlarmManager wakeup counts data combined with process
      # state data to produce a normalized metric independent of user counts. **
      # Supported aggregation periods:** * DAILY: metrics are aggregated in calendar
      # date intervals. Due to historical constraints, the only supported timezone is `
      # America/Los_Angeles`. **Supported metrics:** * `excessiveWakeupRate` (`google.
      # type.Decimal`): Percentage of distinct users in the aggregation period that
      # had more than 10 wakeups per hour. * `excessiveWakeupRate7dUserWeighted` (`
      # google.type.Decimal`): Rolling average value of `excessiveWakeupRate` in the
      # last 7 days. The daily values are weighted by the count of distinct users for
      # the day. * `excessiveWakeupRate28dUserWeighted` (`google.type.Decimal`):
      # Rolling average value of `excessiveWakeupRate` in the last 28 days. The daily
      # values are weighted by the count of distinct users for the day. * `
      # distinctUsers` (`google.type.Decimal`): Count of distinct users in the
      # aggregation period that were used as normalization value for the `
      # excessiveWakeupRate` metric. A user is counted in this metric if they app was
      # doing any work on the device, i.e., not just active foreground usage but also
      # background work. Care must be taken not to aggregate this count further, as it
      # may result in users being counted multiple times. The value is rounded to the
      # nearest multiple of 10, 100, 1,000 or 1,000,000, depending on the magnitude of
      # the value. **Supported dimensions:** * `apiLevel` (string): the API level of
      # Android that was running on the user's device, e.g., 26. * `versionCode` (
      # int64): version of the app that was running on the user's device. * `
      # deviceModel` (string): unique identifier of the user's device model. The form
      # of the identifier is 'deviceBrand/device', where deviceBrand corresponds to
      # Build.BRAND and device corresponds to Build.DEVICE, e.g., google/coral. * `
      # deviceBrand` (string): unique identifier of the user's device brand, e.g.,
      # google. * `deviceType` (string): the type (also known as form factor) of the
      # user's device, e.g., PHONE. * `countryCode` (string): the country or region of
      # the user's device based on their IP address, represented as a 2-letter ISO-
      # 3166 code (e.g. US for the United States). * `deviceRamBucket` (int64): RAM of
      # the device, in MB, in buckets (3GB, 4GB, etc.). * `deviceSocMake` (string):
      # Make of the device's primary system-on-chip, e.g., Samsung. [Reference](https:/
      # /developer.android.com/reference/android/os/Build#SOC_MANUFACTURER) * `
      # deviceSocModel` (string): Model of the device's primary system-on-chip, e.g., "
      # Exynos 2100". [Reference](https://developer.android.com/reference/android/os/
      # Build#SOC_MODEL) * `deviceCpuMake` (string): Make of the device's CPU, e.g.,
      # Qualcomm. * `deviceCpuModel` (string): Model of the device's CPU, e.g., "Kryo
      # 240". * `deviceGpuMake` (string): Make of the device's GPU, e.g., ARM. * `
      # deviceGpuModel` (string): Model of the device's GPU, e.g., Mali. * `
      # deviceGpuVersion` (string): Version of the device's GPU, e.g., T750. * `
      # deviceVulkanVersion` (string): Vulkan version of the device, e.g., "4198400". *
      # `deviceGlEsVersion` (string): OpenGL ES version of the device, e.g., "196610".
      # * `deviceScreenSize` (string): Screen size of the device, e.g., NORMAL, LARGE.
      # * `deviceScreenDpi` (string): Screen density of the device, e.g., mdpi, hdpi.
      # **Required permissions**: to access this resource, the calling user needs the
      # _View app information (read-only)_ permission for the app.
      class GooglePlayDeveloperReportingV1alpha1ExcessiveWakeupRateMetricSet
        include Google::Apis::Core::Hashable
      
        # Represents the latest available time that can be requested in a TimelineSpec.
        # Different aggregation periods have different freshness. For example, `DAILY`
        # aggregation may lag behind `HOURLY` in cases where such aggregation is
        # computed only once at the end of the day.
        # Corresponds to the JSON property `freshnessInfo`
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1FreshnessInfo]
        attr_accessor :freshness_info
      
        # The resource name. Format: apps/`app`/excessiveWakeupRateMetricSet
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @freshness_info = args[:freshness_info] if args.key?(:freshness_info)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Represents the latest available time that can be requested in a TimelineSpec.
      # Different aggregation periods have different freshness. For example, `DAILY`
      # aggregation may lag behind `HOURLY` in cases where such aggregation is
      # computed only once at the end of the day.
      class GooglePlayDeveloperReportingV1alpha1FreshnessInfo
        include Google::Apis::Core::Hashable
      
        # Information about data freshness for every supported aggregation period. This
        # field has set semantics, keyed by the `aggregation_period` field.
        # Corresponds to the JSON property `freshnesses`
        # @return [Array<Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1FreshnessInfoFreshness>]
        attr_accessor :freshnesses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @freshnesses = args[:freshnesses] if args.key?(:freshnesses)
        end
      end
      
      # Information about data freshness for a single aggregation period.
      class GooglePlayDeveloperReportingV1alpha1FreshnessInfoFreshness
        include Google::Apis::Core::Hashable
      
        # Aggregation period for which data is available.
        # Corresponds to the JSON property `aggregationPeriod`
        # @return [String]
        attr_accessor :aggregation_period
      
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
        # Corresponds to the JSON property `latestEndTime`
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GoogleTypeDateTime]
        attr_accessor :latest_end_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregation_period = args[:aggregation_period] if args.key?(:aggregation_period)
          @latest_end_time = args[:latest_end_time] if args.key?(:latest_end_time)
        end
      end
      
      # Response with a list of anomalies in datasets.
      class GooglePlayDeveloperReportingV1alpha1ListAnomaliesResponse
        include Google::Apis::Core::Hashable
      
        # Anomalies that were found.
        # Corresponds to the JSON property `anomalies`
        # @return [Array<Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1Anomaly>]
        attr_accessor :anomalies
      
        # Continuation token to fetch the next page of data.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @anomalies = args[:anomalies] if args.key?(:anomalies)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Represents the value of a metric.
      class GooglePlayDeveloperReportingV1alpha1MetricValue
        include Google::Apis::Core::Hashable
      
        # A representation of a decimal value, such as 2.5. Clients may convert values
        # into language-native decimal formats, such as Java's BigDecimal or Python's
        # decimal.Decimal. [BigDecimal]: https://docs.oracle.com/en/java/javase/11/docs/
        # api/java.base/java/math/BigDecimal.html [decimal.Decimal]: https://docs.python.
        # org/3/library/decimal.html
        # Corresponds to the JSON property `decimalValue`
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GoogleTypeDecimal]
        attr_accessor :decimal_value
      
        # Represents the confidence interval of a metric.
        # Corresponds to the JSON property `decimalValueConfidenceInterval`
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1DecimalConfidenceInterval]
        attr_accessor :decimal_value_confidence_interval
      
        # Name of the metric.
        # Corresponds to the JSON property `metric`
        # @return [String]
        attr_accessor :metric
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @decimal_value = args[:decimal_value] if args.key?(:decimal_value)
          @decimal_value_confidence_interval = args[:decimal_value_confidence_interval] if args.key?(:decimal_value_confidence_interval)
          @metric = args[:metric] if args.key?(:metric)
        end
      end
      
      # Represents a row of dimensions and metrics.
      class GooglePlayDeveloperReportingV1alpha1MetricsRow
        include Google::Apis::Core::Hashable
      
        # Granularity of the aggregation period of the row.
        # Corresponds to the JSON property `aggregationPeriod`
        # @return [String]
        attr_accessor :aggregation_period
      
        # Dimension columns in the row.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1DimensionValue>]
        attr_accessor :dimensions
      
        # Metric columns in the row.
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1MetricValue>]
        attr_accessor :metrics
      
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
        # Corresponds to the JSON property `startTime`
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GoogleTypeDateTime]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregation_period = args[:aggregation_period] if args.key?(:aggregation_period)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @metrics = args[:metrics] if args.key?(:metrics)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Representation of an OS version.
      class GooglePlayDeveloperReportingV1alpha1OsVersion
        include Google::Apis::Core::Hashable
      
        # Numeric version code of the OS - API level
        # Corresponds to the JSON property `apiLevel`
        # @return [Fixnum]
        attr_accessor :api_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_level = args[:api_level] if args.key?(:api_level)
        end
      end
      
      # Request message for QueryAnrRateMetricSet.
      class GooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetRequest
        include Google::Apis::Core::Hashable
      
        # Dimensions to slice the metrics by. **Supported dimensions:** * `apiLevel` (
        # string): the API level of Android that was running on the user's device, e.g.,
        # 26. * `versionCode` (int64): version of the app that was running on the user's
        # device. * `deviceModel` (string): unique identifier of the user's device model.
        # The form of the identifier is 'deviceBrand/device', where deviceBrand
        # corresponds to Build.BRAND and device corresponds to Build.DEVICE, e.g.,
        # google/coral. * `deviceBrand` (string): unique identifier of the user's device
        # brand, e.g., google. * `deviceType` (string): the type (also known as form
        # factor) of the user's device, e.g., PHONE. * `countryCode` (string): the
        # country or region of the user's device based on their IP address, represented
        # as a 2-letter ISO-3166 code (e.g. US for the United States). * `
        # deviceRamBucket` (int64): RAM of the device, in MB, in buckets (3GB, 4GB, etc.)
        # . * `deviceSocMake` (string): Make of the device's primary system-on-chip, e.g.
        # , Samsung. [Reference](https://developer.android.com/reference/android/os/
        # Build#SOC_MANUFACTURER) * `deviceSocModel` (string): Model of the device's
        # primary system-on-chip, e.g., "Exynos 2100". [Reference](https://developer.
        # android.com/reference/android/os/Build#SOC_MODEL) * `deviceCpuMake` (string):
        # Make of the device's CPU, e.g., Qualcomm. * `deviceCpuModel` (string): Model
        # of the device's CPU, e.g., "Kryo 240". * `deviceGpuMake` (string): Make of the
        # device's GPU, e.g., ARM. * `deviceGpuModel` (string): Model of the device's
        # GPU, e.g., Mali. * `deviceGpuVersion` (string): Version of the device's GPU, e.
        # g., T750. * `deviceVulkanVersion` (string): Vulkan version of the device, e.g.,
        # "4198400". * `deviceGlEsVersion` (string): OpenGL ES version of the device, e.
        # g., "196610". * `deviceScreenSize` (string): Screen size of the device, e.g.,
        # NORMAL, LARGE. * `deviceScreenDpi` (string): Screen density of the device, e.g.
        # , mdpi, hdpi.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<String>]
        attr_accessor :dimensions
      
        # Filters to apply to data. The filtering expression follows [AIP-160](https://
        # google.aip.dev/160) standard and supports filtering by equality of all
        # breakdown dimensions.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Metrics to aggregate. **Supported metrics:** * `anrRate` (`google.type.Decimal`
        # ): Percentage of distinct users in the aggregation period that experienced at
        # least one ANR. * `anrRate7dUserWeighted` (`google.type.Decimal`): Rolling
        # average value of `anrRate` in the last 7 days. The daily values are weighted
        # by the count of distinct users for the day. Not supported in HOURLY
        # granularity. * `anrRate28dUserWeighted` (`google.type.Decimal`): Rolling
        # average value of `anrRate` in the last 28 days. The daily values are weighted
        # by the count of distinct users for the day. Not supported in HOURLY
        # granularity. * `userPerceivedAnrRate` (`google.type.Decimal`): Percentage of
        # distinct users in the aggregation period that experienced at least one user-
        # perceived ANR. User-perceived ANRs are currently those of 'Input dispatching'
        # type. * `userPerceivedAnrRate7dUserWeighted` (`google.type.Decimal`): Rolling
        # average value of `userPerceivedAnrRate` in the last 7 days. The daily values
        # are weighted by the count of distinct users for the day. Not supported in
        # HOURLY granularity. * `userPerceivedAnrRate28dUserWeighted` (`google.type.
        # Decimal`): Rolling average value of `userPerceivedAnrRate` in the last 28 days.
        # The daily values are weighted by the count of distinct users for the day. Not
        # . supported in HOURLY granularity. * `distinctUsers` (`google.type.Decimal`):
        # Count of distinct users in the aggregation period that were used as
        # normalization value for the `anrRate` and `userPerceivedAnrRate` metrics. A
        # user is counted in this metric if they used the app in the foreground during
        # the aggregation period. Care must be taken not to aggregate this count further,
        # as it may result in users being counted multiple times. The value is rounded
        # to the nearest multiple of 10, 100, 1,000 or 1,000,000, depending on the
        # magnitude of the value.
        # Corresponds to the JSON property `metrics`
        # @return [Array<String>]
        attr_accessor :metrics
      
        # Maximum size of the returned data. If unspecified, at most 1000 rows will be
        # returned. The maximum value is 100,000; values above 100,000 will be coerced
        # to 100,000.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # A page token, received from a previous call. Provide this to retrieve the
        # subsequent page. When paginating, all other parameters provided to the request
        # must match the call that provided the page token.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Specification of the time-related aggregation parameters of a timeline.
        # Timelines have an aggregation period (`DAILY`, `HOURLY`, etc) which defines
        # how events are aggregated in metrics. The points in a timeline are defined by
        # the starting DateTime of the aggregation period. The duration is implicit in
        # the AggregationPeriod. Hourly aggregation periods, when supported by a metric
        # set, are always specified in UTC to avoid ambiguities around daylight saving
        # time transitions, where an hour is skipped when adopting DST, and repeated
        # when abandoning DST. For example, the timestamp '2021-11-07 01:00:00 America/
        # Los_Angeles' is ambiguous since it can correspond to '2021-11-07 08:00:00 UTC'
        # or '2021-11-07 09:00:00 UTC'. Daily aggregation periods require specifying a
        # timezone which will determine the precise instants of the start and the end of
        # the day. Not all metric sets support all timezones, so make sure to check
        # which timezones are supported by the metric set you want to query.
        # Corresponds to the JSON property `timelineSpec`
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1TimelineSpec]
        attr_accessor :timeline_spec
      
        # User view to select. The output data will correspond to the selected view. **
        # Supported values:** * `OS_PUBLIC` To select data from all publicly released
        # Android versions. This is the default. Supports all the above dimensions. * `
        # APP_TESTERS` To select data from users who have opted in to be testers.
        # Supports all the above dimensions. * `OS_BETA` To select data from beta
        # android versions only, excluding data from released android versions. Only the
        # following dimensions are supported: * `versionCode` (int64): version of the
        # app that was running on the user's device. * `osBuild` (string): OS build of
        # the user's device, e.g., "T1B2.220916.004".
        # Corresponds to the JSON property `userCohort`
        # @return [String]
        attr_accessor :user_cohort
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @filter = args[:filter] if args.key?(:filter)
          @metrics = args[:metrics] if args.key?(:metrics)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @timeline_spec = args[:timeline_spec] if args.key?(:timeline_spec)
          @user_cohort = args[:user_cohort] if args.key?(:user_cohort)
        end
      end
      
      # Response message for QueryAnrRateMetricSet.
      class GooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetResponse
        include Google::Apis::Core::Hashable
      
        # Continuation token to fetch the next page of data.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Returned rows of data.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1MetricsRow>]
        attr_accessor :rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @rows = args[:rows] if args.key?(:rows)
        end
      end
      
      # Request message for QueryCrashRateMetricSet.
      class GooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetRequest
        include Google::Apis::Core::Hashable
      
        # Dimensions to slice the metrics by. **Supported dimensions:** * `apiLevel` (
        # string): the API level of Android that was running on the user's device, e.g.,
        # 26. * `versionCode` (int64): version of the app that was running on the user's
        # device. * `deviceModel` (string): unique identifier of the user's device model.
        # The form of the identifier is 'deviceBrand/device', where deviceBrand
        # corresponds to Build.BRAND and device corresponds to Build.DEVICE, e.g.,
        # google/coral. * `deviceBrand` (string): unique identifier of the user's device
        # brand, e.g., google. * `deviceType` (string): the type (also known as form
        # factor) of the user's device, e.g., PHONE. * `countryCode` (string): the
        # country or region of the user's device based on their IP address, represented
        # as a 2-letter ISO-3166 code (e.g. US for the United States). * `
        # deviceRamBucket` (int64): RAM of the device, in MB, in buckets (3GB, 4GB, etc.)
        # . * `deviceSocMake` (string): Make of the device's primary system-on-chip, e.g.
        # , Samsung. [Reference](https://developer.android.com/reference/android/os/
        # Build#SOC_MANUFACTURER) * `deviceSocModel` (string): Model of the device's
        # primary system-on-chip, e.g., "Exynos 2100". [Reference](https://developer.
        # android.com/reference/android/os/Build#SOC_MODEL) * `deviceCpuMake` (string):
        # Make of the device's CPU, e.g., Qualcomm. * `deviceCpuModel` (string): Model
        # of the device's CPU, e.g., "Kryo 240". * `deviceGpuMake` (string): Make of the
        # device's GPU, e.g., ARM. * `deviceGpuModel` (string): Model of the device's
        # GPU, e.g., Mali. * `deviceGpuVersion` (string): Version of the device's GPU, e.
        # g., T750. * `deviceVulkanVersion` (string): Vulkan version of the device, e.g.,
        # "4198400". * `deviceGlEsVersion` (string): OpenGL ES version of the device, e.
        # g., "196610". * `deviceScreenSize` (string): Screen size of the device, e.g.,
        # NORMAL, LARGE. * `deviceScreenDpi` (string): Screen density of the device, e.g.
        # , mdpi, hdpi.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<String>]
        attr_accessor :dimensions
      
        # Filters to apply to data. The filtering expression follows [AIP-160](https://
        # google.aip.dev/160) standard and supports filtering by equality of all
        # breakdown dimensions.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Metrics to aggregate. **Supported metrics:** * `crashRate` (`google.type.
        # Decimal`): Percentage of distinct users in the aggregation period that
        # experienced at least one crash. * `crashRate7dUserWeighted` (`google.type.
        # Decimal`): Rolling average value of `crashRate` in the last 7 days. The daily
        # values are weighted by the count of distinct users for the day. * `
        # crashRate28dUserWeighted` (`google.type.Decimal`): Rolling average value of `
        # crashRate` in the last 28 days. The daily values are weighted by the count of
        # distinct users for the day. Not supported in HOURLY granularity. * `
        # userPerceivedCrashRate` (`google.type.Decimal`): Percentage of distinct users
        # in the aggregation period that experienced at least one crash while they were
        # actively using your app (a user-perceived crash). An app is considered to be
        # in active use if it is displaying any activity or executing any foreground
        # service. * `userPerceivedCrashRate7dUserWeighted` (`google.type.Decimal`):
        # Rolling average value of `userPerceivedCrashRate` in the last 7 days. The
        # daily values are weighted by the count of distinct users for the day. Not
        # supported in HOURLY granularity. * `userPerceivedCrashRate28dUserWeighted` (`
        # google.type.Decimal`): Rolling average value of `userPerceivedCrashRate` in
        # the last 28 days. The daily values are weighted by the count of distinct users
        # for the day. Not supported in HOURLY granularity. * `distinctUsers` (`google.
        # type.Decimal`): Count of distinct users in the aggregation period that were
        # used as normalization value for the `crashRate` and `userPerceivedCrashRate`
        # metrics. A user is counted in this metric if they used the app actively during
        # the aggregation period. An app is considered to be in active use if it is
        # displaying any activity or executing any foreground service. Care must be
        # taken not to aggregate this count further, as it may result in users being
        # counted multiple times. The value is rounded to the nearest multiple of 10,
        # 100, 1,000 or 1,000,000, depending on the magnitude of the value.
        # Corresponds to the JSON property `metrics`
        # @return [Array<String>]
        attr_accessor :metrics
      
        # Maximum size of the returned data. If unspecified, at most 1000 rows will be
        # returned. The maximum value is 100,000; values above 100,000 will be coerced
        # to 100,000.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # A page token, received from a previous call. Provide this to retrieve the
        # subsequent page. When paginating, all other parameters provided to the request
        # must match the call that provided the page token.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Specification of the time-related aggregation parameters of a timeline.
        # Timelines have an aggregation period (`DAILY`, `HOURLY`, etc) which defines
        # how events are aggregated in metrics. The points in a timeline are defined by
        # the starting DateTime of the aggregation period. The duration is implicit in
        # the AggregationPeriod. Hourly aggregation periods, when supported by a metric
        # set, are always specified in UTC to avoid ambiguities around daylight saving
        # time transitions, where an hour is skipped when adopting DST, and repeated
        # when abandoning DST. For example, the timestamp '2021-11-07 01:00:00 America/
        # Los_Angeles' is ambiguous since it can correspond to '2021-11-07 08:00:00 UTC'
        # or '2021-11-07 09:00:00 UTC'. Daily aggregation periods require specifying a
        # timezone which will determine the precise instants of the start and the end of
        # the day. Not all metric sets support all timezones, so make sure to check
        # which timezones are supported by the metric set you want to query.
        # Corresponds to the JSON property `timelineSpec`
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1TimelineSpec]
        attr_accessor :timeline_spec
      
        # User view to select. The output data will correspond to the selected view. **
        # Supported values:** * `OS_PUBLIC` To select data from all publicly released
        # Android versions. This is the default. Supports all the above dimensions. * `
        # APP_TESTERS` To select data from users who have opted in to be testers.
        # Supports all the above dimensions. * `OS_BETA` To select data from beta
        # android versions only, excluding data from released android versions. Only the
        # following dimensions are supported: * `versionCode` (int64): version of the
        # app that was running on the user's device. * `osBuild` (string): OS build of
        # the user's device, e.g., "T1B2.220916.004".
        # Corresponds to the JSON property `userCohort`
        # @return [String]
        attr_accessor :user_cohort
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @filter = args[:filter] if args.key?(:filter)
          @metrics = args[:metrics] if args.key?(:metrics)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @timeline_spec = args[:timeline_spec] if args.key?(:timeline_spec)
          @user_cohort = args[:user_cohort] if args.key?(:user_cohort)
        end
      end
      
      # Response message for QueryCrashRateMetricSet.
      class GooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetResponse
        include Google::Apis::Core::Hashable
      
        # Continuation token to fetch the next page of data.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Returned rows of data.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1MetricsRow>]
        attr_accessor :rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @rows = args[:rows] if args.key?(:rows)
        end
      end
      
      # Request message for QueryErrorCountMetricSet.
      class GooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetRequest
        include Google::Apis::Core::Hashable
      
        # Dimensions to slice the data by. **Supported dimensions:** * `apiLevel` (
        # string): the API level of Android that was running on the user's device, e.g.,
        # 26. * `versionCode` (int64): unique identifier of the user's device model. The
        # form of the identifier is 'deviceBrand/device', where deviceBrand corresponds
        # to Build.BRAND and device corresponds to Build.DEVICE, e.g., google/coral. * `
        # deviceModel` (string): unique identifier of the user's device model. * `
        # deviceType` (string): identifier of the device's form factor, e.g., PHONE. * `
        # reportType` (string): the type of error. The value should correspond to one of
        # the possible values in ErrorType. * `isUserPerceived` (string): denotes
        # whether error is user perceived or not, USER_PERCEIVED or NOT_USER_PERCEIVED. *
        # `issueId` (string): the id an error was assigned to. The value should
        # correspond to the ``issue`` component of the issue name. * `deviceRamBucket` (
        # int64): RAM of the device, in MB, in buckets (3GB, 4GB, etc.). * `
        # deviceSocMake` (string): Make of the device's primary system-on-chip, e.g.,
        # Samsung. [Reference](https://developer.android.com/reference/android/os/Build#
        # SOC_MANUFACTURER) * `deviceSocModel` (string): Model of the device's primary
        # system-on-chip, e.g., "Exynos 2100". [Reference](https://developer.android.com/
        # reference/android/os/Build#SOC_MODEL) * `deviceCpuMake` (string): Make of the
        # device's CPU, e.g., Qualcomm. * `deviceCpuModel` (string): Model of the device'
        # s CPU, e.g., "Kryo 240". * `deviceGpuMake` (string): Make of the device's GPU,
        # e.g., ARM. * `deviceGpuModel` (string): Model of the device's GPU, e.g., Mali.
        # * `deviceGpuVersion` (string): Version of the device's GPU, e.g., T750. * `
        # deviceVulkanVersion` (string): Vulkan version of the device, e.g., "4198400". *
        # `deviceGlEsVersion` (string): OpenGL ES version of the device, e.g., "196610".
        # * `deviceScreenSize` (string): Screen size of the device, e.g., NORMAL, LARGE.
        # * `deviceScreenDpi` (string): Screen density of the device, e.g., mdpi, hdpi.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<String>]
        attr_accessor :dimensions
      
        # Filters to apply to data. The filtering expression follows [AIP-160](https://
        # google.aip.dev/160) standard and supports filtering by equality of all
        # breakdown dimensions.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Metrics to aggregate. **Supported metrics:** * `errorReportCount` (`google.
        # type.Decimal`): Absolute count of individual error reports that have been
        # received for an app. * `distinctUsers` (`google.type.Decimal`): Count of
        # distinct users for which reports have been received. Care must be taken not to
        # aggregate this count further, as it may result in users being counted multiple
        # times. This value is not rounded, however it may be an approximation.
        # Corresponds to the JSON property `metrics`
        # @return [Array<String>]
        attr_accessor :metrics
      
        # Maximum size of the returned data. If unspecified, at most 1000 rows will be
        # returned. The maximum value is 100000; values above 100000 will be coerced to
        # 100000.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # A page token, received from a previous call. Provide this to retrieve the
        # subsequent page. When paginating, all other parameters provided to the request
        # must match the call that provided the page token.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Specification of the time-related aggregation parameters of a timeline.
        # Timelines have an aggregation period (`DAILY`, `HOURLY`, etc) which defines
        # how events are aggregated in metrics. The points in a timeline are defined by
        # the starting DateTime of the aggregation period. The duration is implicit in
        # the AggregationPeriod. Hourly aggregation periods, when supported by a metric
        # set, are always specified in UTC to avoid ambiguities around daylight saving
        # time transitions, where an hour is skipped when adopting DST, and repeated
        # when abandoning DST. For example, the timestamp '2021-11-07 01:00:00 America/
        # Los_Angeles' is ambiguous since it can correspond to '2021-11-07 08:00:00 UTC'
        # or '2021-11-07 09:00:00 UTC'. Daily aggregation periods require specifying a
        # timezone which will determine the precise instants of the start and the end of
        # the day. Not all metric sets support all timezones, so make sure to check
        # which timezones are supported by the metric set you want to query.
        # Corresponds to the JSON property `timelineSpec`
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1TimelineSpec]
        attr_accessor :timeline_spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @filter = args[:filter] if args.key?(:filter)
          @metrics = args[:metrics] if args.key?(:metrics)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @timeline_spec = args[:timeline_spec] if args.key?(:timeline_spec)
        end
      end
      
      # Error counts query response.
      class GooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetResponse
        include Google::Apis::Core::Hashable
      
        # Continuation token to fetch the next page of data.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Returned rows.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1MetricsRow>]
        attr_accessor :rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @rows = args[:rows] if args.key?(:rows)
        end
      end
      
      # Request message for QueryExcessiveWakeupRateMetricSet.
      class GooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetRequest
        include Google::Apis::Core::Hashable
      
        # Dimensions to slice the data by. **Supported dimensions:** * `apiLevel` (
        # string): the API level of Android that was running on the user's device, e.g.,
        # 26. * `versionCode` (int64): version of the app that was running on the user's
        # device. * `deviceModel` (string): unique identifier of the user's device model.
        # The form of the identifier is 'deviceBrand/device', where deviceBrand
        # corresponds to Build.BRAND and device corresponds to Build.DEVICE, e.g.,
        # google/coral. * `deviceBrand` (string): unique identifier of the user's device
        # brand, e.g., google. * `deviceType` (string): the type (also known as form
        # factor) of the user's device, e.g., PHONE. * `countryCode` (string): the
        # country or region of the user's device based on their IP address, represented
        # as a 2-letter ISO-3166 code (e.g. US for the United States). * `
        # deviceRamBucket` (int64): RAM of the device, in MB, in buckets (3GB, 4GB, etc.)
        # . * `deviceSocMake` (string): Make of the device's primary system-on-chip, e.g.
        # , Samsung. [Reference](https://developer.android.com/reference/android/os/
        # Build#SOC_MANUFACTURER) * `deviceSocModel` (string): Model of the device's
        # primary system-on-chip, e.g., "Exynos 2100". [Reference](https://developer.
        # android.com/reference/android/os/Build#SOC_MODEL) * `deviceCpuMake` (string):
        # Make of the device's CPU, e.g., Qualcomm. * `deviceCpuModel` (string): Model
        # of the device's CPU, e.g., "Kryo 240". * `deviceGpuMake` (string): Make of the
        # device's GPU, e.g., ARM. * `deviceGpuModel` (string): Model of the device's
        # GPU, e.g., Mali. * `deviceGpuVersion` (string): Version of the device's GPU, e.
        # g., T750. * `deviceVulkanVersion` (string): Vulkan version of the device, e.g.,
        # "4198400". * `deviceGlEsVersion` (string): OpenGL ES version of the device, e.
        # g., "196610". * `deviceScreenSize` (string): Screen size of the device, e.g.,
        # NORMAL, LARGE. * `deviceScreenDpi` (string): Screen density of the device, e.g.
        # , mdpi, hdpi.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<String>]
        attr_accessor :dimensions
      
        # Filters to apply to data. The filtering expression follows [AIP-160](https://
        # google.aip.dev/160) standard and supports filtering by equality of all
        # breakdown dimensions.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Metrics to aggregate. **Supported metrics:** * `excessiveWakeupRate` (`google.
        # type.Decimal`): Percentage of distinct users in the aggregation period that
        # had more than 10 wakeups per hour. * `excessiveWakeupRate7dUserWeighted` (`
        # google.type.Decimal`): Rolling average value of `excessiveWakeupRate` in the
        # last 7 days. The daily values are weighted by the count of distinct users for
        # the day. * `excessiveWakeupRate28dUserWeighted` (`google.type.Decimal`):
        # Rolling average value of `excessiveWakeupRate` in the last 28 days. The daily
        # values are weighted by the count of distinct users for the day. * `
        # distinctUsers` (`google.type.Decimal`): Count of distinct users in the
        # aggregation period that were used as normalization value for the `
        # excessiveWakeupRate` metric. A user is counted in this metric if they app was
        # doing any work on the device, i.e., not just active foreground usage but also
        # background work. Care must be taken not to aggregate this count further, as it
        # may result in users being counted multiple times. The value is rounded to the
        # nearest multiple of 10, 100, 1,000 or 1,000,000, depending on the magnitude of
        # the value.
        # Corresponds to the JSON property `metrics`
        # @return [Array<String>]
        attr_accessor :metrics
      
        # Maximum size of the returned data. If unspecified, at most 1000 rows will be
        # returned. The maximum value is 100000; values above 100000 will be coerced to
        # 100000.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # A page token, received from a previous call. Provide this to retrieve the
        # subsequent page. When paginating, all other parameters provided to the request
        # must match the call that provided the page token.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Specification of the time-related aggregation parameters of a timeline.
        # Timelines have an aggregation period (`DAILY`, `HOURLY`, etc) which defines
        # how events are aggregated in metrics. The points in a timeline are defined by
        # the starting DateTime of the aggregation period. The duration is implicit in
        # the AggregationPeriod. Hourly aggregation periods, when supported by a metric
        # set, are always specified in UTC to avoid ambiguities around daylight saving
        # time transitions, where an hour is skipped when adopting DST, and repeated
        # when abandoning DST. For example, the timestamp '2021-11-07 01:00:00 America/
        # Los_Angeles' is ambiguous since it can correspond to '2021-11-07 08:00:00 UTC'
        # or '2021-11-07 09:00:00 UTC'. Daily aggregation periods require specifying a
        # timezone which will determine the precise instants of the start and the end of
        # the day. Not all metric sets support all timezones, so make sure to check
        # which timezones are supported by the metric set you want to query.
        # Corresponds to the JSON property `timelineSpec`
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1TimelineSpec]
        attr_accessor :timeline_spec
      
        # User view to select. The output data will correspond to the selected view. **
        # Supported values:** * `OS_PUBLIC` To select data from all publicly released
        # Android versions. This is the default. Supports all the above dimensions. * `
        # APP_TESTERS` To select data from users who have opted in to be testers.
        # Supports all the above dimensions. * `OS_BETA` To select data from beta
        # android versions only, excluding data from released android versions. Only the
        # following dimensions are supported: * `versionCode` (int64): version of the
        # app that was running on the user's device. * `osBuild` (string): OS build of
        # the user's device, e.g., "T1B2.220916.004".
        # Corresponds to the JSON property `userCohort`
        # @return [String]
        attr_accessor :user_cohort
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @filter = args[:filter] if args.key?(:filter)
          @metrics = args[:metrics] if args.key?(:metrics)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @timeline_spec = args[:timeline_spec] if args.key?(:timeline_spec)
          @user_cohort = args[:user_cohort] if args.key?(:user_cohort)
        end
      end
      
      # Response message for QueryExcessiveWakeupRateMetricSet.
      class GooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetResponse
        include Google::Apis::Core::Hashable
      
        # Continuation token to fetch the next page of data.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Returned rows of data.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1MetricsRow>]
        attr_accessor :rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @rows = args[:rows] if args.key?(:rows)
        end
      end
      
      # Request message for QuerySlowRenderingRateMetricSet.
      class GooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetRequest
        include Google::Apis::Core::Hashable
      
        # Dimensions to slice the data by. **Supported dimensions:** * `apiLevel` (
        # string): the API level of Android that was running on the user's device, e.g.,
        # 26. * `versionCode` (int64): version of the app that was running on the user's
        # device. * `deviceModel` (string): unique identifier of the user's device model.
        # The form of the identifier is 'deviceBrand/device', where deviceBrand
        # corresponds to Build.BRAND and device corresponds to Build.DEVICE, e.g.,
        # google/coral. * `deviceBrand` (string): unique identifier of the user's device
        # brand, e.g., google. * `deviceType` (string): the type (also known as form
        # factor) of the user's device, e.g., PHONE. * `countryCode` (string): the
        # country or region of the user's device based on their IP address, represented
        # as a 2-letter ISO-3166 code (e.g. US for the United States). * `
        # deviceRamBucket` (int64): RAM of the device, in MB, in buckets (3GB, 4GB, etc.)
        # . * `deviceSocMake` (string): Make of the device's primary system-on-chip, e.g.
        # , Samsung. [Reference](https://developer.android.com/reference/android/os/
        # Build#SOC_MANUFACTURER) * `deviceSocModel` (string): Model of the device's
        # primary system-on-chip, e.g., "Exynos 2100". [Reference](https://developer.
        # android.com/reference/android/os/Build#SOC_MODEL) * `deviceCpuMake` (string):
        # Make of the device's CPU, e.g., Qualcomm. * `deviceCpuModel` (string): Model
        # of the device's CPU, e.g., "Kryo 240". * `deviceGpuMake` (string): Make of the
        # device's GPU, e.g., ARM. * `deviceGpuModel` (string): Model of the device's
        # GPU, e.g., Mali. * `deviceGpuVersion` (string): Version of the device's GPU, e.
        # g., T750. * `deviceVulkanVersion` (string): Vulkan version of the device, e.g.,
        # "4198400". * `deviceGlEsVersion` (string): OpenGL ES version of the device, e.
        # g., "196610". * `deviceScreenSize` (string): Screen size of the device, e.g.,
        # NORMAL, LARGE. * `deviceScreenDpi` (string): Screen density of the device, e.g.
        # , mdpi, hdpi.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<String>]
        attr_accessor :dimensions
      
        # Filters to apply to data. The filtering expression follows [AIP-160](https://
        # google.aip.dev/160) standard and supports filtering by equality of all
        # breakdown dimensions.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Metrics to aggregate. **Supported metrics:** * `slowRenderingRate20Fps` (`
        # google.type.Decimal`): Percentage of distinct users in the aggregation period
        # that had a slow rendering. * `slowRenderingRate20Fps7dUserWeighted` (`google.
        # type.Decimal`): Rolling average value of `slowRenderingRate20Fps` in the last
        # 7 days. The daily values are weighted by the count of distinct users for the
        # day. * `slowRenderingRate20Fps28dUserWeighted` (`google.type.Decimal`):
        # Rolling average value of `slowRenderingRate20Fps` in the last 28 days. The
        # daily values are weighted by the count of distinct users for the day. * `
        # slowRenderingRate30Fps` (`google.type.Decimal`): Percentage of distinct users
        # in the aggregation period that had a slow rendering. * `
        # slowRenderingRate30Fps7dUserWeighted` (`google.type.Decimal`): Rolling average
        # value of `slowRenderingRate30Fps` in the last 7 days. The daily values are
        # weighted by the count of distinct users for the day. * `
        # slowRenderingRate30Fps28dUserWeighted` (`google.type.Decimal`): Rolling
        # average value of `slowRenderingRate30Fps` in the last 28 days. The daily
        # values are weighted by the count of distinct users for the day. * `
        # distinctUsers` (`google.type.Decimal`): Count of distinct users in the
        # aggregation period that were used as normalization value for the `
        # slowRenderingRate20Fps`/`slowRenderingRate30Fps` metric. A user is counted in
        # this metric if their app was launched in the device. Care must be taken not to
        # aggregate this count further, as it may result in users being counted multiple
        # times. The value is rounded to the nearest multiple of 10, 100, 1,000 or 1,000,
        # 000, depending on the magnitude of the value.
        # Corresponds to the JSON property `metrics`
        # @return [Array<String>]
        attr_accessor :metrics
      
        # Maximum size of the returned data. If unspecified, at most 1000 rows will be
        # returned. The maximum value is 100000; values above 100000 will be coerced to
        # 100000.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # A page token, received from a previous call. Provide this to retrieve the
        # subsequent page. When paginating, all other parameters provided to the request
        # must match the call that provided the page token.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Specification of the time-related aggregation parameters of a timeline.
        # Timelines have an aggregation period (`DAILY`, `HOURLY`, etc) which defines
        # how events are aggregated in metrics. The points in a timeline are defined by
        # the starting DateTime of the aggregation period. The duration is implicit in
        # the AggregationPeriod. Hourly aggregation periods, when supported by a metric
        # set, are always specified in UTC to avoid ambiguities around daylight saving
        # time transitions, where an hour is skipped when adopting DST, and repeated
        # when abandoning DST. For example, the timestamp '2021-11-07 01:00:00 America/
        # Los_Angeles' is ambiguous since it can correspond to '2021-11-07 08:00:00 UTC'
        # or '2021-11-07 09:00:00 UTC'. Daily aggregation periods require specifying a
        # timezone which will determine the precise instants of the start and the end of
        # the day. Not all metric sets support all timezones, so make sure to check
        # which timezones are supported by the metric set you want to query.
        # Corresponds to the JSON property `timelineSpec`
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1TimelineSpec]
        attr_accessor :timeline_spec
      
        # User view to select. The output data will correspond to the selected view. **
        # Supported values:** * `OS_PUBLIC` To select data from all publicly released
        # Android versions. This is the default. Supports all the above dimensions. * `
        # APP_TESTERS` To select data from users who have opted in to be testers.
        # Supports all the above dimensions. * `OS_BETA` To select data from beta
        # Android versions only, excluding data from released Android versions. Only the
        # following dimensions are supported: * `versionCode` (int64): version of the
        # app that was running on the user's device. * `osBuild` (string): OS build of
        # the user's device, e.g., "T1B2.220916.004".
        # Corresponds to the JSON property `userCohort`
        # @return [String]
        attr_accessor :user_cohort
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @filter = args[:filter] if args.key?(:filter)
          @metrics = args[:metrics] if args.key?(:metrics)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @timeline_spec = args[:timeline_spec] if args.key?(:timeline_spec)
          @user_cohort = args[:user_cohort] if args.key?(:user_cohort)
        end
      end
      
      # Response message for QuerySlowRenderingRateMetricSet.
      class GooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetResponse
        include Google::Apis::Core::Hashable
      
        # Continuation token to fetch the next page of data.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Returned rows of data.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1MetricsRow>]
        attr_accessor :rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @rows = args[:rows] if args.key?(:rows)
        end
      end
      
      # Request message for QuerySlowStartRateMetricSet.
      class GooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetRequest
        include Google::Apis::Core::Hashable
      
        # Dimensions to slice the data by. **Supported dimensions:** * `apiLevel` (
        # string): the API level of Android that was running on the user's device, e.g.,
        # 26. * `versionCode` (int64): version of the app that was running on the user's
        # device. * `deviceModel` (string): unique identifier of the user's device model.
        # The form of the identifier is 'deviceBrand/device', where deviceBrand
        # corresponds to Build.BRAND and device corresponds to Build.DEVICE, e.g.,
        # google/coral. * `deviceBrand` (string): unique identifier of the user's device
        # brand, e.g., google. * `deviceType` (string): the type (also known as form
        # factor) of the user's device, e.g., PHONE. * `countryCode` (string): the
        # country or region of the user's device based on their IP address, represented
        # as a 2-letter ISO-3166 code (e.g. US for the United States). * `
        # deviceRamBucket` (int64): RAM of the device, in MB, in buckets (3GB, 4GB, etc.)
        # . * `deviceSocMake` (string): Make of the device's primary system-on-chip, e.g.
        # , Samsung. [Reference](https://developer.android.com/reference/android/os/
        # Build#SOC_MANUFACTURER) * `deviceSocModel` (string): Model of the device's
        # primary system-on-chip, e.g., "Exynos 2100". [Reference](https://developer.
        # android.com/reference/android/os/Build#SOC_MODEL) * `deviceCpuMake` (string):
        # Make of the device's CPU, e.g., Qualcomm. * `deviceCpuModel` (string): Model
        # of the device's CPU, e.g., "Kryo 240". * `deviceGpuMake` (string): Make of the
        # device's GPU, e.g., ARM. * `deviceGpuModel` (string): Model of the device's
        # GPU, e.g., Mali. * `deviceGpuVersion` (string): Version of the device's GPU, e.
        # g., T750. * `deviceVulkanVersion` (string): Vulkan version of the device, e.g.,
        # "4198400". * `deviceGlEsVersion` (string): OpenGL ES version of the device, e.
        # g., "196610". * `deviceScreenSize` (string): Screen size of the device, e.g.,
        # NORMAL, LARGE. * `deviceScreenDpi` (string): Screen density of the device, e.g.
        # , mdpi, hdpi.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<String>]
        attr_accessor :dimensions
      
        # Filters to apply to data. The filtering expression follows [AIP-160](https://
        # google.aip.dev/160) standard and supports filtering by equality of all
        # breakdown dimensions.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Metrics to aggregate. **Supported metrics:** * `slowStartRate` (`google.type.
        # Decimal`): Percentage of distinct users in the aggregation period that had a
        # slow start. * `slowStartRate7dUserWeighted` (`google.type.Decimal`): Rolling
        # average value of `slowStartRate` in the last 7 days. The daily values are
        # weighted by the count of distinct users for the day. * `
        # slowStartRate28dUserWeighted` (`google.type.Decimal`): Rolling average value
        # of `slowStartRate` in the last 28 days. The daily values are weighted by the
        # count of distinct users for the day. * `distinctUsers` (`google.type.Decimal`):
        # Count of distinct users in the aggregation period that were used as
        # normalization value for the `slowStartRate` metric. A user is counted in this
        # metric if their app was launched in the device. Care must be taken not to
        # aggregate this count further, as it may result in users being counted multiple
        # times. The value is rounded to the nearest multiple of 10, 100, 1,000 or 1,000,
        # 000, depending on the magnitude of the value.
        # Corresponds to the JSON property `metrics`
        # @return [Array<String>]
        attr_accessor :metrics
      
        # Maximum size of the returned data. If unspecified, at most 1000 rows will be
        # returned. The maximum value is 100000; values above 100000 will be coerced to
        # 100000.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # A page token, received from a previous call. Provide this to retrieve the
        # subsequent page. When paginating, all other parameters provided to the request
        # must match the call that provided the page token.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Specification of the time-related aggregation parameters of a timeline.
        # Timelines have an aggregation period (`DAILY`, `HOURLY`, etc) which defines
        # how events are aggregated in metrics. The points in a timeline are defined by
        # the starting DateTime of the aggregation period. The duration is implicit in
        # the AggregationPeriod. Hourly aggregation periods, when supported by a metric
        # set, are always specified in UTC to avoid ambiguities around daylight saving
        # time transitions, where an hour is skipped when adopting DST, and repeated
        # when abandoning DST. For example, the timestamp '2021-11-07 01:00:00 America/
        # Los_Angeles' is ambiguous since it can correspond to '2021-11-07 08:00:00 UTC'
        # or '2021-11-07 09:00:00 UTC'. Daily aggregation periods require specifying a
        # timezone which will determine the precise instants of the start and the end of
        # the day. Not all metric sets support all timezones, so make sure to check
        # which timezones are supported by the metric set you want to query.
        # Corresponds to the JSON property `timelineSpec`
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1TimelineSpec]
        attr_accessor :timeline_spec
      
        # User view to select. The output data will correspond to the selected view. **
        # Supported values:** * `OS_PUBLIC` To select data from all publicly released
        # Android versions. This is the default. Supports all the above dimensions. * `
        # APP_TESTERS` To select data from users who have opted in to be testers.
        # Supports all the above dimensions. * `OS_BETA` To select data from beta
        # Android versions only, excluding data from released Android versions. Only the
        # following dimensions are supported: * `versionCode` (int64): version of the
        # app that was running on the user's device. * `osBuild` (string): OS build of
        # the user's device, e.g., "T1B2.220916.004".
        # Corresponds to the JSON property `userCohort`
        # @return [String]
        attr_accessor :user_cohort
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @filter = args[:filter] if args.key?(:filter)
          @metrics = args[:metrics] if args.key?(:metrics)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @timeline_spec = args[:timeline_spec] if args.key?(:timeline_spec)
          @user_cohort = args[:user_cohort] if args.key?(:user_cohort)
        end
      end
      
      # Response message for QuerySlowStartRateMetricSet.
      class GooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetResponse
        include Google::Apis::Core::Hashable
      
        # Continuation token to fetch the next page of data.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Returned rows of data.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1MetricsRow>]
        attr_accessor :rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @rows = args[:rows] if args.key?(:rows)
        end
      end
      
      # Request message for QueryStuckBackgroundWakelockRateMetricSet.
      class GooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetRequest
        include Google::Apis::Core::Hashable
      
        # Dimensions to slice the data by. **Supported dimensions:** * `apiLevel` (
        # string): the API level of Android that was running on the user's device, e.g.,
        # 26. * `versionCode` (int64): version of the app that was running on the user's
        # device. * `deviceModel` (string): unique identifier of the user's device model.
        # The form of the identifier is 'deviceBrand/device', where deviceBrand
        # corresponds to Build.BRAND and device corresponds to Build.DEVICE, e.g.,
        # google/coral. * `deviceBrand` (string): unique identifier of the user's device
        # brand, e.g., google. * `deviceType` (string): the type (also known as form
        # factor) of the user's device, e.g., PHONE. * `countryCode` (string): the
        # country or region of the user's device based on their IP address, represented
        # as a 2-letter ISO-3166 code (e.g. US for the United States). * `
        # deviceRamBucket` (int64): RAM of the device, in MB, in buckets (3GB, 4GB, etc.)
        # . * `deviceSocMake` (string): Make of the device's primary system-on-chip, e.g.
        # , Samsung. [Reference](https://developer.android.com/reference/android/os/
        # Build#SOC_MANUFACTURER) * `deviceSocModel` (string): Model of the device's
        # primary system-on-chip, e.g., "Exynos 2100". [Reference](https://developer.
        # android.com/reference/android/os/Build#SOC_MODEL) * `deviceCpuMake` (string):
        # Make of the device's CPU, e.g., Qualcomm. * `deviceCpuModel` (string): Model
        # of the device's CPU, e.g., "Kryo 240". * `deviceGpuMake` (string): Make of the
        # device's GPU, e.g., ARM. * `deviceGpuModel` (string): Model of the device's
        # GPU, e.g., Mali. * `deviceGpuVersion` (string): Version of the device's GPU, e.
        # g., T750. * `deviceVulkanVersion` (string): Vulkan version of the device, e.g.,
        # "4198400". * `deviceGlEsVersion` (string): OpenGL ES version of the device, e.
        # g., "196610". * `deviceScreenSize` (string): Screen size of the device, e.g.,
        # NORMAL, LARGE. * `deviceScreenDpi` (string): Screen density of the device, e.g.
        # , mdpi, hdpi.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<String>]
        attr_accessor :dimensions
      
        # Filters to apply to data. The filtering expression follows [AIP-160](https://
        # google.aip.dev/160) standard and supports filtering by equality of all
        # breakdown dimensions.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Metrics to aggregate. **Supported metrics:** * `stuckBgWakelockRate` (`google.
        # type.Decimal`): Percentage of distinct users in the aggregation period that
        # had a wakelock held in the background for longer than 1 hour. * `
        # stuckBgWakelockRate7dUserWeighted` (`google.type.Decimal`): Rolling average
        # value of `stuckBgWakelockRate` in the last 7 days. The daily values are
        # weighted by the count of distinct users for the day. * `
        # stuckBgWakelockRate28dUserWeighted` (`google.type.Decimal`): Rolling average
        # value of `stuckBgWakelockRate` in the last 28 days. The daily values are
        # weighted by the count of distinct users for the day. * `distinctUsers` (`
        # google.type.Decimal`): Count of distinct users in the aggregation period that
        # were used as normalization value for the `stuckBgWakelockRate` metric. A user
        # is counted in this metric if they app was doing any work on the device, i.e.,
        # not just active foreground usage but also background work. Care must be taken
        # not to aggregate this count further, as it may result in users being counted
        # multiple times. The value is rounded to the nearest multiple of 10, 100, 1,000
        # or 1,000,000, depending on the magnitude of the value.
        # Corresponds to the JSON property `metrics`
        # @return [Array<String>]
        attr_accessor :metrics
      
        # Maximum size of the returned data. If unspecified, at most 1000 rows will be
        # returned. The maximum value is 100000; values above 100000 will be coerced to
        # 100000.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # A page token, received from a previous call. Provide this to retrieve the
        # subsequent page. When paginating, all other parameters provided to the request
        # must match the call that provided the page token.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Specification of the time-related aggregation parameters of a timeline.
        # Timelines have an aggregation period (`DAILY`, `HOURLY`, etc) which defines
        # how events are aggregated in metrics. The points in a timeline are defined by
        # the starting DateTime of the aggregation period. The duration is implicit in
        # the AggregationPeriod. Hourly aggregation periods, when supported by a metric
        # set, are always specified in UTC to avoid ambiguities around daylight saving
        # time transitions, where an hour is skipped when adopting DST, and repeated
        # when abandoning DST. For example, the timestamp '2021-11-07 01:00:00 America/
        # Los_Angeles' is ambiguous since it can correspond to '2021-11-07 08:00:00 UTC'
        # or '2021-11-07 09:00:00 UTC'. Daily aggregation periods require specifying a
        # timezone which will determine the precise instants of the start and the end of
        # the day. Not all metric sets support all timezones, so make sure to check
        # which timezones are supported by the metric set you want to query.
        # Corresponds to the JSON property `timelineSpec`
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1TimelineSpec]
        attr_accessor :timeline_spec
      
        # User view to select. The output data will correspond to the selected view. **
        # Supported values:** * `OS_PUBLIC` To select data from all publicly released
        # Android versions. This is the default. Supports all the above dimensions. * `
        # APP_TESTERS` To select data from users who have opted in to be testers.
        # Supports all the above dimensions. * `OS_BETA` To select data from beta
        # android versions only, excluding data from released android versions. Only the
        # following dimensions are supported: * `versionCode` (int64): version of the
        # app that was running on the user's device. * `osBuild` (string): OS build of
        # the user's device, e.g., "T1B2.220916.004".
        # Corresponds to the JSON property `userCohort`
        # @return [String]
        attr_accessor :user_cohort
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @filter = args[:filter] if args.key?(:filter)
          @metrics = args[:metrics] if args.key?(:metrics)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @timeline_spec = args[:timeline_spec] if args.key?(:timeline_spec)
          @user_cohort = args[:user_cohort] if args.key?(:user_cohort)
        end
      end
      
      # Response message for QueryStuckBackgroundWakelockRateMetricSet.
      class GooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetResponse
        include Google::Apis::Core::Hashable
      
        # Continuation token to fetch the next page of data.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Returned rows of data.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1MetricsRow>]
        attr_accessor :rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @rows = args[:rows] if args.key?(:rows)
        end
      end
      
      # A representation of an app release.
      class GooglePlayDeveloperReportingV1alpha1Release
        include Google::Apis::Core::Hashable
      
        # Readable identifier of the release.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The version codes contained in this release.
        # Corresponds to the JSON property `versionCodes`
        # @return [Array<Fixnum>]
        attr_accessor :version_codes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @version_codes = args[:version_codes] if args.key?(:version_codes)
        end
      end
      
      # A set of filtering options for releases and version codes specific to an app.
      class GooglePlayDeveloperReportingV1alpha1ReleaseFilterOptions
        include Google::Apis::Core::Hashable
      
        # List of tracks to filter releases over. Provides the grouping of version codes
        # under releases and tracks.
        # Corresponds to the JSON property `tracks`
        # @return [Array<Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1Track>]
        attr_accessor :tracks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tracks = args[:tracks] if args.key?(:tracks)
        end
      end
      
      # Response message for SearchAccessibleApps.
      class GooglePlayDeveloperReportingV1alpha1SearchAccessibleAppsResponse
        include Google::Apis::Core::Hashable
      
        # The apps accessible to the user calling the endpoint.
        # Corresponds to the JSON property `apps`
        # @return [Array<Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1App>]
        attr_accessor :apps
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apps = args[:apps] if args.key?(:apps)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response with a paginated list of issues that matched the request.
      class GooglePlayDeveloperReportingV1alpha1SearchErrorIssuesResponse
        include Google::Apis::Core::Hashable
      
        # ErrorIssues that were found.
        # Corresponds to the JSON property `errorIssues`
        # @return [Array<Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1ErrorIssue>]
        attr_accessor :error_issues
      
        # Continuation token to fetch the next page of data.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_issues = args[:error_issues] if args.key?(:error_issues)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response with a paginated list of error reports matching the search query.
      class GooglePlayDeveloperReportingV1alpha1SearchErrorReportsResponse
        include Google::Apis::Core::Hashable
      
        # Error reports that were found.
        # Corresponds to the JSON property `errorReports`
        # @return [Array<Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1ErrorReport>]
        attr_accessor :error_reports
      
        # Page token to fetch the next page of reports.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_reports = args[:error_reports] if args.key?(:error_reports)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Singleton resource representing the set of Slow Rendering metrics. This metric
      # set contains low-level rendering data captured by SurafeFlinger. Sessions are
      # evaluated based on the present-to-present histogram of frames handled by any
      # SurfaceFlinger layer owned by the app. A slow session is a session where more
      # than 25% of frames for the session did not meet the metric's target frame rate
      # (either 20fps, or 30fps). *NOTE:* This metric set is only available for games.
      # **Supported aggregation periods:** * DAILY: metrics are aggregated in calendar
      # date intervals. Due to historical constraints, the only supported timezone is `
      # America/Los_Angeles`. **Supported metrics:** * `slowRenderingRate20Fps` (`
      # google.type.Decimal`): Percentage of distinct users in the aggregation period
      # that had slow rendering. * `slowRenderingRate20Fps7dUserWeighted` (`google.
      # type.Decimal`): Rolling average value of `slowRenderingRate20Fps` in the last
      # 7 days. The daily values are weighted by the count of distinct users for the
      # day. * `slowRenderingRate20Fps28dUserWeighted` (`google.type.Decimal`):
      # Rolling average value of `slowRenderingRate20Fps` in the last 28 days. The
      # daily values are weighted by the count of distinct users for the day. * `
      # slowRenderingRate30Fps` (`google.type.Decimal`): Percentage of distinct users
      # in the aggregation period that had slow rendering. * `
      # slowRenderingRate30Fps7dUserWeighted` (`google.type.Decimal`): Rolling average
      # value of `slowRenderingRate30Fps` in the last 7 days. The daily values are
      # weighted by the count of distinct users for the day. * `
      # slowRenderingRate30Fps28dUserWeighted` (`google.type.Decimal`): Rolling
      # average value of `slowRenderingRate30Fps` in the last 28 days. The daily
      # values are weighted by the count of distinct users for the day. * `
      # distinctUsers` (`google.type.Decimal`): Count of distinct users in the
      # aggregation period that were used as normalization value for the `
      # slowRenderingRate20Fps`/`slowRenderingRate30Fps` metric. A user is counted in
      # this metric if their app rendered any frames. Care must be taken not to
      # aggregate this count further, as it may result in users being counted multiple
      # times. The value is rounded to the nearest multiple of 10, 100, 1,000 or 1,000,
      # 000, depending on the magnitude of the value. **Supported dimensions:** * `
      # apiLevel` (string): the API level of Android that was running on the user's
      # device, e.g., 26. * `versionCode` (int64): version of the app that was running
      # on the user's device. * `deviceModel` (string): unique identifier of the user'
      # s device model. The form of the identifier is 'deviceBrand/device', where
      # deviceBrand corresponds to Build.BRAND and device corresponds to Build.DEVICE,
      # e.g., google/coral. * `deviceBrand` (string): unique identifier of the user's
      # device brand, e.g., google. * `deviceType` (string): the type (also known as
      # form factor) of the user's device, e.g., PHONE. * `countryCode` (string): the
      # country or region of the user's device based on their IP address, represented
      # as a 2-letter ISO-3166 code (e.g. US for the United States). * `
      # deviceRamBucket` (int64): RAM of the device, in MB, in buckets (3GB, 4GB, etc.)
      # . * `deviceSocMake` (string): Make of the device's primary system-on-chip, e.g.
      # , Samsung. [Reference](https://developer.android.com/reference/android/os/
      # Build#SOC_MANUFACTURER) * `deviceSocModel` (string): Model of the device's
      # primary system-on-chip, e.g., "Exynos 2100". [Reference](https://developer.
      # android.com/reference/android/os/Build#SOC_MODEL) * `deviceCpuMake` (string):
      # Make of the device's CPU, e.g., Qualcomm. * `deviceCpuModel` (string): Model
      # of the device's CPU, e.g., "Kryo 240". * `deviceGpuMake` (string): Make of the
      # device's GPU, e.g., ARM. * `deviceGpuModel` (string): Model of the device's
      # GPU, e.g., Mali. * `deviceGpuVersion` (string): Version of the device's GPU, e.
      # g., T750. * `deviceVulkanVersion` (string): Vulkan version of the device, e.g.,
      # "4198400". * `deviceGlEsVersion` (string): OpenGL ES version of the device, e.
      # g., "196610". * `deviceScreenSize` (string): Screen size of the device, e.g.,
      # NORMAL, LARGE. * `deviceScreenDpi` (string): Screen density of the device, e.g.
      # , mdpi, hdpi. **Required permissions**: to access this resource, the calling
      # user needs the _View app information (read-only)_ permission for the app.
      class GooglePlayDeveloperReportingV1alpha1SlowRenderingRateMetricSet
        include Google::Apis::Core::Hashable
      
        # Represents the latest available time that can be requested in a TimelineSpec.
        # Different aggregation periods have different freshness. For example, `DAILY`
        # aggregation may lag behind `HOURLY` in cases where such aggregation is
        # computed only once at the end of the day.
        # Corresponds to the JSON property `freshnessInfo`
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1FreshnessInfo]
        attr_accessor :freshness_info
      
        # The resource name. Format: apps/`app`/slowRenderingRateMetricSet
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @freshness_info = args[:freshness_info] if args.key?(:freshness_info)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Singleton resource representing the set of Slow Start metrics. This metric set
      # contains Activity start duration data. **Supported aggregation periods:** *
      # DAILY: metrics are aggregated in calendar date intervals. Due to historical
      # constraints, the only supported timezone is `America/Los_Angeles`. **Supported
      # metrics:** * `slowStartRate` (`google.type.Decimal`): Percentage of distinct
      # users in the aggregation period that had a slow start. * `
      # slowStartRate7dUserWeighted` (`google.type.Decimal`): Rolling average value of
      # `slowStartRate` in the last 7 days. The daily values are weighted by the count
      # of distinct users for the day. * `slowStartRate28dUserWeighted` (`google.type.
      # Decimal`): Rolling average value of `slowStartRate` in the last 28 days. The
      # daily values are weighted by the count of distinct users for the day. * `
      # distinctUsers` (`google.type.Decimal`): Count of distinct users in the
      # aggregation period that were used as normalization value for the `
      # slowStartRate` metric. A user is counted in this metric if their app was
      # launched in the device. Care must be taken not to aggregate this count further,
      # as it may result in users being counted multiple times. The value is rounded
      # to the nearest multiple of 10, 100, 1,000 or 1,000,000, depending on the
      # magnitude of the value. **Required dimension:** This dimension must be
      # specified with each request for the request to be valid. * `startType` (string)
      # : the type of start that was measured. Valid types are `HOT`, `WARM` and `COLD`
      # . **Supported dimensions:** * `apiLevel` (string): the API level of Android
      # that was running on the user's device, e.g., 26. * `versionCode` (int64):
      # version of the app that was running on the user's device. * `deviceModel` (
      # string): unique identifier of the user's device model. The form of the
      # identifier is 'deviceBrand/device', where deviceBrand corresponds to Build.
      # BRAND and device corresponds to Build.DEVICE, e.g., google/coral. * `
      # deviceBrand` (string): unique identifier of the user's device brand, e.g.,
      # google. * `deviceType` (string): the type (also known as form factor) of the
      # user's device, e.g., PHONE. * `countryCode` (string): the country or region of
      # the user's device based on their IP address, represented as a 2-letter ISO-
      # 3166 code (e.g. US for the United States). * `deviceRamBucket` (int64): RAM of
      # the device, in MB, in buckets (3GB, 4GB, etc.). * `deviceSocMake` (string):
      # Make of the device's primary system-on-chip, e.g., Samsung. [Reference](https:/
      # /developer.android.com/reference/android/os/Build#SOC_MANUFACTURER) * `
      # deviceSocModel` (string): Model of the device's primary system-on-chip, e.g., "
      # Exynos 2100". [Reference](https://developer.android.com/reference/android/os/
      # Build#SOC_MODEL) * `deviceCpuMake` (string): Make of the device's CPU, e.g.,
      # Qualcomm. * `deviceCpuModel` (string): Model of the device's CPU, e.g., "Kryo
      # 240". * `deviceGpuMake` (string): Make of the device's GPU, e.g., ARM. * `
      # deviceGpuModel` (string): Model of the device's GPU, e.g., Mali. * `
      # deviceGpuVersion` (string): Version of the device's GPU, e.g., T750. * `
      # deviceVulkanVersion` (string): Vulkan version of the device, e.g., "4198400". *
      # `deviceGlEsVersion` (string): OpenGL ES version of the device, e.g., "196610".
      # * `deviceScreenSize` (string): Screen size of the device, e.g., NORMAL, LARGE.
      # * `deviceScreenDpi` (string): Screen density of the device, e.g., mdpi, hdpi.
      # **Required permissions**: to access this resource, the calling user needs the
      # _View app information (read-only)_ permission for the app.
      class GooglePlayDeveloperReportingV1alpha1SlowStartRateMetricSet
        include Google::Apis::Core::Hashable
      
        # Represents the latest available time that can be requested in a TimelineSpec.
        # Different aggregation periods have different freshness. For example, `DAILY`
        # aggregation may lag behind `HOURLY` in cases where such aggregation is
        # computed only once at the end of the day.
        # Corresponds to the JSON property `freshnessInfo`
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1FreshnessInfo]
        attr_accessor :freshness_info
      
        # The resource name. Format: apps/`app`/slowStartRateMetricSet
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @freshness_info = args[:freshness_info] if args.key?(:freshness_info)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Singleton resource representing the set of Stuck Background Wakelocks metrics.
      # This metric set contains PowerManager wakelock duration data combined with
      # process state data to produce a normalized metric independent of user counts. *
      # *Supported aggregation periods:** * DAILY: metrics are aggregated in calendar
      # date intervals. Due to historical constraints, the only supported timezone is `
      # America/Los_Angeles`. **Supported metrics:** * `stuckBgWakelockRate` (`google.
      # type.Decimal`): Percentage of distinct users in the aggregation period that
      # had a wakelock held in the background for longer than 1 hour. * `
      # stuckBgWakelockRate7dUserWeighted` (`google.type.Decimal`): Rolling average
      # value of `stuckBgWakelockRate` in the last 7 days. The daily values are
      # weighted by the count of distinct users for the day. * `
      # stuckBgWakelockRate28dUserWeighted` (`google.type.Decimal`): Rolling average
      # value of `stuckBgWakelockRate` in the last 28 days. The daily values are
      # weighted by the count of distinct users for the day. * `distinctUsers` (`
      # google.type.Decimal`): Count of distinct users in the aggregation period that
      # were used as normalization value for the `stuckBgWakelockRate` metric. A user
      # is counted in this metric if their app was doing any work on the device, i.e.,
      # not just active foreground usage but also background work. Care must be taken
      # not to aggregate this count further, as it may result in users being counted
      # multiple times. The value is rounded to the nearest multiple of 10, 100, 1,000
      # or 1,000,000, depending on the magnitude of the value. **Supported dimensions:*
      # * * `apiLevel` (string): the API level of Android that was running on the user'
      # s device, e.g., 26. * `versionCode` (int64): version of the app that was
      # running on the user's device. * `deviceModel` (string): unique identifier of
      # the user's device model. The form of the identifier is 'deviceBrand/device',
      # where deviceBrand corresponds to Build.BRAND and device corresponds to Build.
      # DEVICE, e.g., google/coral. * `deviceBrand` (string): unique identifier of the
      # user's device brand, e.g., google. * `deviceType` (string): the type (also
      # known as form factor) of the user's device, e.g., PHONE. * `countryCode` (
      # string): the country or region of the user's device based on their IP address,
      # represented as a 2-letter ISO-3166 code (e.g. US for the United States). * `
      # deviceRamBucket` (int64): RAM of the device, in MB, in buckets (3GB, 4GB, etc.)
      # . * `deviceSocMake` (string): Make of the device's primary system-on-chip, e.g.
      # , Samsung. [Reference](https://developer.android.com/reference/android/os/
      # Build#SOC_MANUFACTURER) * `deviceSocModel` (string): Model of the device's
      # primary system-on-chip, e.g., "Exynos 2100". [Reference](https://developer.
      # android.com/reference/android/os/Build#SOC_MODEL) * `deviceCpuMake` (string):
      # Make of the device's CPU, e.g., Qualcomm. * `deviceCpuModel` (string): Model
      # of the device's CPU, e.g., "Kryo 240". * `deviceGpuMake` (string): Make of the
      # device's GPU, e.g., ARM. * `deviceGpuModel` (string): Model of the device's
      # GPU, e.g., Mali. * `deviceGpuVersion` (string): Version of the device's GPU, e.
      # g., T750. * `deviceVulkanVersion` (string): Vulkan version of the device, e.g.,
      # "4198400". * `deviceGlEsVersion` (string): OpenGL ES version of the device, e.
      # g., "196610". * `deviceScreenSize` (string): Screen size of the device, e.g.,
      # NORMAL, LARGE. * `deviceScreenDpi` (string): Screen density of the device, e.g.
      # , mdpi, hdpi. **Required permissions**: to access this resource, the calling
      # user needs the _View app information (read-only)_ permission for the app.
      class GooglePlayDeveloperReportingV1alpha1StuckBackgroundWakelockRateMetricSet
        include Google::Apis::Core::Hashable
      
        # Represents the latest available time that can be requested in a TimelineSpec.
        # Different aggregation periods have different freshness. For example, `DAILY`
        # aggregation may lag behind `HOURLY` in cases where such aggregation is
        # computed only once at the end of the day.
        # Corresponds to the JSON property `freshnessInfo`
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1FreshnessInfo]
        attr_accessor :freshness_info
      
        # The resource name. Format: apps/`app`/stuckBackgroundWakelockRateMetricSet
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @freshness_info = args[:freshness_info] if args.key?(:freshness_info)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Specification of the time-related aggregation parameters of a timeline.
      # Timelines have an aggregation period (`DAILY`, `HOURLY`, etc) which defines
      # how events are aggregated in metrics. The points in a timeline are defined by
      # the starting DateTime of the aggregation period. The duration is implicit in
      # the AggregationPeriod. Hourly aggregation periods, when supported by a metric
      # set, are always specified in UTC to avoid ambiguities around daylight saving
      # time transitions, where an hour is skipped when adopting DST, and repeated
      # when abandoning DST. For example, the timestamp '2021-11-07 01:00:00 America/
      # Los_Angeles' is ambiguous since it can correspond to '2021-11-07 08:00:00 UTC'
      # or '2021-11-07 09:00:00 UTC'. Daily aggregation periods require specifying a
      # timezone which will determine the precise instants of the start and the end of
      # the day. Not all metric sets support all timezones, so make sure to check
      # which timezones are supported by the metric set you want to query.
      class GooglePlayDeveloperReportingV1alpha1TimelineSpec
        include Google::Apis::Core::Hashable
      
        # Type of the aggregation period of the datapoints in the timeline. Intervals
        # are identified by the date and time at the start of the interval.
        # Corresponds to the JSON property `aggregationPeriod`
        # @return [String]
        attr_accessor :aggregation_period
      
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
        # Corresponds to the JSON property `endTime`
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GoogleTypeDateTime]
        attr_accessor :end_time
      
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
        # Corresponds to the JSON property `startTime`
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GoogleTypeDateTime]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregation_period = args[:aggregation_period] if args.key?(:aggregation_period)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # A representation of a Play release track.
      class GooglePlayDeveloperReportingV1alpha1Track
        include Google::Apis::Core::Hashable
      
        # Readable identifier of the track.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Represents all active releases in the track.
        # Corresponds to the JSON property `servingReleases`
        # @return [Array<Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1Release>]
        attr_accessor :serving_releases
      
        # The type of the track.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @serving_releases = args[:serving_releases] if args.key?(:serving_releases)
          @type = args[:type] if args.key?(:type)
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
      class GoogleTypeDateTime
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
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GoogleTypeTimeZone]
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
      
      # A representation of a decimal value, such as 2.5. Clients may convert values
      # into language-native decimal formats, such as Java's BigDecimal or Python's
      # decimal.Decimal. [BigDecimal]: https://docs.oracle.com/en/java/javase/11/docs/
      # api/java.base/java/math/BigDecimal.html [decimal.Decimal]: https://docs.python.
      # org/3/library/decimal.html
      class GoogleTypeDecimal
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
      
      # Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/
      # time-zones).
      class GoogleTypeTimeZone
        include Google::Apis::Core::Hashable
      
        # IANA Time Zone Database time zone, e.g. "America/New_York".
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. IANA Time Zone Database version number, e.g. "2019a".
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
    end
  end
end
