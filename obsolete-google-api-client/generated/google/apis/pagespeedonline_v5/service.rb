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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module PagespeedonlineV5
      # PageSpeed Insights API
      #
      # The PageSpeed Insights API lets you analyze the performance of your website
      #  with a simple API. It offers tailored suggestions for how you can optimize
      #  your site, and lets you easily integrate PageSpeed Insights analysis into your
      #  development tools and workflow.
      #
      # @example
      #    require 'google/apis/pagespeedonline_v5'
      #
      #    Pagespeedonline = Google::Apis::PagespeedonlineV5 # Alias the module
      #    service = Pagespeedonline::PagespeedInsightsService.new
      #
      # @see https://developers.google.com/speed/docs/insights/v5/about
      class PagespeedInsightsService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://pagespeedonline.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Runs PageSpeed analysis on the page at the specified URL, and returns
        # PageSpeed scores, a list of suggestions to make that page faster, and other
        # information.
        # @param [String] url
        #   Required. The URL to fetch and analyze
        # @param [String] captcha_token
        #   The captcha token passed when filling out a captcha.
        # @param [Array<String>, String] category
        #   A Lighthouse category to run; if none are given, only Performance category
        #   will be run
        # @param [String] locale
        #   The locale used to localize formatted results
        # @param [String] strategy
        #   The analysis strategy (desktop or mobile) to use, and desktop is the default
        # @param [String] utm_campaign
        #   Campaign name for analytics.
        # @param [String] utm_source
        #   Campaign source for analytics.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PagespeedonlineV5::PagespeedApiPagespeedResponseV5] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PagespeedonlineV5::PagespeedApiPagespeedResponseV5]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def runpagespeed_pagespeedapi(url, captcha_token: nil, category: nil, locale: nil, strategy: nil, utm_campaign: nil, utm_source: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'pagespeedonline/v5/runPagespeed', options)
          command.response_representation = Google::Apis::PagespeedonlineV5::PagespeedApiPagespeedResponseV5::Representation
          command.response_class = Google::Apis::PagespeedonlineV5::PagespeedApiPagespeedResponseV5
          command.query['captchaToken'] = captcha_token unless captcha_token.nil?
          command.query['category'] = category unless category.nil?
          command.query['locale'] = locale unless locale.nil?
          command.query['strategy'] = strategy unless strategy.nil?
          command.query['url'] = url unless url.nil?
          command.query['utm_campaign'] = utm_campaign unless utm_campaign.nil?
          command.query['utm_source'] = utm_source unless utm_source.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
        end
      end
    end
  end
end
