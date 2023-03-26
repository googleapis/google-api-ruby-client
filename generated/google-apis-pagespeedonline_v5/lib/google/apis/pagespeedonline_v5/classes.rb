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
    module PagespeedonlineV5
      
      # A light reference to an audit by id, used to group and weight audits in a
      # given category.
      class AuditRefs
        include Google::Apis::Core::Hashable
      
        # The conventional acronym for the audit/metric.
        # Corresponds to the JSON property `acronym`
        # @return [String]
        attr_accessor :acronym
      
        # The category group that the audit belongs to (optional).
        # Corresponds to the JSON property `group`
        # @return [String]
        attr_accessor :group
      
        # The audit ref id.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Any audit IDs closely relevant to this one.
        # Corresponds to the JSON property `relevantAudits`
        # @return [Array<String>]
        attr_accessor :relevant_audits
      
        # The weight this audit's score has on the overall category score.
        # Corresponds to the JSON property `weight`
        # @return [Float]
        attr_accessor :weight
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @acronym = args[:acronym] if args.key?(:acronym)
          @group = args[:group] if args.key?(:group)
          @id = args[:id] if args.key?(:id)
          @relevant_audits = args[:relevant_audits] if args.key?(:relevant_audits)
          @weight = args[:weight] if args.key?(:weight)
        end
      end
      
      # A proportion of data in the total distribution, bucketed by a min/max
      # percentage. Each bucket's range is bounded by min <= x < max, In millisecond.
      class Bucket
        include Google::Apis::Core::Hashable
      
        # Upper bound for a bucket's range.
        # Corresponds to the JSON property `max`
        # @return [Fixnum]
        attr_accessor :max
      
        # Lower bound for a bucket's range.
        # Corresponds to the JSON property `min`
        # @return [Fixnum]
        attr_accessor :min
      
        # The proportion of data in this bucket.
        # Corresponds to the JSON property `proportion`
        # @return [Float]
        attr_accessor :proportion
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max = args[:max] if args.key?(:max)
          @min = args[:min] if args.key?(:min)
          @proportion = args[:proportion] if args.key?(:proportion)
        end
      end
      
      # The categories in a Lighthouse run.
      class Categories
        include Google::Apis::Core::Hashable
      
        # A Lighthouse category.
        # Corresponds to the JSON property `accessibility`
        # @return [Google::Apis::PagespeedonlineV5::LighthouseCategoryV5]
        attr_accessor :accessibility
      
        # A Lighthouse category.
        # Corresponds to the JSON property `best-practices`
        # @return [Google::Apis::PagespeedonlineV5::LighthouseCategoryV5]
        attr_accessor :best_practices
      
        # A Lighthouse category.
        # Corresponds to the JSON property `performance`
        # @return [Google::Apis::PagespeedonlineV5::LighthouseCategoryV5]
        attr_accessor :performance
      
        # A Lighthouse category.
        # Corresponds to the JSON property `pwa`
        # @return [Google::Apis::PagespeedonlineV5::LighthouseCategoryV5]
        attr_accessor :pwa
      
        # A Lighthouse category.
        # Corresponds to the JSON property `seo`
        # @return [Google::Apis::PagespeedonlineV5::LighthouseCategoryV5]
        attr_accessor :seo
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accessibility = args[:accessibility] if args.key?(:accessibility)
          @best_practices = args[:best_practices] if args.key?(:best_practices)
          @performance = args[:performance] if args.key?(:performance)
          @pwa = args[:pwa] if args.key?(:pwa)
          @seo = args[:seo] if args.key?(:seo)
        end
      end
      
      # Message containing a category
      class CategoryGroupV5
        include Google::Apis::Core::Hashable
      
        # The description of what the category is grouping
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The human readable title of the group
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Message containing the configuration settings for the Lighthouse run.
      class ConfigSettings
        include Google::Apis::Core::Hashable
      
        # How Lighthouse was run, e.g. from the Chrome extension or from the npm module.
        # Corresponds to the JSON property `channel`
        # @return [String]
        attr_accessor :channel
      
        # The form factor the emulation should use. This field is deprecated,
        # form_factor should be used instead.
        # Corresponds to the JSON property `emulatedFormFactor`
        # @return [String]
        attr_accessor :emulated_form_factor
      
        # How Lighthouse should interpret this run in regards to scoring performance
        # metrics and skipping mobile-only tests in desktop.
        # Corresponds to the JSON property `formFactor`
        # @return [String]
        attr_accessor :form_factor
      
        # The locale setting.
        # Corresponds to the JSON property `locale`
        # @return [String]
        attr_accessor :locale
      
        # List of categories of audits the run should conduct.
        # Corresponds to the JSON property `onlyCategories`
        # @return [Object]
        attr_accessor :only_categories
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel = args[:channel] if args.key?(:channel)
          @emulated_form_factor = args[:emulated_form_factor] if args.key?(:emulated_form_factor)
          @form_factor = args[:form_factor] if args.key?(:form_factor)
          @locale = args[:locale] if args.key?(:locale)
          @only_categories = args[:only_categories] if args.key?(:only_categories)
        end
      end
      
      # Message containing environment configuration for a Lighthouse run.
      class Environment
        include Google::Apis::Core::Hashable
      
        # The benchmark index number that indicates rough device class.
        # Corresponds to the JSON property `benchmarkIndex`
        # @return [Float]
        attr_accessor :benchmark_index
      
        # The version of libraries with which these results were generated. Ex: axe-core.
        # Corresponds to the JSON property `credits`
        # @return [Hash<String,String>]
        attr_accessor :credits
      
        # The user agent string of the version of Chrome used.
        # Corresponds to the JSON property `hostUserAgent`
        # @return [String]
        attr_accessor :host_user_agent
      
        # The user agent string that was sent over the network.
        # Corresponds to the JSON property `networkUserAgent`
        # @return [String]
        attr_accessor :network_user_agent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @benchmark_index = args[:benchmark_index] if args.key?(:benchmark_index)
          @credits = args[:credits] if args.key?(:credits)
          @host_user_agent = args[:host_user_agent] if args.key?(:host_user_agent)
          @network_user_agent = args[:network_user_agent] if args.key?(:network_user_agent)
        end
      end
      
      # Message containing the i18n data for the LHR - Version 1.
      class I18n
        include Google::Apis::Core::Hashable
      
        # Message holding the formatted strings used in the renderer.
        # Corresponds to the JSON property `rendererFormattedStrings`
        # @return [Google::Apis::PagespeedonlineV5::RendererFormattedStrings]
        attr_accessor :renderer_formatted_strings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @renderer_formatted_strings = args[:renderer_formatted_strings] if args.key?(:renderer_formatted_strings)
        end
      end
      
      # Message containing an Entity.
      class LhrEntity
        include Google::Apis::Core::Hashable
      
        # Optional. An optional category name for the entity.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # Optional. An optional homepage URL of the entity.
        # Corresponds to the JSON property `homepage`
        # @return [String]
        attr_accessor :homepage
      
        # Optional. An optional flag indicating if the entity is the first party.
        # Corresponds to the JSON property `isFirstParty`
        # @return [Boolean]
        attr_accessor :is_first_party
        alias_method :is_first_party?, :is_first_party
      
        # Optional. An optional flag indicating if the entity is not recognized.
        # Corresponds to the JSON property `isUnrecognized`
        # @return [Boolean]
        attr_accessor :is_unrecognized
        alias_method :is_unrecognized?, :is_unrecognized
      
        # Required. Name of the entity.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. A list of URL origin strings that belong to this entity.
        # Corresponds to the JSON property `origins`
        # @return [Array<String>]
        attr_accessor :origins
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
          @homepage = args[:homepage] if args.key?(:homepage)
          @is_first_party = args[:is_first_party] if args.key?(:is_first_party)
          @is_unrecognized = args[:is_unrecognized] if args.key?(:is_unrecognized)
          @name = args[:name] if args.key?(:name)
          @origins = args[:origins] if args.key?(:origins)
        end
      end
      
      # An audit's result object in a Lighthouse result.
      class LighthouseAuditResultV5
        include Google::Apis::Core::Hashable
      
        # The description of the audit.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Freeform details section of the audit.
        # Corresponds to the JSON property `details`
        # @return [Hash<String,Object>]
        attr_accessor :details
      
        # The value that should be displayed on the UI for this audit.
        # Corresponds to the JSON property `displayValue`
        # @return [String]
        attr_accessor :display_value
      
        # An error message from a thrown error inside the audit.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # An explanation of the errors in the audit.
        # Corresponds to the JSON property `explanation`
        # @return [String]
        attr_accessor :explanation
      
        # The audit's id.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The unit of the numeric_value field. Used to format the numeric value for
        # display.
        # Corresponds to the JSON property `numericUnit`
        # @return [String]
        attr_accessor :numeric_unit
      
        # A numeric value that has a meaning specific to the audit, e.g. the number of
        # nodes in the DOM or the timestamp of a specific load event. More information
        # can be found in the audit details, if present.
        # Corresponds to the JSON property `numericValue`
        # @return [Float]
        attr_accessor :numeric_value
      
        # The score of the audit, can be null.
        # Corresponds to the JSON property `score`
        # @return [Object]
        attr_accessor :score
      
        # The enumerated score display mode.
        # Corresponds to the JSON property `scoreDisplayMode`
        # @return [String]
        attr_accessor :score_display_mode
      
        # The human readable title.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Possible warnings that occurred in the audit, can be null.
        # Corresponds to the JSON property `warnings`
        # @return [Object]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @details = args[:details] if args.key?(:details)
          @display_value = args[:display_value] if args.key?(:display_value)
          @error_message = args[:error_message] if args.key?(:error_message)
          @explanation = args[:explanation] if args.key?(:explanation)
          @id = args[:id] if args.key?(:id)
          @numeric_unit = args[:numeric_unit] if args.key?(:numeric_unit)
          @numeric_value = args[:numeric_value] if args.key?(:numeric_value)
          @score = args[:score] if args.key?(:score)
          @score_display_mode = args[:score_display_mode] if args.key?(:score_display_mode)
          @title = args[:title] if args.key?(:title)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
      end
      
      # A Lighthouse category.
      class LighthouseCategoryV5
        include Google::Apis::Core::Hashable
      
        # An array of references to all the audit members of this category.
        # Corresponds to the JSON property `auditRefs`
        # @return [Array<Google::Apis::PagespeedonlineV5::AuditRefs>]
        attr_accessor :audit_refs
      
        # A more detailed description of the category and its importance.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The string identifier of the category.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A description for the manual audits in the category.
        # Corresponds to the JSON property `manualDescription`
        # @return [String]
        attr_accessor :manual_description
      
        # The overall score of the category, the weighted average of all its audits. (
        # The category's score, can be null.)
        # Corresponds to the JSON property `score`
        # @return [Object]
        attr_accessor :score
      
        # The human-friendly name of the category.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_refs = args[:audit_refs] if args.key?(:audit_refs)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @manual_description = args[:manual_description] if args.key?(:manual_description)
          @score = args[:score] if args.key?(:score)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # The Lighthouse result object.
      class LighthouseResultV5
        include Google::Apis::Core::Hashable
      
        # Map of audits in the LHR.
        # Corresponds to the JSON property `audits`
        # @return [Hash<String,Google::Apis::PagespeedonlineV5::LighthouseAuditResultV5>]
        attr_accessor :audits
      
        # The categories in a Lighthouse run.
        # Corresponds to the JSON property `categories`
        # @return [Google::Apis::PagespeedonlineV5::Categories]
        attr_accessor :categories
      
        # Map of category groups in the LHR.
        # Corresponds to the JSON property `categoryGroups`
        # @return [Hash<String,Google::Apis::PagespeedonlineV5::CategoryGroupV5>]
        attr_accessor :category_groups
      
        # Message containing the configuration settings for the Lighthouse run.
        # Corresponds to the JSON property `configSettings`
        # @return [Google::Apis::PagespeedonlineV5::ConfigSettings]
        attr_accessor :config_settings
      
        # Entity classification data.
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::PagespeedonlineV5::LhrEntity>]
        attr_accessor :entities
      
        # Message containing environment configuration for a Lighthouse run.
        # Corresponds to the JSON property `environment`
        # @return [Google::Apis::PagespeedonlineV5::Environment]
        attr_accessor :environment
      
        # The time that this run was fetched.
        # Corresponds to the JSON property `fetchTime`
        # @return [String]
        attr_accessor :fetch_time
      
        # URL displayed on the page after Lighthouse finishes.
        # Corresponds to the JSON property `finalDisplayedUrl`
        # @return [String]
        attr_accessor :final_displayed_url
      
        # The final resolved url that was audited.
        # Corresponds to the JSON property `finalUrl`
        # @return [String]
        attr_accessor :final_url
      
        # Screenshot data of the full page, along with node rects relevant to the audit
        # results.
        # Corresponds to the JSON property `fullPageScreenshot`
        # @return [Object]
        attr_accessor :full_page_screenshot
      
        # Message containing the i18n data for the LHR - Version 1.
        # Corresponds to the JSON property `i18n`
        # @return [Google::Apis::PagespeedonlineV5::I18n]
        attr_accessor :i18n
      
        # The lighthouse version that was used to generate this LHR.
        # Corresponds to the JSON property `lighthouseVersion`
        # @return [String]
        attr_accessor :lighthouse_version
      
        # URL of the main document request of the final navigation.
        # Corresponds to the JSON property `mainDocumentUrl`
        # @return [String]
        attr_accessor :main_document_url
      
        # The original requested url.
        # Corresponds to the JSON property `requestedUrl`
        # @return [String]
        attr_accessor :requested_url
      
        # List of all run warnings in the LHR. Will always output to at least `[]`.
        # Corresponds to the JSON property `runWarnings`
        # @return [Array<Object>]
        attr_accessor :run_warnings
      
        # Message containing a runtime error config.
        # Corresponds to the JSON property `runtimeError`
        # @return [Google::Apis::PagespeedonlineV5::RuntimeError]
        attr_accessor :runtime_error
      
        # The Stack Pack advice strings.
        # Corresponds to the JSON property `stackPacks`
        # @return [Array<Google::Apis::PagespeedonlineV5::StackPack>]
        attr_accessor :stack_packs
      
        # Message containing the performance timing data for the Lighthouse run.
        # Corresponds to the JSON property `timing`
        # @return [Google::Apis::PagespeedonlineV5::Timing]
        attr_accessor :timing
      
        # The user agent that was used to run this LHR.
        # Corresponds to the JSON property `userAgent`
        # @return [String]
        attr_accessor :user_agent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audits = args[:audits] if args.key?(:audits)
          @categories = args[:categories] if args.key?(:categories)
          @category_groups = args[:category_groups] if args.key?(:category_groups)
          @config_settings = args[:config_settings] if args.key?(:config_settings)
          @entities = args[:entities] if args.key?(:entities)
          @environment = args[:environment] if args.key?(:environment)
          @fetch_time = args[:fetch_time] if args.key?(:fetch_time)
          @final_displayed_url = args[:final_displayed_url] if args.key?(:final_displayed_url)
          @final_url = args[:final_url] if args.key?(:final_url)
          @full_page_screenshot = args[:full_page_screenshot] if args.key?(:full_page_screenshot)
          @i18n = args[:i18n] if args.key?(:i18n)
          @lighthouse_version = args[:lighthouse_version] if args.key?(:lighthouse_version)
          @main_document_url = args[:main_document_url] if args.key?(:main_document_url)
          @requested_url = args[:requested_url] if args.key?(:requested_url)
          @run_warnings = args[:run_warnings] if args.key?(:run_warnings)
          @runtime_error = args[:runtime_error] if args.key?(:runtime_error)
          @stack_packs = args[:stack_packs] if args.key?(:stack_packs)
          @timing = args[:timing] if args.key?(:timing)
          @user_agent = args[:user_agent] if args.key?(:user_agent)
        end
      end
      
      # The CrUX loading experience object that contains CrUX data breakdowns.
      class PagespeedApiLoadingExperienceV5
        include Google::Apis::Core::Hashable
      
        # The url, pattern or origin which the metrics are on.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The requested URL, which may differ from the resolved "id".
        # Corresponds to the JSON property `initial_url`
        # @return [String]
        attr_accessor :initial_url
      
        # The map of .
        # Corresponds to the JSON property `metrics`
        # @return [Hash<String,Google::Apis::PagespeedonlineV5::UserPageLoadMetricV5>]
        attr_accessor :metrics
      
        # True if the result is an origin fallback from a page, false otherwise.
        # Corresponds to the JSON property `origin_fallback`
        # @return [Boolean]
        attr_accessor :origin_fallback
        alias_method :origin_fallback?, :origin_fallback
      
        # The human readable speed "category" of the id.
        # Corresponds to the JSON property `overall_category`
        # @return [String]
        attr_accessor :overall_category
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @initial_url = args[:initial_url] if args.key?(:initial_url)
          @metrics = args[:metrics] if args.key?(:metrics)
          @origin_fallback = args[:origin_fallback] if args.key?(:origin_fallback)
          @overall_category = args[:overall_category] if args.key?(:overall_category)
        end
      end
      
      # The Pagespeed API response object.
      class PagespeedApiPagespeedResponseV5
        include Google::Apis::Core::Hashable
      
        # The UTC timestamp of this analysis.
        # Corresponds to the JSON property `analysisUTCTimestamp`
        # @return [String]
        attr_accessor :analysis_utc_timestamp
      
        # The captcha verify result
        # Corresponds to the JSON property `captchaResult`
        # @return [String]
        attr_accessor :captcha_result
      
        # Canonicalized and final URL for the document, after following page redirects (
        # if any).
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Kind of result.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The Lighthouse result object.
        # Corresponds to the JSON property `lighthouseResult`
        # @return [Google::Apis::PagespeedonlineV5::LighthouseResultV5]
        attr_accessor :lighthouse_result
      
        # The CrUX loading experience object that contains CrUX data breakdowns.
        # Corresponds to the JSON property `loadingExperience`
        # @return [Google::Apis::PagespeedonlineV5::PagespeedApiLoadingExperienceV5]
        attr_accessor :loading_experience
      
        # The CrUX loading experience object that contains CrUX data breakdowns.
        # Corresponds to the JSON property `originLoadingExperience`
        # @return [Google::Apis::PagespeedonlineV5::PagespeedApiLoadingExperienceV5]
        attr_accessor :origin_loading_experience
      
        # The Pagespeed Version object.
        # Corresponds to the JSON property `version`
        # @return [Google::Apis::PagespeedonlineV5::PagespeedVersion]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analysis_utc_timestamp = args[:analysis_utc_timestamp] if args.key?(:analysis_utc_timestamp)
          @captcha_result = args[:captcha_result] if args.key?(:captcha_result)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @lighthouse_result = args[:lighthouse_result] if args.key?(:lighthouse_result)
          @loading_experience = args[:loading_experience] if args.key?(:loading_experience)
          @origin_loading_experience = args[:origin_loading_experience] if args.key?(:origin_loading_experience)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # The Pagespeed Version object.
      class PagespeedVersion
        include Google::Apis::Core::Hashable
      
        # The major version number of PageSpeed used to generate these results.
        # Corresponds to the JSON property `major`
        # @return [String]
        attr_accessor :major
      
        # The minor version number of PageSpeed used to generate these results.
        # Corresponds to the JSON property `minor`
        # @return [String]
        attr_accessor :minor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @major = args[:major] if args.key?(:major)
          @minor = args[:minor] if args.key?(:minor)
        end
      end
      
      # Message holding the formatted strings used in the renderer.
      class RendererFormattedStrings
        include Google::Apis::Core::Hashable
      
        # The tooltip text on an expandable chevron icon.
        # Corresponds to the JSON property `auditGroupExpandTooltip`
        # @return [String]
        attr_accessor :audit_group_expand_tooltip
      
        # Text link pointing to the Lighthouse scoring calculator. This link immediately
        # follows a sentence stating the performance score is calculated from the perf
        # metrics.
        # Corresponds to the JSON property `calculatorLink`
        # @return [String]
        attr_accessor :calculator_link
      
        # The label for the initial request in a critical request chain.
        # Corresponds to the JSON property `crcInitialNavigation`
        # @return [String]
        attr_accessor :crc_initial_navigation
      
        # The label for values shown in the summary of critical request chains.
        # Corresponds to the JSON property `crcLongestDurationLabel`
        # @return [String]
        attr_accessor :crc_longest_duration_label
      
        # Option in a dropdown menu that copies the Lighthouse JSON object to the system
        # clipboard.
        # Corresponds to the JSON property `dropdownCopyJSON`
        # @return [String]
        attr_accessor :dropdown_copy_json
      
        # Option in a dropdown menu that toggles the themeing of the report between
        # Light(default) and Dark themes.
        # Corresponds to the JSON property `dropdownDarkTheme`
        # @return [String]
        attr_accessor :dropdown_dark_theme
      
        # Option in a dropdown menu that opens a full Lighthouse report in a print
        # dialog.
        # Corresponds to the JSON property `dropdownPrintExpanded`
        # @return [String]
        attr_accessor :dropdown_print_expanded
      
        # Option in a dropdown menu that opens a small, summary report in a print dialog.
        # Corresponds to the JSON property `dropdownPrintSummary`
        # @return [String]
        attr_accessor :dropdown_print_summary
      
        # Option in a dropdown menu that saves the current report as a new GitHub Gist.
        # Corresponds to the JSON property `dropdownSaveGist`
        # @return [String]
        attr_accessor :dropdown_save_gist
      
        # Option in a dropdown menu that saves the Lighthouse report HTML locally to the
        # system as a '.html' file.
        # Corresponds to the JSON property `dropdownSaveHTML`
        # @return [String]
        attr_accessor :dropdown_save_html
      
        # Option in a dropdown menu that saves the Lighthouse JSON object to the local
        # system as a '.json' file.
        # Corresponds to the JSON property `dropdownSaveJSON`
        # @return [String]
        attr_accessor :dropdown_save_json
      
        # Option in a dropdown menu that opens the current report in the Lighthouse
        # Viewer Application.
        # Corresponds to the JSON property `dropdownViewer`
        # @return [String]
        attr_accessor :dropdown_viewer
      
        # The label shown next to an audit or metric that has had an error.
        # Corresponds to the JSON property `errorLabel`
        # @return [String]
        attr_accessor :error_label
      
        # The error string shown next to an erroring audit.
        # Corresponds to the JSON property `errorMissingAuditInfo`
        # @return [String]
        attr_accessor :error_missing_audit_info
      
        # Label for button to create an issue against the Lighthouse GitHub project.
        # Corresponds to the JSON property `footerIssue`
        # @return [String]
        attr_accessor :footer_issue
      
        # The title of the lab data performance category.
        # Corresponds to the JSON property `labDataTitle`
        # @return [String]
        attr_accessor :lab_data_title
      
        # The disclaimer shown under performance explaining that the network can vary.
        # Corresponds to the JSON property `lsPerformanceCategoryDescription`
        # @return [String]
        attr_accessor :ls_performance_category_description
      
        # The heading shown above a list of audits that were not computerd in the run.
        # Corresponds to the JSON property `manualAuditsGroupTitle`
        # @return [String]
        attr_accessor :manual_audits_group_title
      
        # The heading shown above a list of audits that do not apply to a page.
        # Corresponds to the JSON property `notApplicableAuditsGroupTitle`
        # @return [String]
        attr_accessor :not_applicable_audits_group_title
      
        # The heading for the estimated page load savings opportunity of an audit.
        # Corresponds to the JSON property `opportunityResourceColumnLabel`
        # @return [String]
        attr_accessor :opportunity_resource_column_label
      
        # The heading for the estimated page load savings of opportunity audits.
        # Corresponds to the JSON property `opportunitySavingsColumnLabel`
        # @return [String]
        attr_accessor :opportunity_savings_column_label
      
        # The heading that is shown above a list of audits that are passing.
        # Corresponds to the JSON property `passedAuditsGroupTitle`
        # @return [String]
        attr_accessor :passed_audits_group_title
      
        # Descriptive explanation for emulation setting when emulating a generic desktop
        # form factor, as opposed to a mobile-device like form factor.
        # Corresponds to the JSON property `runtimeDesktopEmulation`
        # @return [String]
        attr_accessor :runtime_desktop_emulation
      
        # Descriptive explanation for emulation setting when emulating a Nexus 5X mobile
        # device.
        # Corresponds to the JSON property `runtimeMobileEmulation`
        # @return [String]
        attr_accessor :runtime_mobile_emulation
      
        # Descriptive explanation for emulation setting when no device emulation is set.
        # Corresponds to the JSON property `runtimeNoEmulation`
        # @return [String]
        attr_accessor :runtime_no_emulation
      
        # Label for a row in a table that shows the version of the Axe library used
        # Corresponds to the JSON property `runtimeSettingsAxeVersion`
        # @return [String]
        attr_accessor :runtime_settings_axe_version
      
        # Label for a row in a table that shows the estimated CPU power of the machine
        # running Lighthouse. Example row values: 532, 1492, 783.
        # Corresponds to the JSON property `runtimeSettingsBenchmark`
        # @return [String]
        attr_accessor :runtime_settings_benchmark
      
        # Label for a row in a table that describes the CPU throttling conditions that
        # were used during a Lighthouse run, if any.
        # Corresponds to the JSON property `runtimeSettingsCPUThrottling`
        # @return [String]
        attr_accessor :runtime_settings_cpu_throttling
      
        # Label for a row in a table that shows in what tool Lighthouse is being run (e.
        # g. The lighthouse CLI, Chrome DevTools, Lightrider, WebPageTest, etc).
        # Corresponds to the JSON property `runtimeSettingsChannel`
        # @return [String]
        attr_accessor :runtime_settings_channel
      
        # Label for a row in a table that describes the kind of device that was emulated
        # for the Lighthouse run. Example values for row elements: 'No Emulation', '
        # Emulated Desktop', etc.
        # Corresponds to the JSON property `runtimeSettingsDevice`
        # @return [String]
        attr_accessor :runtime_settings_device
      
        # Label for a row in a table that shows the time at which a Lighthouse run was
        # conducted; formatted as a timestamp, e.g. Jan 1, 1970 12:00 AM UTC.
        # Corresponds to the JSON property `runtimeSettingsFetchTime`
        # @return [String]
        attr_accessor :runtime_settings_fetch_time
      
        # Label for a row in a table that describes the network throttling conditions
        # that were used during a Lighthouse run, if any.
        # Corresponds to the JSON property `runtimeSettingsNetworkThrottling`
        # @return [String]
        attr_accessor :runtime_settings_network_throttling
      
        # Title of the Runtime settings table in a Lighthouse report. Runtime settings
        # are the environment configurations that a specific report used at auditing
        # time.
        # Corresponds to the JSON property `runtimeSettingsTitle`
        # @return [String]
        attr_accessor :runtime_settings_title
      
        # Label for a row in a table that shows the User Agent that was detected on the
        # Host machine that ran Lighthouse.
        # Corresponds to the JSON property `runtimeSettingsUA`
        # @return [String]
        attr_accessor :runtime_settings_ua
      
        # Label for a row in a table that shows the User Agent that was used to send out
        # all network requests during the Lighthouse run.
        # Corresponds to the JSON property `runtimeSettingsUANetwork`
        # @return [String]
        attr_accessor :runtime_settings_ua_network
      
        # Label for a row in a table that shows the URL that was audited during a
        # Lighthouse run.
        # Corresponds to the JSON property `runtimeSettingsUrl`
        # @return [String]
        attr_accessor :runtime_settings_url
      
        # Descriptive explanation for a runtime setting that is set to an unknown value.
        # Corresponds to the JSON property `runtimeUnknown`
        # @return [String]
        attr_accessor :runtime_unknown
      
        # The label that explains the score gauges scale (0-49, 50-89, 90-100).
        # Corresponds to the JSON property `scorescaleLabel`
        # @return [String]
        attr_accessor :scorescale_label
      
        # Label preceding a radio control for filtering the list of audits. The radio
        # choices are various performance metrics (FCP, LCP, TBT), and if chosen, the
        # audits in the report are hidden if they are not relevant to the selected
        # metric.
        # Corresponds to the JSON property `showRelevantAudits`
        # @return [String]
        attr_accessor :show_relevant_audits
      
        # The label for the button to show only a few lines of a snippet
        # Corresponds to the JSON property `snippetCollapseButtonLabel`
        # @return [String]
        attr_accessor :snippet_collapse_button_label
      
        # The label for the button to show all lines of a snippet
        # Corresponds to the JSON property `snippetExpandButtonLabel`
        # @return [String]
        attr_accessor :snippet_expand_button_label
      
        # This label is for a filter checkbox above a table of items
        # Corresponds to the JSON property `thirdPartyResourcesLabel`
        # @return [String]
        attr_accessor :third_party_resources_label
      
        # Descriptive explanation for environment throttling that was provided by the
        # runtime environment instead of provided by Lighthouse throttling.
        # Corresponds to the JSON property `throttlingProvided`
        # @return [String]
        attr_accessor :throttling_provided
      
        # The label shown preceding important warnings that may have invalidated an
        # entire report.
        # Corresponds to the JSON property `toplevelWarningsMessage`
        # @return [String]
        attr_accessor :toplevel_warnings_message
      
        # The disclaimer shown below a performance metric value.
        # Corresponds to the JSON property `varianceDisclaimer`
        # @return [String]
        attr_accessor :variance_disclaimer
      
        # Label for a button that opens the Treemap App
        # Corresponds to the JSON property `viewTreemapLabel`
        # @return [String]
        attr_accessor :view_treemap_label
      
        # The heading that is shown above a list of audits that have warnings
        # Corresponds to the JSON property `warningAuditsGroupTitle`
        # @return [String]
        attr_accessor :warning_audits_group_title
      
        # The label shown above a bulleted list of warnings.
        # Corresponds to the JSON property `warningHeader`
        # @return [String]
        attr_accessor :warning_header
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_group_expand_tooltip = args[:audit_group_expand_tooltip] if args.key?(:audit_group_expand_tooltip)
          @calculator_link = args[:calculator_link] if args.key?(:calculator_link)
          @crc_initial_navigation = args[:crc_initial_navigation] if args.key?(:crc_initial_navigation)
          @crc_longest_duration_label = args[:crc_longest_duration_label] if args.key?(:crc_longest_duration_label)
          @dropdown_copy_json = args[:dropdown_copy_json] if args.key?(:dropdown_copy_json)
          @dropdown_dark_theme = args[:dropdown_dark_theme] if args.key?(:dropdown_dark_theme)
          @dropdown_print_expanded = args[:dropdown_print_expanded] if args.key?(:dropdown_print_expanded)
          @dropdown_print_summary = args[:dropdown_print_summary] if args.key?(:dropdown_print_summary)
          @dropdown_save_gist = args[:dropdown_save_gist] if args.key?(:dropdown_save_gist)
          @dropdown_save_html = args[:dropdown_save_html] if args.key?(:dropdown_save_html)
          @dropdown_save_json = args[:dropdown_save_json] if args.key?(:dropdown_save_json)
          @dropdown_viewer = args[:dropdown_viewer] if args.key?(:dropdown_viewer)
          @error_label = args[:error_label] if args.key?(:error_label)
          @error_missing_audit_info = args[:error_missing_audit_info] if args.key?(:error_missing_audit_info)
          @footer_issue = args[:footer_issue] if args.key?(:footer_issue)
          @lab_data_title = args[:lab_data_title] if args.key?(:lab_data_title)
          @ls_performance_category_description = args[:ls_performance_category_description] if args.key?(:ls_performance_category_description)
          @manual_audits_group_title = args[:manual_audits_group_title] if args.key?(:manual_audits_group_title)
          @not_applicable_audits_group_title = args[:not_applicable_audits_group_title] if args.key?(:not_applicable_audits_group_title)
          @opportunity_resource_column_label = args[:opportunity_resource_column_label] if args.key?(:opportunity_resource_column_label)
          @opportunity_savings_column_label = args[:opportunity_savings_column_label] if args.key?(:opportunity_savings_column_label)
          @passed_audits_group_title = args[:passed_audits_group_title] if args.key?(:passed_audits_group_title)
          @runtime_desktop_emulation = args[:runtime_desktop_emulation] if args.key?(:runtime_desktop_emulation)
          @runtime_mobile_emulation = args[:runtime_mobile_emulation] if args.key?(:runtime_mobile_emulation)
          @runtime_no_emulation = args[:runtime_no_emulation] if args.key?(:runtime_no_emulation)
          @runtime_settings_axe_version = args[:runtime_settings_axe_version] if args.key?(:runtime_settings_axe_version)
          @runtime_settings_benchmark = args[:runtime_settings_benchmark] if args.key?(:runtime_settings_benchmark)
          @runtime_settings_cpu_throttling = args[:runtime_settings_cpu_throttling] if args.key?(:runtime_settings_cpu_throttling)
          @runtime_settings_channel = args[:runtime_settings_channel] if args.key?(:runtime_settings_channel)
          @runtime_settings_device = args[:runtime_settings_device] if args.key?(:runtime_settings_device)
          @runtime_settings_fetch_time = args[:runtime_settings_fetch_time] if args.key?(:runtime_settings_fetch_time)
          @runtime_settings_network_throttling = args[:runtime_settings_network_throttling] if args.key?(:runtime_settings_network_throttling)
          @runtime_settings_title = args[:runtime_settings_title] if args.key?(:runtime_settings_title)
          @runtime_settings_ua = args[:runtime_settings_ua] if args.key?(:runtime_settings_ua)
          @runtime_settings_ua_network = args[:runtime_settings_ua_network] if args.key?(:runtime_settings_ua_network)
          @runtime_settings_url = args[:runtime_settings_url] if args.key?(:runtime_settings_url)
          @runtime_unknown = args[:runtime_unknown] if args.key?(:runtime_unknown)
          @scorescale_label = args[:scorescale_label] if args.key?(:scorescale_label)
          @show_relevant_audits = args[:show_relevant_audits] if args.key?(:show_relevant_audits)
          @snippet_collapse_button_label = args[:snippet_collapse_button_label] if args.key?(:snippet_collapse_button_label)
          @snippet_expand_button_label = args[:snippet_expand_button_label] if args.key?(:snippet_expand_button_label)
          @third_party_resources_label = args[:third_party_resources_label] if args.key?(:third_party_resources_label)
          @throttling_provided = args[:throttling_provided] if args.key?(:throttling_provided)
          @toplevel_warnings_message = args[:toplevel_warnings_message] if args.key?(:toplevel_warnings_message)
          @variance_disclaimer = args[:variance_disclaimer] if args.key?(:variance_disclaimer)
          @view_treemap_label = args[:view_treemap_label] if args.key?(:view_treemap_label)
          @warning_audits_group_title = args[:warning_audits_group_title] if args.key?(:warning_audits_group_title)
          @warning_header = args[:warning_header] if args.key?(:warning_header)
        end
      end
      
      # Message containing a runtime error config.
      class RuntimeError
        include Google::Apis::Core::Hashable
      
        # The enumerated Lighthouse Error code.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # A human readable message explaining the error code.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Message containing Stack Pack information.
      class StackPack
        include Google::Apis::Core::Hashable
      
        # The stack pack advice strings.
        # Corresponds to the JSON property `descriptions`
        # @return [Hash<String,String>]
        attr_accessor :descriptions
      
        # The stack pack icon data uri.
        # Corresponds to the JSON property `iconDataURL`
        # @return [String]
        attr_accessor :icon_data_url
      
        # The stack pack id.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The stack pack title.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @descriptions = args[:descriptions] if args.key?(:descriptions)
          @icon_data_url = args[:icon_data_url] if args.key?(:icon_data_url)
          @id = args[:id] if args.key?(:id)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Message containing the performance timing data for the Lighthouse run.
      class Timing
        include Google::Apis::Core::Hashable
      
        # The total duration of Lighthouse's run.
        # Corresponds to the JSON property `total`
        # @return [Float]
        attr_accessor :total
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @total = args[:total] if args.key?(:total)
        end
      end
      
      # A CrUX metric object for a single metric and form factor.
      class UserPageLoadMetricV5
        include Google::Apis::Core::Hashable
      
        # The category of the specific time metric.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # Metric distributions. Proportions should sum up to 1.
        # Corresponds to the JSON property `distributions`
        # @return [Array<Google::Apis::PagespeedonlineV5::Bucket>]
        attr_accessor :distributions
      
        # Identifies the form factor of the metric being collected.
        # Corresponds to the JSON property `formFactor`
        # @return [String]
        attr_accessor :form_factor
      
        # The median number of the metric, in millisecond.
        # Corresponds to the JSON property `median`
        # @return [Fixnum]
        attr_accessor :median
      
        # Identifies the type of the metric.
        # Corresponds to the JSON property `metricId`
        # @return [String]
        attr_accessor :metric_id
      
        # We use this field to store certain percentile value for this metric. For v4,
        # this field contains pc50. For v5, this field contains pc90.
        # Corresponds to the JSON property `percentile`
        # @return [Fixnum]
        attr_accessor :percentile
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
          @distributions = args[:distributions] if args.key?(:distributions)
          @form_factor = args[:form_factor] if args.key?(:form_factor)
          @median = args[:median] if args.key?(:median)
          @metric_id = args[:metric_id] if args.key?(:metric_id)
          @percentile = args[:percentile] if args.key?(:percentile)
        end
      end
    end
  end
end
