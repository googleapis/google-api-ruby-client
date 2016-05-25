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

require 'google/apis/prediction_v1_6/service.rb'
require 'google/apis/prediction_v1_6/classes.rb'
require 'google/apis/prediction_v1_6/representations.rb'

module Google
  module Apis
    # Prediction API
    #
    # Lets you access a cloud hosted machine learning service that makes it easy to
    # build smart apps
    #
    # @see https://developers.google.com/prediction/docs/developer-guide
    module PredictionV1_6
      VERSION = 'V1_6'
      REVISION = '20160511'

      # View and manage your data across Google Cloud Platform services
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'

      # Manage your data and permissions in Google Cloud Storage
      AUTH_DEVSTORAGE_FULL_CONTROL = 'https://www.googleapis.com/auth/devstorage.full_control'

      # View your data in Google Cloud Storage
      AUTH_DEVSTORAGE_READ_ONLY = 'https://www.googleapis.com/auth/devstorage.read_only'

      # Manage your data in Google Cloud Storage
      AUTH_DEVSTORAGE_READ_WRITE = 'https://www.googleapis.com/auth/devstorage.read_write'

      # Manage your data in the Google Prediction API
      AUTH_PREDICTION = 'https://www.googleapis.com/auth/prediction'
    end
  end
end
