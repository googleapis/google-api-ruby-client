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

require 'google/apis/pagespeedonline_v5/service.rb'
require 'google/apis/pagespeedonline_v5/classes.rb'
require 'google/apis/pagespeedonline_v5/representations.rb'

module Google
  module Apis
    # PageSpeed Insights API
    #
    # The PageSpeed Insights API lets you analyze the performance of your website
    # with a simple API. It offers tailored suggestions for how you can optimize
    # your site, and lets you easily integrate PageSpeed Insights analysis into your
    # development tools and workflow.
    #
    # @see https://developers.google.com/speed/docs/insights/v5/about
    module PagespeedonlineV5
      VERSION = 'V5'
      REVISION = '20201130'

      # Associate you with your personal info on Google
      PENID = 'openid'
    end
  end
end
