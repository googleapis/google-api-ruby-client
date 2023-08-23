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

require 'google/apis/language_v1beta2/service.rb'
require 'google/apis/language_v1beta2/classes.rb'
require 'google/apis/language_v1beta2/representations.rb'

module Google
  module Apis
    # Cloud Natural Language API
    #
    # Provides natural language understanding technologies, such as sentiment
    # analysis, entity recognition, entity sentiment analysis, and other text
    # annotations, to developers.
    #
    # @see https://cloud.google.com/natural-language/
    module LanguageV1beta2
      VERSION = 'V1beta2'
      REVISION = '20200801'

      # Apply machine learning models to reveal the structure and meaning of text
      AUTH_CLOUD_LANGUAGE = 'https://www.googleapis.com/auth/cloud-language'

      # View and manage your data across Google Cloud Platform services
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'
    end
  end
end
